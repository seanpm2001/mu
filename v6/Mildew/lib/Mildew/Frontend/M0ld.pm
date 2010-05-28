use v5.10;
use MooseX::Declare;
use Regexp::Grammars;
use AST;
class Mildew::Frontend::M0ld {
    # $REGS needs to be a global variable for local to work
    our $REGS = [];

    # converts an arrayref of statements to a AST::Block
    sub stmts_to_block {
        my ($stmts) = @_;
        my @stmts;
        for my $stmt (@{$stmts}) {
            if (ref $stmt eq 'ARRAY') {
                push(@stmts,@{$stmt});
            } else {
                push(@stmts,$stmt);
            }
        }
        AST::Block->new(stmts=>\@stmts,regs=>$REGS);
    }

    my $parser = qr/
    ^<top>$
    <rule: top>
    (?: <[stmt]> ; )*
    (?{ $MATCH = stmts_to_block($MATCH{stmt}) })
    
    <token: ws>
    (?> (?: \s+ | \#[^\n]* )*)
    
    <token: stmt>
    (?: <MATCH=goto>|<MATCH=br>|<MATCH=assign>|<MATCH=decl>)
    
    <rule: decl>
    my <register>
    (?{ my $reg = substr($MATCH{register}->name,1);push(@{$REGS},$reg);$MATCH = [] })
    
    <rule: call>
    <invocant=value> \.  <identifier=value>
    \(
    (?:<[argument]> ** ,)?
    \)
    (?{ 
        $MATCH = AST::Call->new(
            identifier=>$MATCH{identifier},
            capture=>AST::Capture->new(
                invocant => $MATCH{invocant},
                positional => [grep { ! $_->isa('AST::Pair') } @{$MATCH{argument}}],
                named => [map { $_->key, $_->value } grep { $_->isa('AST::Pair') } @{$MATCH{argument}}]
            )
        )
    })
    
    <rule: assign>
    (?:my)? <register> = <rvalue>
    (?{ $MATCH = AST::Assign->new(lvalue=>$MATCH{register},rvalue=>$MATCH{rvalue}) })
    <token: rvalue>
    <MATCH=call> | <MATCH=value>
    
    <token: goto>
    goto \s+ <label>
    
    <token: argument>
    (?: <MATCH=named_argument> | <MATCH=value> )
    
    <rule: named_argument>
    (?: \: <key=value> \( <val=value> \) )
    (?{$MATCH = AST::Pair->new(key=>$MATCH{key},value=>$MATCH{val})})
    
    
    <token: noop>
    noop
    
    <rule: br>
    if <value> <branch> else <branch>
    
    <rule: branch>
    \{ goto <label> ;? \}
    
    <token: label>
    \w+
    
    <token: value>
    (?: <MATCH=integer>  | <MATCH=register> | <MATCH=string> | <MATCH=submold>)
    
    <token: integer>
    (\d+)
    (?{$MATCH = AST::IntegerConstant->new(value=>$+)})
    
    <token: register>
    ((?> (?: \$ | \? | ¢) \p{IsAlpha} \w*))
    (?{$MATCH = AST::Reg->new(name=>$+)})
    
    <token: string_part>
    (?:
    \\(.) (?{my %meta = (n=>"\n");$MATCH = ($meta{$^N} || $^N)}) |
    ([^\\"])  (?{$MATCH = $^N}) )
    <token: string>
    " (<[string_part]>*) "
    (?{$MATCH = AST::StringConstant->new(value=>join('',@{$MATCH{string_part}}))})
    
    <rule: submold>
    (?{local $REGS = []})
    mold \{
    (?: <[stmt]> ; )*
    \}
    (?{$MATCH = stmts_to_block($MATCH{stmt});})
    /x;

    method parse($source) {
        unless ($source =~ $parser) {
            die "Can't parse m0ld code";
        }
        $/{top};
    }
}
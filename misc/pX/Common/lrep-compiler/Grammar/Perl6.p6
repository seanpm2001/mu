# This is the Perl 6 Grammar used to Parse and generate the 
# Abstract Syntax Tree (AST) - fglock
#
# Things that go in this file are:
# - anything that does *not* contain a statement like:
#       eval( '...', :lang<perl5>);
# - anything that directly alters the Perl 6 Grammar
# - everything else go into the p6primitives.p6 file, or into
#   a Module

grammar Grammar::Perl6;

# rule xxx :P5 {foo}
# XXX - rewrite this!
rule perl5_regex { 
    [   
        \.   |   \|   |   \*   |   \+   |
        \(   |   \)   |   \[   |   \]   |
        \?   |   \:   |   \s   |   \w   | 
        \_   |   \\   |   \^   |   \$   |
        \n   |   \#   |   \-   |   \<   |
        \>   |   \!   |
        alnum
    ]* 
        {return { perl5_regex => $() ,} }
}

rule perl5_rule_decl {
    rule <p6ws> <ident> <p6ws>? \: P5 <p6ws> \{ <perl5_regex> \}
        { return { perl5_rule_decl => $() ,} }
}
push @statements, \&perl5_rule_decl;
 
rule word     :P5 {^([_[:alnum:]]+)}
rule any      :P5 {^(.)}
rule escaped_char  
              :P5 {^\\(.)}
rule newline  :P5 {^(\n)}
rule ws       :P5 {^(\s+)}
rule p6ws     :P5 {^((?:\s|\#(?-s:.)*)+)}

# XXX - set non-capture flag?
# XXX - incomplete - needs a return block
rule non_capturing_subrule
              :P5 {^\<\?(.*?)\>}
push @rule_terms, \&non_capturing_subrule;

# XXX - incomplete - needs a return block
rule negated_subrule
              :P5 {^\<\!(.*?)\>}
push @rule_terms, \&negated_subrule;

# XXX - incomplete - needs a return block
rule subrule  :P5 {^\<(.*?)\>}
push @rule_terms, \&subrule;

rule capturing_group {
    \( <rule> \)
        {return { capturing_group => $() } }
}
unshift @rule_terms, \&capturing_group;

rule constant {
    \< <literal> \>
        { return { constant => $() } }
}
unshift @rule_terms, \&constant;

rule term {
    <?p6ws>? <@Grammar::Perl6::rule_terms> <?p6ws>?
}

#rule quantifier {
#    [ <term> [ 
#        [ \?\? ] |
#        [ \*\? ] |
#        [ \+\? ] |
#        \?       |
#        \*       |
#        \+
#      ] 
#      <?p6ws>?
#    ]*
#    |
#    <term>
#}
#rule alt {
#    <quantifier> [ \| <quantifier> ]+
#}


rule const_word {
    <word>
        { return { constant => $() ,} }
}
unshift @rule_terms, \&const_word;

rule const_escaped_char {
    <escaped_char> 
        { return { constant => $() ,} }
}
unshift @rule_terms, \&const_escaped_char;

rule dot {
    (\.) 
        { return { dot => $() ,} }
}
unshift @rule_terms, \&dot;

rule rule {
    [ <?alt> | <?quantifier> ]*
}

rule non_capturing_group {
     \[ <?rule> \] 
}
push @rule_terms, \&non_capturing_group;

rule closure_rule {
    <code>
        { return { closure => $() ,} }
}
unshift @rule_terms, \&closure_rule;

rule variable_rule {
    <variable> 
        { return { variable => $() ,} }
}
unshift @rule_terms, \&variable_rule;

rule runtime_alternation {
    \< <variable> \>
        { return { runtime_alternation => $() ,} }
}
unshift @rule_terms, \&runtime_alternation;

rule named_capture {
    \$ <ident> <?p6ws>? \:\= <?p6ws>? \( <rule> \) 
        { return { named_capture => $() ,} }
}
unshift @rule_terms, \&named_capture;

rule immediate_statement_rule {
    <?p6ws>? <@statements> <?p6ws>?
}

rule grammar {
    <immediate_statement_rule>*
}

rule indirect_object {
	<varscalar> <p6ws>? \:
	{ return $()<varscalar> }
}

push @terms, \&indirect_object;

rule condition_rule {
	$op:=(if|unless)<?p6ws>?\(<?p6ws>?$condition:=(<term1>)<?p6ws>?\)
	<?p6ws>?$then:=(<block>)
	{ return { condition => $() } }
}
push @statements, \&condition_rule;

rule meth_call_term {
    $class:=(<ident>) \. $meth:=(<word>)\(<?p6ws>?$params:=(<list>?)<?p6ws>?\)<?p6ws>?
        { return { meth_call_term => $() } }
}
rule meth_call_statement {
    $class:=(<ident>) \. $meth:=(<word>)\(<?p6ws>?$params:=(<list>?)<?p6ws>?\)<?p6ws>?\;
        { return { meth_call => $() } }
}
push @statements, \&meth_call_statement;
push @terms, \&meth_call_term;

# XXX Nit: <?p6ws> after <ident> is not allowed in real p6.  Whitespace there
# would make list operator with parens around *first* argument.
# So we don't support that syntax.
rule sub_call_term {
    $name:=(<ident>)\(<?p6ws>?$params:=(<list>?)<?p6ws>?\)<?p6ws>?
        { return { sub_call_term => $() } }
}
rule sub_call_statement {
    $name:=(<ident>)<?p6ws>?\(<?p6ws>?$params:=(<list>?)<?p6ws>?\)<?p6ws>?\;
        { return { sub_call => $() } }
}
push @statements, \&sub_call_statement;
push @terms, \&sub_call_term;

rule access_hashref_element {
    $variable:=(<varscalar>)\{$key:=(<term1>)\}
        { return { access_hashref_element => $() } }
}
push @terms, \&access_hashref_element;
push @statements, \&access_hashref_element;

rule access_hash_element {
    $variable:=(<varhash>)\{$key:=(<term1>)\}
        { return { access_hash_element => $() } }
}
push @terms, \&access_hash_element;
push @statements, \&access_hash_element;

rule assign_hash_to_scalar {
    $variable:=(<varscalar>)<?p6ws>?\=<?p6ws>?$value:=(<varhash>)<?p6ws>?\;
        { return { assign_hash_to_scalar => $() } }
}
push @statements, \&assign_hash_to_scalar;

rule assign_slurp_to_variable {
    $variable:=(<variable>)<?p6ws>?\=<?p6ws>?slurp<?p6ws>?$value:=(<term1>)<?p6ws>?\;
        { return { slurp => $() } }
}
push @statements, \&assign_slurp_to_variable;

rule assign_open_to_variable {
    $variable:=(<variable>)<?p6ws>?\=<?p6ws>?open<?p6ws>?$value:=(<term1>)<?p6ws>?\;
        { return { _open => $() } }
}
push @statements, \&assign_open_to_variable;

rule assign {
    $variable:=(<term1>)<?p6ws>?\=<?p6ws>?$value:=(<term1>)<?p6ws>?\;
	{ return { assign => $() } }
}
push @statements, \&assign;

rule rule_decl {
    rule <p6ws> <ident> <p6ws>? \{ <rule> \}
        { return { rule_decl => $() ,} }
}
push @statements, \&rule_decl;
        
rule grammar_name {
    grammar <p6ws> <ident> <p6ws>? \;
        { return { grammar_name => $() ,} }
}
push @statements, \&grammar_name;

rule sub_call {
    $name:=(<ident>)<?p6ws>?\(<?p6ws>?$params:=(<list>?)<?p6ws>?\)<?p6ws>?\;
        { return { sub_call => $() } }
}
push @statements, \&sub_call;
push @terms, \&sub_call;

rule _push {
    $op := (push|unshift) <p6ws> <variable> <p6ws>? \, <p6ws>?
    $code := (.*?) <p6ws>? \;
        { return { _push => $() ,} }
}
push @statements, \&_push;


rule pod { 
    \=[pod|head1|kwid|for] 
    .*? 
    \=cut 
}
push @statements, \&pod;

rule use_v6 { 
    use <?p6ws> v6 \-pugs <?p6ws>? \;
}
push @statements, \&use_v6;

rule require {
    require <?p6ws> <ident> <?p6ws>? \;
        { 
		# XXX This is perl5 code
		# this is ugly
		eval 'require '.$()->[2]{ident}[0]{ident};
		return { require_bareword => $() ,} 
	}
}
push @statements, \&require;
       
rule use_rule {
    use <?p6ws> <ident> <?p6ws>? \;
        { 
		# XXX This is perl5 code
		# this is ugly
		eval 'use '.$()->[2]{ident}[0]{ident};
		return { use_bareword => $() ,} 
	}
}
push @statements, \&use_rule;

rule term1 {
    <@terms>
}
        
rule list {
    [ <term1> <?p6ws>? \, <?p6ws>? ]* <term1>?
}

rule block {
    \{ 
        $list := ( [ <?p6ws>? <@statements> ]* ) <?p6ws>? 
    \}
        { return { block => $()<list> ,} }
}
push @statements, \&block;

rule macro_decl {
    macro <?p6ws> $prefix := (<word>) \: \< $id := (.*?) \> <?p6ws>? 
    \(  <?p6ws>? <list>? <?p6ws>? \) <?p6ws>?
    is <?p6ws> parsed <?p6ws>? \( 
        <?p6ws>? \/ <?p6ws>? <rule> <?p6ws>? \/ <?p6ws>? 
        \) <?p6ws>?
    <code> 
        {
	 # XXX This is perl5 code
	 # XXX This is ugly
	 eval Emitter::Perl5::emit({macro => $()});
	 return { macro => $() ,}
	}
}
push @statements, \&macro_decl;

rule empty_list {
    \(\)
        { return { empty_list => $() } }
}

push @terms, \&empty_list;
push @terms, \&varhash;
push @terms, \&varscalar;
push @terms, \&varglobal;
push @terms, \&variable;
push @terms, \&literal;

rule _open {
	$op := (open) <p6ws> <varscalar> <p6ws>? \;
		{ return { _open => $(), } }
}
push @statements, \&_open;
push @terms, \&_open;
 
rule _print_with_fh { 
    $op := (print|say|warn|die) <p6ws> <indirect_object> <p6ws> <list> <p6ws>? \;
        { return { _print_with_fh => $() ,} }
}
push @statements, \&_print_with_fh;
 
rule _print { 
    $op := (print|say|warn|die) <p6ws> <list> <p6ws>? \;
        { return { _print => $() ,} }
}
push @statements, \&_print;

rule _my {
    $op := (my|our|local) <p6ws> <variable> <p6ws>? \;
        { return { _my => $() ,} }
}
push @statements, \&_my;

rule _simple_statement {
    $op := (die|\.\.\.) \;
        { return { _simple_statement => $() ,} }
}
push @statements, \&_simple_statement;

rule sub_decl {
    sub <?p6ws> $fix := (infix|prefix|postfix) 
        \: \< $id := (.*?) \> <?p6ws>? <block>
        { return { sub_decl => $() ,} }
}
push @statements, \&sub_decl;

rule sub_defin {
    sub <?p6ws>? <ident> <?p6ws>? <block>
        { return { sub_defin => $() ,} }
}
push @statements, \&sub_defin;

rule term2 {
    $term1 := (<term1>) <p6ws>? 
    $op    := (<@ops>) <p6ws>? 
    $term2 := (<term1>) 
        { return { sub_application_term => $() ,} }
}

rule sub_application {
    $term1 := (<term1>|<term2>) <p6ws>? 
    $op    := (<@ops>) <p6ws>? 
    $term2 := (<term1>|<term2>) <p6ws>? \;
        { return { sub_application => $() ,} }
}
push @statements, \&sub_application;

rule eval_perl5 {
    eval <p6ws>? \( <p6ws>? 
        <literal> <p6ws>? \, <p6ws>? 
        \: lang \< perl5 \> <p6ws>? 
    \) <p6ws>? \;
        { return { eval_perl5 => $<literal> } }
}
push @statements, \&eval_perl5;

rule _return {
    return <?p6ws> $val := (<term1>|<term2>) <?p6ws>? \;
        { return { _return => $() ,} }
}
push @statements, \&_return;

#rule string_concat {
#	$a:=(<term1>)<?p6ws>?\~<?p6w6>?$b:=(<term1>)
#	{ return { string_concat => $() } }
#}
#push @terms, \&string_concat;


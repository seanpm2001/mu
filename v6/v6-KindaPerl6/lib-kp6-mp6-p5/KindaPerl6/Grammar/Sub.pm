# Do not edit this file - Generated by MiniPerl6
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
use MiniPerl6::Perl5::Match;
package KindaPerl6::Grammar;
sub new { shift; bless { @_ }, "KindaPerl6::Grammar" }
sub method_sig { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); (do { (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('(' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->sig($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'sig'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (((')' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { return(${$MATCH->{'sig'}}) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 })))))) } || do { $MATCH->to($pos1); do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { return(Sig->new( 'invocant' => Var->new( 'sigil' => '$','twigil' => '','name' => 'self','namespace' => [], ),'positional' => [],'named' => {  }, )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } }) }); return($MATCH) };
sub sub_sig { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); (do { (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('(' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->sig($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'sig'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (((')' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { return(${$MATCH->{'sig'}}) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 })))))) } || do { $MATCH->to($pos1); do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { return(Sig->new( 'invocant' => (undef),'positional' => [],'named' => {  }, )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } }) }); return($MATCH) };
sub arrow_sub_sig { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); (do { (do { my  $m2 = $grammar->undeclared_var($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'undeclared_var'} = $m2;1 } else { 0 } } } && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { return(Sig->new( 'invocant' => Val::Undef->new(  ),'positional' => [${$MATCH->{'undeclared_var'}}],'named' => {  }, )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 }) } || do { $MATCH->to($pos1); ((('(' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->sig($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'sig'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (((')' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { return(${$MATCH->{'sig'}}) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 }))))) }) }); return($MATCH) };
sub sub { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); do { ((('s' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('u' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('b' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_name($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'opt_name'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->sub_sig($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'sub_sig'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { COMPILER::add_pad() }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } && (do { my  $m2 = $grammar->exp_stmts($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'exp_stmts'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $pos1 = $MATCH->to(); (do { (('}' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) } || do { $MATCH->to($pos1); do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { Main::say('*** Syntax Error in sub \'', ${$MATCH->{'name'}}, '\''); die('error in Block') }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } }) } && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { my  $env = $List_COMPILER::PAD->[0]; COMPILER::drop_pad(); my  $block = ${$MATCH->{'exp_stmts'}}; KindaPerl6::Grammar::declare_parameters($env, $block, ${$MATCH->{'sub_sig'}}); return(Sub->new( 'name' => ${$MATCH->{'opt_name'}},'block' => Lit::Code->new( 'pad' => $env,'state' => {  },'sig' => ${$MATCH->{'sub_sig'}},'body' => $block, ), )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 })))))))))))))) } }); return($MATCH) };
sub arrow_sub { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); do { ((('->' eq substr($str, $MATCH->to(), 2)) ? (1 + $MATCH->to((2 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->arrow_sub_sig($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'arrow_sub_sig'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { COMPILER::add_pad() }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } && (do { my  $m2 = $grammar->exp_stmts($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'exp_stmts'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $pos1 = $MATCH->to(); (do { (('}' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) } || do { $MATCH->to($pos1); do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { Main::say('*** Syntax Error in sub '); die('error in Block') }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } }) } && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { my  $env = $List_COMPILER::PAD->[0]; COMPILER::drop_pad(); my  $block = ${$MATCH->{'exp_stmts'}}; KindaPerl6::Grammar::declare_parameters($env, $block, ${$MATCH->{'arrow_sub_sig'}}); return(Sub->new( 'name' => (undef),'block' => Lit::Code->new( 'pad' => $env,'state' => {  },'sig' => ${$MATCH->{'arrow_sub_sig'}},'body' => $block, ), )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 })))))))))) } }); return($MATCH) };
sub proto { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); do { ((('p' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('r' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('o' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('o' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $pos1 = $MATCH->to(); (do { (do { my  $pos1 = $MATCH->to(); (do { ((('m' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('e' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('h' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('o' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (('d' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0)))))) } || (do { $MATCH->to($pos1); ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('o' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('k' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('e' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (('n' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0))))) } || (do { $MATCH->to($pos1); ((('r' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('u' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('l' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (('e' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0)))) } || do { $MATCH->to($pos1); ((('s' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('u' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (('b' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0))) }))) } && do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } }) } || do { $MATCH->to($pos1); 1 }) } && (do { my  $m2 = $grammar->namespace($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'namespace'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->ident($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'ident'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('}' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { my  $bind = Bind->new( 'parameters' => Var->new( 'sigil' => '&','twigil' => '','name' => ("" . $MATCH->{'ident'}),'namespace' => ${$MATCH->{'namespace'}}, ),'arguments' => Call->new( 'hyper' => '','arguments' => [],'method' => 'new','invocant' => Proto->new( 'name' => 'Multi', ), ), ); COMPILER::begin_block($bind); return($bind) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 }))))))))))))) } }); return($MATCH) };
sub method { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); do { ((('m' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('e' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('h' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('o' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('d' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_name($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'opt_name'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->method_sig($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'method_sig'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { COMPILER::add_pad() }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } && (do { my  $m2 = $grammar->exp_stmts($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'exp_stmts'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $pos1 = $MATCH->to(); (do { (('}' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) } || do { $MATCH->to($pos1); do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { Main::say('*** Syntax Error in method \'', get_class_name(), '.', ${$MATCH->{'name'}}, '\' near pos=', $MATCH->to()); die('error in Block') }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } }) } && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { my  $env = $List_COMPILER::PAD->[0]; my  $block = ${$MATCH->{'exp_stmts'}}; KindaPerl6::Grammar::declare_parameters($env, $block, ${$MATCH->{'method_sig'}}); COMPILER::drop_pad(); return(Method->new( 'name' => ${$MATCH->{'opt_name'}},'block' => Lit::Code->new( 'pad' => $env,'state' => {  },'sig' => ${$MATCH->{'method_sig'}},'body' => $block, ), )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 }))))))))))))))))) } }); return($MATCH) };
sub multi_method { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); do { ((('m' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('u' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('l' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('i' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('m' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('e' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('h' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('o' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('d' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->namespace($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'namespace'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->ident($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'ident'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->method_sig($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'method_sig'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { COMPILER::add_pad() }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } && (do { my  $m2 = $grammar->exp_stmts($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'exp_stmts'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $pos1 = $MATCH->to(); (do { (('}' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) } || do { $MATCH->to($pos1); do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { Main::say('*** Syntax Error in method \'', get_class_name(), '.', ${$MATCH->{'ident'}}, '\' near pos=', $MATCH->to()); die('error in Block') }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } }) } && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { my  $env = $List_COMPILER::PAD->[0]; my  $block = ${$MATCH->{'exp_stmts'}}; KindaPerl6::Grammar::declare_parameters($env, $block, ${$MATCH->{'method_sig'}}); COMPILER::drop_pad(); return(Call->new( 'hyper' => '','method' => 'push','invocant' => Call->new( 'hyper' => '','arguments' => [],'method' => 'long_names','invocant' => Var->new( 'namespace' => ${$MATCH->{'namespace'}},'name' => ${$MATCH->{'ident'}},'twigil' => '','sigil' => '&', ), ),'arguments' => [Method->new( 'name' => '','block' => Lit::Code->new( 'pad' => $env,'state' => {  },'sig' => ${$MATCH->{'method_sig'}},'body' => $block, ), )], )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 })))))))))))))))))))))))) } }); return($MATCH) };
sub multi_sub { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); do { ((('m' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('u' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('l' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('i' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $pos1 = $MATCH->to(); (do { ((('s' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('u' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('b' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } }))) } || do { $MATCH->to($pos1); 1 }) } && (do { my  $m2 = $grammar->namespace($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'namespace'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->ident($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'ident'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->sub_sig($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'sub_sig'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { COMPILER::add_pad() }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } && (do { my  $m2 = $grammar->exp_stmts($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'exp_stmts'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $pos1 = $MATCH->to(); (do { (('}' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) } || do { $MATCH->to($pos1); do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { Main::say('*** Syntax Error in sub \'', get_class_name(), ' ', ${$MATCH->{'ident'}}, '\' near pos=', $MATCH->to()); die('error in Block') }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 } }) } && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { my  $env = $List_COMPILER::PAD->[0]; my  $block = ${$MATCH->{'exp_stmts'}}; KindaPerl6::Grammar::declare_parameters($env, $block, ${$MATCH->{'sub_sig'}}); COMPILER::drop_pad(); return(Call->new( 'hyper' => '','method' => 'push','invocant' => Call->new( 'hyper' => '','arguments' => [],'method' => 'long_names','invocant' => Var->new( 'namespace' => ${$MATCH->{'namespace'}},'name' => ${$MATCH->{'ident'}},'twigil' => '','sigil' => '&', ), ),'arguments' => [Sub->new( 'name' => '','block' => Lit::Code->new( 'pad' => $env,'state' => {  },'sig' => ${$MATCH->{'sub_sig'}},'body' => $block, ), )], )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 })))))))))))))))))) } }); return($MATCH) };
sub token { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); do { ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('o' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('k' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('e' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('n' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_name($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'opt_name'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = KindaPerl6::Grammar::Regex->rule($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'KindaPerl6::Grammar::Regex.rule'} = $m2;1 } else { 0 } } } && ((('}' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { return(Token->new( 'name' => ("" . $MATCH->{'opt_name'}),'regex' => ${$MATCH->{'KindaPerl6::Grammar::Regex.rule'}},'sym' => (undef), )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 }))))))))))) } }); return($MATCH) };
sub token_sym { my $grammar = shift; my $List__ = \@_; my $str; my $pos; do {  $str = $List__->[0];  $pos = $List__->[1]; [$str, $pos] }; my  $MATCH; $MATCH = MiniPerl6::Perl5::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, ); $MATCH->bool(do { my  $pos1 = $MATCH->to(); do { (do { my  $pos1 = $MATCH->to(); (do { ((('m' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('u' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('l' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('i' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } }))))) } || do { $MATCH->to($pos1); 1 }) } && ((('t' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('o' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('k' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('e' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('n' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && (do { my  $m2 = $grammar->namespace($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'namespace'} = $m2;1 } else { 0 } } } && (do { my  $m2 = $grammar->ident($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'ident'} = $m2;1 } else { 0 } } } && (((':' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('s' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('y' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('m' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && ((('<' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->angle_quoted($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'angle_quoted'} = $m2;1 } else { 0 } } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = $grammar->opt_ws($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());1 } else { 0 } } } && ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && (do { my  $m2 = KindaPerl6::Grammar::Regex->rule($str, $MATCH->to()); do { if ($m2) { $MATCH->to($m2->to());$MATCH->{'KindaPerl6::Grammar::Regex.rule'} = $m2;1 } else { 0 } } } && ((('}' eq substr($str, $MATCH->to(), 1)) ? (1 + $MATCH->to((1 + $MATCH->to()))) : 0) && do { my  $ret = sub  { my $List__ = \@_; do { [] }; do { return(Call->new( 'hyper' => '','method' => 'push','invocant' => Call->new( 'hyper' => '','arguments' => [],'method' => 'long_names','invocant' => Var->new( 'namespace' => ${$MATCH->{'namespace'}},'name' => ${$MATCH->{'ident'}},'twigil' => '','sigil' => '&', ), ),'arguments' => [Token->new( 'name' => (undef),'regex' => ${$MATCH->{'KindaPerl6::Grammar::Regex.rule'}},'sym' => ("" . $MATCH->{'angle_quoted'}), )], )) }; '974^213' }->(); do { if (($ret ne '974^213')) { $MATCH->capture($ret);$MATCH->bool(1);return($MATCH) } else {  } }; 1 })))))))))))))))))))) } }); return($MATCH) }


;
1;

#!/usr/bin/pugs

use v6;
require Test;

plan 1;
# force_todo 1;

# crashes Pugs
# GHC bug?

my $nan1 = NaN**NaN;
is($nan1, NaN, "NaN**NaN works and doesn't segfault");

# fail("FIXME parsefail");
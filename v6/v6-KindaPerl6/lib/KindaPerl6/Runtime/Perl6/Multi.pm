use v6-alpha;
class Multi is Code {
    has @.long_names;
    method APPLY {
    
        # TODO:
        # - work on non-capture calls, for temporary backwards compatibility
        # - dispatch on types, 
        # - dispatch on named args
        # - integrate with the Grammar
        # - how to make it work with same-name multis on outer Pads
    
        #say "# oops - multis not implemented yet";
        #say "# ", (self.long_names).elems, " long_names";
        #say "# the capture comes with ", (@_[0]).arity, " parameters";
        
        # @($.long_names)  - subroutine list
        #    .signature
        #        .invocant
        #        .array
        #        .hash
        
        my @candidates;
        my $sub; # XXX 
        
        if (@_[0]).isa( 'Capture' ) {
            for @(self.long_names) -> $sub {
                #say "# testing sub ", $sub;
                if ($sub.signature).arity == (@_[0]).arity {
                    @candidates.push( $sub );
                };
            };
        }
        else {
            # XXX not sure if this should exist
            # ??? methods should not count the invocant 
            for @(self.long_names) -> $sub {
                if ($sub.signature).arity == @_.elems {
                    @candidates.push( $sub );
                };
            };
        };
        
        #say '# ', @candidates.elems, ' subs matched the arity';
        if @candidates.elems == 1 {
            return (@candidates[0]).APPLY( @_[0] );
        };
        
        die "can't resolve Multi dispatch";
    }
}


{

    package Capture;

    # Do not edit this file - Perl 5 generated by KindaPerl6
    use v5;
    use strict;
    no strict 'vars';
    use constant KP6_DISABLE_INSECURE_CODE => 0;
    use KindaPerl6::Runtime::Perl5::KP6Runtime;
    my $_MODIFIED;
    BEGIN { $_MODIFIED = {} }

    BEGIN {
        $_ =
          ::DISPATCH( $::Scalar, "new",
            { modified => $_MODIFIED, name => "$_" } );
    }
    {
        do {
            if (
                ::DISPATCH(
                    ::DISPATCH(
                        ::DISPATCH(
                            $GLOBAL::Code_VAR_defined, 'APPLY', $::Capture
                        ),
                        "true"
                    ),
                    "p5landish"
                )
              )
            {
            }
            else {
                {
                    do {
                        ::MODIFIED($::Capture);
                        $::Capture = ::DISPATCH(
                            ::DISPATCH(
                                $::Class, 'new',
                                ::DISPATCH( $::Str, 'new', 'Capture' )
                            ),
                            'PROTOTYPE',
                        );
                      }
                }
            }
        };
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_parent',
            ::DISPATCH( $::Str, 'new', 'Value' )
        );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_attribute',
            ::DISPATCH( $::Str, 'new', 'invocant' )
        );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_attribute',
            ::DISPATCH( $::Str, 'new', 'array' )
        );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_attribute',
            ::DISPATCH( $::Str, 'new', 'hash' )
        );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'arity' ),
            ::DISPATCH(
                $::Method,
                'new',
                sub {
                    my $List__ =
                      ::DISPATCH( $::Array, 'new',
                        { modified => $_MODIFIED, name => '$List__' } );
                    my $self;
                    $self =
                      ::DISPATCH( $::Scalar, 'new',
                        { modified => $_MODIFIED, name => '$self' } )
                      unless defined $self;

                    BEGIN {
                        $self =
                          ::DISPATCH( $::Scalar, 'new',
                            { modified => $_MODIFIED, name => '$self' } );
                    }
                    $self = shift;
                    my $CAPTURE;
                    $CAPTURE =
                      ::DISPATCH( $::Scalar, 'new',
                        { modified => $_MODIFIED, name => '$CAPTURE' } )
                      unless defined $CAPTURE;

                    BEGIN {
                        $CAPTURE =
                          ::DISPATCH( $::Scalar, 'new',
                            { modified => $_MODIFIED, name => '$CAPTURE' } );
                    }
                    ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                    do {
                        ::MODIFIED($List__);
                        $List__ = ::DISPATCH( $CAPTURE, 'array', );
                    };
                    do {
                        ::MODIFIED($Hash__);
                        $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                    };
                    ::DISPATCH(
                        $GLOBAL::Code_infix_58__60__43__62_,
                        'APPLY',
                        ::DISPATCH( ::DISPATCH( $self, "array" ), 'elems', ),
                        ::DISPATCH( ::DISPATCH( $self, "hash" ),  'elems', )
                    );
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'perl' ),
            ::DISPATCH(
                $::Method,
                'new',
                sub {
                    my $v;
                    $v =
                      ::DISPATCH( $::Scalar, 'new',
                        { modified => $_MODIFIED, name => '$v' } )
                      unless defined $v;

                    BEGIN {
                        $v =
                          ::DISPATCH( $::Scalar, 'new',
                            { modified => $_MODIFIED, name => '$v' } );
                    }
                    my $s;
                    $s =
                      ::DISPATCH( $::Scalar, 'new',
                        { modified => $_MODIFIED, name => '$s' } )
                      unless defined $s;

                    BEGIN {
                        $s =
                          ::DISPATCH( $::Scalar, 'new',
                            { modified => $_MODIFIED, name => '$s' } );
                    }
                    my $List__ =
                      ::DISPATCH( $::Array, 'new',
                        { modified => $_MODIFIED, name => '$List__' } );
                    my $self;
                    $self =
                      ::DISPATCH( $::Scalar, 'new',
                        { modified => $_MODIFIED, name => '$self' } )
                      unless defined $self;

                    BEGIN {
                        $self =
                          ::DISPATCH( $::Scalar, 'new',
                            { modified => $_MODIFIED, name => '$self' } );
                    }
                    $self = shift;
                    my $CAPTURE;
                    $CAPTURE =
                      ::DISPATCH( $::Scalar, 'new',
                        { modified => $_MODIFIED, name => '$CAPTURE' } )
                      unless defined $CAPTURE;

                    BEGIN {
                        $CAPTURE =
                          ::DISPATCH( $::Scalar, 'new',
                            { modified => $_MODIFIED, name => '$CAPTURE' } );
                    }
                    ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                    do {
                        ::MODIFIED($List__);
                        $List__ = ::DISPATCH( $CAPTURE, 'array', );
                    };
                    do {
                        ::MODIFIED($Hash__);
                        $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                    };
                    $v;
                    ::DISPATCH_VAR( $s, 'STORE',
                        ::DISPATCH( $::Str, 'new', '\\\\( ' ) );
                    do {
                        if (
                            ::DISPATCH(
                                ::DISPATCH(
                                    ::DISPATCH(
                                        ::DISPATCH( $self, "invocant" ),
                                        'defined',
                                    ),
                                    "true"
                                ),
                                "p5landish"
                            )
                          )
                        {
                            {
                                ::DISPATCH_VAR(
                                    $s, 'STORE',
                                    ::DISPATCH(
                                        $GLOBAL::Code_infix_58__60__126__62_,
                                        'APPLY', $s,
                                        ::DISPATCH(
                                            $GLOBAL::Code_infix_58__60__126__62_,
                                            'APPLY',
                                            ::DISPATCH(
                                                ::DISPATCH( $self, "invocant" ),
                                                'perl',
                                            ),
                                            ::DISPATCH( $::Str, 'new', ': ' )
                                        )
                                    )
                                  )
                            }
                        }
                    };
                    {
                        my $v;
                        $v =
                          ::DISPATCH( $::Scalar, 'new',
                            { modified => $_MODIFIED, name => '$v' } )
                          unless defined $v;

                        BEGIN {
                            $v =
                              ::DISPATCH( $::Scalar, 'new',
                                { modified => $_MODIFIED, name => '$v' } );
                        }
                        for $v (
                            @{ ::DISPATCH( $self, "array" )->{_value}{_array} }
                          )
                        {
                            {
                                ::DISPATCH_VAR(
                                    $s, 'STORE',
                                    ::DISPATCH(
                                        $GLOBAL::Code_infix_58__60__126__62_,
                                        'APPLY', $s,
                                        ::DISPATCH(
                                            $GLOBAL::Code_infix_58__60__126__62_,
                                            'APPLY',
                                            ::DISPATCH( $v, 'perl', ),
                                            ::DISPATCH( $::Str, 'new', ', ' )
                                        )
                                    )
                                  )
                            }
                        }
                    };
                    return (
                        ::DISPATCH(
                            $GLOBAL::Code_infix_58__60__126__62_,
                            'APPLY', $s, ::DISPATCH( $::Str, 'new', ' )' )
                        )
                    );
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Capture, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'str' ),
            ::DISPATCH(
                $::Method,
                'new',
                sub {
                    my $List__ =
                      ::DISPATCH( $::Array, 'new',
                        { modified => $_MODIFIED, name => '$List__' } );
                    my $self;
                    $self =
                      ::DISPATCH( $::Scalar, 'new',
                        { modified => $_MODIFIED, name => '$self' } )
                      unless defined $self;

                    BEGIN {
                        $self =
                          ::DISPATCH( $::Scalar, 'new',
                            { modified => $_MODIFIED, name => '$self' } );
                    }
                    $self = shift;
                    my $CAPTURE;
                    $CAPTURE =
                      ::DISPATCH( $::Scalar, 'new',
                        { modified => $_MODIFIED, name => '$CAPTURE' } )
                      unless defined $CAPTURE;

                    BEGIN {
                        $CAPTURE =
                          ::DISPATCH( $::Scalar, 'new',
                            { modified => $_MODIFIED, name => '$CAPTURE' } );
                    }
                    ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                    do {
                        ::MODIFIED($List__);
                        $List__ = ::DISPATCH( $CAPTURE, 'array', );
                    };
                    do {
                        ::MODIFIED($Hash__);
                        $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                    };
                    ::DISPATCH( $self, 'perl', );
                }
            )
          )
    };
    1
}

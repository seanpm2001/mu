my sub copy_methods($dst,$src) {
    my sub copy_method($key) {
        $dst.^!methods.{$key.FETCH} = $src.^!methods.{$key.FETCH};
    }
    map(&copy_method,$src.^!methods.keys);
}
my sub copy_does($dst,$src) {
    my $i = 0;
    loop {
        if &infix:<==>:(int,int)($i,$src.^!does.elems) {
            return;
        } else {
            $dst.^!does.[$i.FETCH] = $src.^!does.[$i.FETCH];
            $i = &infix:<+>:(int,int)($i.FETCH,1);
        }
    }
}
my sub compose_role($obj,$role) {
    my sub compose_method($key) {
        if $obj.^!methods.{$key.FETCH} {
            ::Exception.new.throw;
        }
        $obj.^add_method($key.FETCH,$role.^!methods.{$key.FETCH}.FETCH);
    }
    map(&compose_method,$role.^!methods.keys);
}
knowhow RoleHOW {
    method add_attribute($object, $privname, $attribute) {
        $object.^!attributes.{$privname.FETCH} = $attribute;
    }
    method compose_role($object, $role) {
        compose_role($object,$role);
    }
    method add_method($object, $name, $code) {
        $object.^!methods.{$name.FETCH} = $code
    }
    method dispatch($object, $identifier, \$capture) {
        if PRIMITIVES::idconst_eq($identifier.FETCH,'FETCH') {
            # in item context, returns itself.
            return $object;
        } else {
            # Roles are not classes! so we're going to delegate this to a
            # punned class that does this role. For now, we're going to pun a
            # new class every time, then we'll think in some sort of caching.
            my $class = ::p6opaque.^!CREATE;
            $class.^!how = ::PrototypeHOW;
            $class.^!does.push((|$object));
#            $class.^compose_role(::LowObject);
#            $class.^compose_role($object);
            copy_methods($class,::LowObject);
            copy_methods($class,$object);
            my $delegated = ::Scalar.new($capture.delegate($class.FETCH));
            return $class.^dispatch($identifier.FETCH, (|$delegated));
        }
    }
}
role LowObject {
    method new() {
        my $obj = ::p6opaque.^!CREATE;
        $obj.^!how = self.^!how;
        copy_methods($obj,self);
        copy_does($obj,self);
        if $obj.^!methods.{'BUILDALL'} {
            $obj.BUILDALL;
        }
        $obj;
    }
    method ACCEPTS($obj) {
        my $role = self.^!does.[0];
        my $does = ::False;
        my sub does_role($r) {
            if PRIMITIVES::pointer_equal((|$role),(|$r)) {
                $does = ::True;
            }
        }
        map(&does_role,$obj.^!does);
        $does;
    }
}

$LexicalPrelude.{'RoleHOW'} := ::RoleHOW;


# Class: firsttest::apache
#
#
class firsttest::apache($apache_pname='apac') {
    # resources
    package { $apache_pname:
        ensure => installed,
        
    }

    service { $apache_pname:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => $apache_pname,
    }
}
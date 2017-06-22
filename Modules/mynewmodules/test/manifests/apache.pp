# Clatest::apache
#
#
class test::apache {
    # resources

    $package_name = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2'
    }

    package { $package_name :
        ensure => installed,
        
    }

    service { $package_name:
        ensure     => running,
        enable     => true,
    }
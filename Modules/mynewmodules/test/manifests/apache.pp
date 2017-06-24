# Clatest::apache
#
#
class test::apache ($package_name='httpd') {
    # resources

    

   package { $package_name:
       ensure => installed,
       before => Service[package_name],
   }

    service { $package_name:
        ensure     => running,
        enable     => true,
        require    => Package[$package_name],
        before     => File['/var/tmp/1.txt'],
    }

    file { '/var/tmp/1.txt':
        ensure => present,
        notify => Service[$package_name],
    }

    
}
# Class: 
#
#
class apache::service inherits apache::params {

   #$pack_name = $facts['os']['family'] ? {
   #    'RedHat' => 'httpd',
   #    'Debian' => 'apache2',
   #}


    service { $apache::params::pack_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => 'name',
    }

}   
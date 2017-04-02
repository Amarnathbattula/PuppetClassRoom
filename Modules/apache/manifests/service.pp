# Class: 
#
#
class apache::service {

   $pack_name = $facts['os']['family'] ? {
       'RedHat' => 'httpd',
       'Debian' => 'apache2',
   }


    service { $pack_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => 'name',
    }

}   
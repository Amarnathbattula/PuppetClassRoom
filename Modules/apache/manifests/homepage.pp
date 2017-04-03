# Class: 
#
#
class apache::homepage {

    file { '/var/www/index.html':
        ensure => file,
       # source => 'puppet:///modules/index.html';
       content => file('apache/index.html')
    }

     $pack_name = $facts['os']['family'] ? {
       'RedHat' => 'httpd',
       'Debian' => 'apache2',
   }


    service { "test":
        name       => pack_name
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        restart    => ,
        # pattern    => 'test',
    }
     
}
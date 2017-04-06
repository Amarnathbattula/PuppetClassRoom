# Class: 
#
#
class apache::homepage inherits apache::params{

    file { '/var/www/html/index.html':
        ensure => file,
       # source => 'puppet:///modules/index.html';
       content => file('apache/index.html')
    }

    service { "my service restart":
        name       => $apache::params::pack_name
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        restart    => "",
        # pattern    => 'my service restart',
    }

     #$pack_name = $facts['os']['family'] ? {
     #  'RedHat' => 'httpd',
     #  'Debian' => 'apache2',
   #}


         
}
# Class: 
#
#
class apache::homepage inherits apache::params{

    file { '/var/www/html/index.html':
        ensure => file,
       # source => 'puppet:///modules/index.html';
       content => file('apache/index.html'),
       notify =>  Service["${apache::params::pack_name}"]
    }

    #Resource Relationships

     #$pack_name = $facts['os']['family'] ? {
     #  'RedHat' => 'httpd',
     #  'Debian' => 'apache2',
   #}


         
}
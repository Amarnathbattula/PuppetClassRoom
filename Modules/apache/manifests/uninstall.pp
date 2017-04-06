class apache::uninstall inherits apache::params {
   #$pack_name = $facts['os']['family'] ? {
   #    'RedHat' => 'httpd',
   #    'Debian' => 'apache2',
   #}

   package { $apache::params::pack_name:
       ensure => purged,
       
   }
}
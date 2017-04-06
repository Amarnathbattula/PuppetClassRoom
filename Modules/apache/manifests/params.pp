class apache::params{
    $pack_name = $facts['os']['family'] ? {
       'RedHat' => 'httpd',
       'Debian' => 'apache2',
   }
}
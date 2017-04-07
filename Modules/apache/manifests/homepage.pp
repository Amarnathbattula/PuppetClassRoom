# Class: 
#
#
class apache::homepage(
    $file_local_name="index",
    $homepage_location="/var/www/html/index.html"
    ) inherits apache::params{

    file { $homepage_location:
        ensure => file,
       # source => 'puppet:///modules/index.html';
       content => file("apache/${file_local_name}.html"),
       notify =>  Service["${apache::params::pack_name}"]
    }

    #Resource Relationships

     #$pack_name = $facts['os']['family'] ? {
     #  'RedHat' => 'httpd',
     #  'Debian' => 'apache2',
   #}


         
}
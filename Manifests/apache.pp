$package_name= 'httpd'

package { $package_name :
    ensure => installed,
    
}

service { $package_name :
    ensure     => running,
    enable     => true,
}



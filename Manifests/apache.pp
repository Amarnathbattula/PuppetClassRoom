if $facts['os']['family'] == 'RedHat' {
    # enter puppet code
    $package_name= 'httpd'
}
else {
    # enter puppet code
    $package_name = 'apache2'
}


package { $package_name :
    ensure => installed,
    
}

#if $facts['os']['family'] == 'RedHat'
service { $package_name :
    ensure     => running,
    enable     => true,
}



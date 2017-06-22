$package_names = ['tree', 'git', 'nano', 'httpd', 'mysql']

#Each

$package_names.each | $package_name| {
    #package { $package_name:
    #    ensure => installed,
    #    
    #}
    notify { "Package name is ${package_name}" : }
}


$messages = [ 'hello', 'hai']

$messages.each | $mess | {
    notify { $mess : } 
    
}
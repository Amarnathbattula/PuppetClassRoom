# Class: test::message
#
#
class test::message($display_message = "Hello World!") {
    # resources
    

    notify { $display_message: } 

    user { 'test':
        comment => 'First Last',
        home => '/home/test',
        ensure => present,
        notify => Service[$package_name]
        #shell => '/bin/bash',
        #uid => '501',
        #gid => '20',
        
    }
    
}
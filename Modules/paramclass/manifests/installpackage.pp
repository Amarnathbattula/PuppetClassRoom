class paramsclass::installpackage(
    $pack_name, 
    $filelocation,
    $destinationPath) {

    package { $pack_name:
        ensure => installed,
        
    }

    file { $destinationPath:
        ensure => file,
        owner  => owner,
        group  => group,
        mode   => mode,
        source => "puppet:///modules/${filelocation}";
    }
    
    service { $pack_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => $pack_name,
    }

}
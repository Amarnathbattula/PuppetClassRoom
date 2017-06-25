# Class:hiera_demo::apache
#
#
class hiera_demo::apache ($package_name='apache2') {
    # resources

    notify { "Identified package is ${package_name}": } 
    
}
# Class: 
#
#
class apache::install inherits apache::params {
    # resourceapache:install

      package { $apache::params::pack_name:
       ensure => installed,
       
   }
}
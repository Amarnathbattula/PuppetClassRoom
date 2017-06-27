# Class: profile::elasticsearchsetup
#
#
class profile::elasticsearchsetup {
    # resources
    class { 'java':
      package => 'openjdk-8-jre-headless'
    }
    include 'elasticstack::elasticsearch'
}
# Class: elasticstack::elasticsearch
#
#
class elasticstack::elasticsearch (
    $download_url= 'https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.0.0.deb',
    $file_name = 'elasticsearch-5.0.0.deb'

) {
    # resources

    #wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.0.0.deb

    file { "/var/tmp/${file_name}":
        ensure => file,
        source => $download_url;
    }

    exec { "install elasticsearch":
        command => "dpkg -i ${file_name}",
        cwd => "/var/tmp/",
    }
}
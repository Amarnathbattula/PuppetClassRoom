# Class: firsttest::java
#
#
class firsttest::java(
    $name = 'jdk6',
    $version = '6',
    $se = 'jdk'
) {
    #install java
    java::oracle { $name :
        ensure  => 'present',
        version => $version,
        java_se => $se,
    }

}
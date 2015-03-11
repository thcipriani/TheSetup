Exec {
    path => [
        '/bin/',
        '/sbin/' ,
        '/usr/bin/',
        '/usr/sbin/',
        '/usr/local/bin',
    ], }
Package { ensure => present, }

hiera_include('classes', [])

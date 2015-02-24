Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/bin' ], }
Package { ensure => present, }

node 'administrator-UX301LAA' {
  class { '::user': } ->
  class { '::vim': } ->
  class { '::dotfiles': } ->
  class { '::user::utils': } ->
  class { '::vagrant': } ->
  class { '::xsession': } ->
  class { '::phpsh': } ->
  class { '::jjb': } ->
  class { ::openstack: }
}

node /.*\.tylercipriani\.com/ {
  notify{'personal node':}
}



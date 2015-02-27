Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/bin' ], }
Package { ensure => present, }

node 'administrator-UX301LAA' {
  include ::user
  include ::vim
  include ::dotfiles
  include ::user::utils
  include ::vagrant
  include ::xsession
  include ::phpsh
  include ::jjb
  include ::openstack
}

node /.*\.tylercipriani\.com/ {
  notify{'personal node':}
}



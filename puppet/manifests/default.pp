Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/bin' ], }
Package { ensure => present, }

class { '::user':
  user  => 'tyler',
  group => 'tyler',
} ->
class { '::vim': } ->
class { '::dotfiles': } ->
class { '::user::utils': } ->
class { '::xsession': }

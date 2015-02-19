Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/bin' ], }
Package { ensure => present, }

class { '::user': } ->
class { '::vim': } ->
class { '::dotfiles': } ->
class { '::user::utils': } ->
class { '::vagrant': } ->
class { '::xsession': } ->
class { '::phpsh': } ->
class { '::jjb': }

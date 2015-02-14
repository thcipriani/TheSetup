Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/bin' ], }
Package { ensure => present, }

file { '/home/tyler':
  ensure => directory,
  owner => 'tyler',
  group => 'tyler',
}

user { 'tyler':
  ensure => present,
  shell => '/bin/bash',
  home => '/home/tyler',
  groups => 'sudo',
  password => '$6$m0)mE7$mgCFvV6n6j/zMs4ctIeqtZl3DzLhyLymOVZ7oC6aBFwmvwC4KvcLXCWZKZzrXuTx4u9ofcV8C/CjPnbyKDvuO.',
}

notify { 'what up dawg?':
  require => [
    File['/home/tyler'],
    User['tyler'],
]} ->
class { '::vim': } ->
class { '::dotfiles': }

class dotfiles {

  ::git::clone { 'dotfiles':
    directory => '/home/tyler/.dotfiles',
    remote    => 'https://github.com/thcipriani/dotfiles.git',
  }

  exec { 'setup-dotfiles':
    command => 'ruby bootstrap.rb',
    environment => [ "HOME=/home/tyler" ],
    cwd => '/home/tyler/.dotfiles',
    unless => 'test -L /home/tyler/.bashrc',
    require => ::git::clone['dotfiles'],
  }

  exec { 'tyler-owner':
    command => 'chown -R tyler:tyler /home/tyler',
    require => Exec['setup-dotfiles'],
  }
}

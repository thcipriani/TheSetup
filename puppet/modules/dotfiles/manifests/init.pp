class dotfiles {
  require git

  exec { 'fetch-dotfiles':
    command => 'git clone https://github.com/thcipriani/dotfiles.git .dotfiles',
    cwd => '/home/tyler/',
    unless => 'test -d /home/tyler/.dotfiles'
  }

  exec { 'setup-dotfiles':
    command => 'ruby bootstrap.rb',
    environment => [ "HOME=/home/tyler" ],
    cwd => '/home/tyler/.dotfiles',
    unless => 'test -L /home/tyler/.bashrc',
    require => Exec['fetch-dotfiles'],
  }

  exec { 'tyler-owner':
    command => 'chown -R tyler:tyler /home/tyler',
    require => Exec['setup-dotfiles'],
  }
}

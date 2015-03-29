# == Class: utils
#
# These are some softwarez that I uses.
#
class user::utils {

    include ::haskell

    package { [
      'GitPython',
    ]:
      provider => 'pip',
      require  => Package['python-pip'],
    }

    package { [
      'dunst',
      'curl',
      'feh',
      'suckless-tools',
      'duplicity',
      'virtualbox',
      'rxvt-unicode-256color',
      'trayer',
      'pass',
      'tmux',
      'x11-utils',
      'xdotool',
      'xfonts-terminus',
      'python-boto',
      'emacs',
      'mutt-patched',
      'msmtp',
      'powertop',
      'cheese',
      'nfs-kernel-server',
      'mosh',
      'python-pip',
      'google-talkplugin',
      'dict-gcide',
      'units',
      'openssh-server',
      'puppet-lint',
      'vim-puppet',
      'httpry',
      's3cmd',
      'mplayer2',
      'lynx-cur',
      'git-annex',
      'vlc',
      'rake',
      'xscreensaver',
      'xscreensaver-gl',
      'xscreensaver-gl-extra',
      'graphicsmagick',
      'ubuntu-restricted-extras', # I hate me :(
      'cgroup-bin', # test mw ::mediawiki
    ]: }

    ::haskell::install{ [
      'xmonad',
      'xmonad-contrib',
      'xmobar',
      'pandoc',
      'yeganesh',
      ]: }
}
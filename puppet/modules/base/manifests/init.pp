# == Class: base
#
# These are some softwarez that I uses.
#
class base {

    exec { 'apt-get update': }

    include ::haskell

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
        'google-talkplugin',
        'dict-gcide',
        'units',
        'openssh-server',
        'puppet-lint',
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
    ]:
        require => Exec['apt-get update'],
    }

}

# == Class: base
#
# These are some softwarez that I uses.
#
class base {

    exec { 'apt-get update': }

    include ::haskell

    package { [
        'libnotify-bin',
        'pcregrep',
        'dialog',
        'xsel',
        'xclip',
        'xcape',
        'dunst',
        'curl',
        'feh',
        'suckless-tools',
        'duplicity',
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
        'dict-gcide',
        'units',
        'openssh-server',
        'puppet-lint',
        'mplayer2',
        'lynx-cur',
        'git-annex',
        'vlc',
        'xscreensaver',
        'xscreensaver-gl',
        'xscreensaver-gl-extra',
        'graphicsmagick',
        'xinput',
    ]:
        require => Exec['apt-get update'],
    }

}

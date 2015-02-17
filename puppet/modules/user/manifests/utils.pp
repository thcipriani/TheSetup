# == Class: utils
#
# These are some softwarez that I uses.
#
class user::utils {
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
  ]: }

  ::haskell::install{ [
    'xmonad',
    'xmonad-contrib',
    'xmobar',
    'pandoc',
    'yeganesh',
    ]: }
}
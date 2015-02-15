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
    'vagrant',
    'rxvt-unicode-256color',
    'trayer',
    'pass',
    'tmux',
    'x11-utils',
    'xdotool',
    'xfonts-terminus',
  ]: }

  ::haskell::install{ [
    'xmonad',
    'xmonad-contrib',
    'xmobar',
    'pandoc',
    'yeganesh',
    ]: }
}
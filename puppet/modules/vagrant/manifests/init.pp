class vagrant {
  case $::operatingsystem {
    'Ubuntu': { include ::vagrant::ubuntu }
    'default': {
      package { 'vagrant': }
    }
  }
}
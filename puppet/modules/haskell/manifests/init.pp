class haskell {
  case $::operatingsystem {
    'Ubuntu': { include ::haskell::ubuntu }
  }
}

class user(
  $user,
  $group,
  $sudo = false
) {
  $groups = $sudo ? {
      default => $group,
      true => [
        $group,
        'sudo',
      ]
  }

  user { "${user}":
    ensure     => present,
    shell      => '/bin/bash',
    home       => "/home/${user}",
    groups     => $groups,
    password   => $pass,
    managehome => true,
  }
}
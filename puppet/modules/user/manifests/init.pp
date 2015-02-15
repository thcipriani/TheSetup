class user(
  $user,
  $group,
  $sudo = false
) {
  $groups = $sudo ? {
      undef   => $group,
      default => [
        $group,
        'sudo',
      ]
  }

  user { "$user":
    ensure     => present,
    shell      => '/bin/bash',
    home       => "/home/${user}",
    groups     => $groups,
    password   => '$6$m0)mE7$mgCFvV6n6j/zMs4ctIeqtZl3DzLhyLymOVZ7oC6aBFwmvwC4KvcLXCWZKZzrXuTx4u9ofcV8C/CjPnbyKDvuO.',
    managehome => true,
  }
}
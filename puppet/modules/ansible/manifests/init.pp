# == class ansible
#
# That's right, a puppet class to setup ansible. Don't you dare fucking judge
# me!
class ansible {
    package { 'ansible':
        provider => 'pip',
    }
}
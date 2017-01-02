class sysadmins {
user { 'elmo':
ensure => 'present',
gid  => 'sysadmin',
home => '/home/elmo',
managehome => true,
}
group { 'sysadmin':
ensure => 'present',
}
}

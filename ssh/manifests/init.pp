class ssh {
file {'/etc/motd':
ensure => present,
content => template('ssh/motd.erb'),
}
}


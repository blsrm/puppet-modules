class mail {
$mailserver = '' 
if $mailserver {
file {'/etc/mail':
ensure=> present,
}
}
else {
file {'/etc/mail':
ensure=>absent,
}
}
}

file {'/etc/aliases':
	source	=>	'/backup/puppet/files/etc/aliases',
}
exec {'postaliases /etc/aliases':
	path =>	'/usr/sbin/postalias',
	subscribe	=>	File['/etc/aliases'],
	refreshonly	=>	true,
}

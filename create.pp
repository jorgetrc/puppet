exec {'tar -xf /root/etc.tar':
	path	=>	'/usr/sbin:/usr/bin:/sbin:/bin',
	creates	=>	'/var/tmp/etc/passwd',
	cwd	=>	'/var/tmp',
}

exec {'logrotate':
	path	=>	'/usr/sbin',
	onlyif	=>	'/usr/bin/test $(du /var/log/messages | cut -f1) -gt 10000'

}

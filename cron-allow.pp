exec {'/bin/echo root > /etc/cron.allow':
	path	=>	'/usr/bin:/usr/sbin:/bin:/sbin',
	unless	=>	'grep root /etc/cron.allow 2>/dev/null',
}


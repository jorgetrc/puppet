cron { 'logrotate':
	ensure	=>	present,
	command	=>	'/usr/sbin/logrotate',
	user	=>	'root',
	minute	=>	00,
	hour	=>	[2,4,6,8],
}

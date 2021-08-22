file {'conf.d':
	path	=>	'/etc/zabbix/conf.d',
	ensure	=>	'directory',
	recurse	=>	'true',
	purge	=>	'true',
	owner	=>	'zabbix',
	group	=>	'zabbix',
	source	=>	'/backup/puppet/files/zabbix-agent/conf.d/',
}

file {'main.cf':
	path	=>	'/etc/postfix/main.cf',
	ensure	=>	present,
	owner	=>	postfix,
	group	=>	postfix,
	source	=>	'/backup/puppet/files/postfix/main.cf',
}

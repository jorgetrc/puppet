$apache = $::operatingsystem ? {
	'Debian'	=>	'apache2',
	'CentOS'	=>	'httpd',
	'default'	=>	'undef',
}
notify { "O serviço do apache e $apache do $::operatingsystem": }


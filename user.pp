user {'admin':
	ensure => 'present',
	password => '$1$.mWUQFN.$lkDtfLcf7bXVSYf6Z43jr0',
	gid => 'admin',
	shell => '/bin/bash',
	home => '/home/admin',
	password_max_age => '90',
	password_min_age => '10',
	uid => '1200',
}

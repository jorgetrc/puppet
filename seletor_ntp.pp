$service_name = $::operatingsystem ? {
	'CemtOS'	=>	'ntpd',
	'Debian'	=>	'ntp',
	'Default'	=>	'undef',
}

$conf_file = $::operatingsystem ? {

	'Debian'	=> 'ntp.conf.debian',
	'CentOS'	=> 'ntp.conf.debian',
	'Default'	=> 'undef',
}

package { "ntp":
	ensure	=>	present,
}

Service {"$service_name":
	ensure	=>	running,
	enable	=>	true,
	hasrestart	=>	true,
	hasstatus	=>	true,
	require	=>	Package['ntp'],
}

file { '$conf_file':
	ensure	=>	present,
	path	=>	"/etc/ntp.conf",
	source	=>	"/backup/puppet/files/ntp/$conf_file",
	notify	=>	Service["$service_name"],
	require	=>	Package['ntp'],
}

notify {"$service_name":}
notify {"$conf_file":}


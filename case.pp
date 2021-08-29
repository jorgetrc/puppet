case $operatingsystem {
	'RedHat', 'CemtOS' :{
		$service_name = 'ntpd'
		$conf_file = 'ntp.conf.el'
	}
	'Debian', 'Ubuntu': {
		$service_name = 'ntp'
		$conf_file = 'ntp.conf.debian'
	}
	'Default' : {
		fail ("Sistema Operacional Não reconhecido.")
	}
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


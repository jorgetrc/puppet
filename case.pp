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

notify {"$service_name":}
notify {"$conf_file":}


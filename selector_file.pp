$file_mode = $::operatingsystem ? {
	'Debian'	=>	'0664',
	'CentOS'	=>	'0776',
	'Fedora'	=>	'0664',
}
notify {"Permissão: {$file_mode}":}
file {'/tmp/readme.txt':
	ensure	=>	present,
	mode	=>	"${file_mode}",
}

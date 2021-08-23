host {'roteador.teste.br':
	ensure	=> present,
	ip	=>	'192.168.0.1',
	host_aliases	=>	'roteador',
}
host {'datacenter':
	ensure	=>	present,
	ip	=>	'192.168.0.20',
}

# Através do Puppet, crie um arquivo de manifests para garantir que
# o serviço postfix esteja instalado e rodando, utilizando o arquivo
# de configuração padrão da empresa, que localizado no
# diretório /backup/puppet/files/postfix/main.cf



package	{ 'postfix':
	ensure	=>	present,
}
file {'main.cf':
	path	=>	'/etc/postfix/main.cf',
	ensure	=>	present,
	owner	=>	postfix,
	group	=>	postfix,
	source	=>	'/backup/puppet/files/postfix/main.cf',
}	
	
service { 'postfix':
	ensure		=>	running,
	enable		=>	true,
	hasrestart	=>	true,
	hasstatus	=>	true,
}

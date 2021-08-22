file {'arquivoteste':
	path	=>	'/tmp/arquivoteste.txt',
	mode	=>	'0640',
	ensure	=>	present,
	owner	=>	'admin',
	group	=>	'admin',
	content	=>	'Arquivo de teste criado pelo Puppet',
}

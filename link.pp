file {'linktest':
	path	=>	'/tmp/linktest',
	ensure	=>	'link',
	target	=>	'/tmp/arquivoteste.txt',
}

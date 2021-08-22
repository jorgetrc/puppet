exec {'update-alternatives --set editor /usr/bin/vim':
	path	=>	'/usr/bin/:/usr/sbin:/bin:/sbin'
	unless	=>	'test /usr/bin/editor -ef /usr/bin/vim',
}

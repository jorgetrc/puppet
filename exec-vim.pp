exec {'update-alternatives --set editor /usr/bin/vim':
	path	=>	'/usr/bin/:/usr/sbin:/bin:/sbin'
}

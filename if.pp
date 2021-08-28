if $is_virtual == 'true' {
	service	{'ntp':
	ensure	=> stopped,
	enable	=> false,
	}
}
else {
	service {'ntp':
	name	=> 'ntp',
	ensure	=> 'running',
	enable	=> false,
	}
}

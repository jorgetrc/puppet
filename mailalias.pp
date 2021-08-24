mailalias {'root':
	ensure	=>	present,
	recipient	=>	'suporte@teste.br atendimento@teste.br',
	notify	=>	Exec['/usr/bin/newaliases'],
}
exec { '/usr/bin/newaliases':
	refreshonly	=>	true,
}

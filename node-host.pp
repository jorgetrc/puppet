host {"$fqdn":
	ensure	=>	present,
	ip	=>	$ipaddress,
	host_aliases	=>	$hostname,
}	

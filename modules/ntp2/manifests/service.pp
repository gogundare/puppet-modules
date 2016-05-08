class ntp2::service {

	service { 'ntp_service': 
		name		=> $ntp2::params::service_name,
		ensure		=> 'running',
		enable		=> true,
		subscribe	=> File['/etc/ntp.conf']
	}

}

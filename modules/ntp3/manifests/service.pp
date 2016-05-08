class ntp3::service {

	service { 'ntp_service': 
		name		=> $ntp3::params::service_name,
		ensure		=> 'running',
		enable		=> true,
		subscribe	=> File['/etc/ntp.conf']
	}

}

class ntp_class_parameters::service {

	service { 'ntp_service': 
		name		=> $ntp_class_parameters::params::service_name,
		ensure		=> 'running',
		enable		=> true,
		subscribe	=> File['/etc/ntp.conf']
	}

}

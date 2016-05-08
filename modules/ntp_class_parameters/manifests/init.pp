class ntp_class_parameters ($package = $ntp_class_parameters::params::package_name) inherits ntp_class_parameters::params {
	package { ntp:
		name	=> $package,
		ensure	=> present
	}
	include ntp_class_parameters::file
	include ntp_class_parameters::service
}	

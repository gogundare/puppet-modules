class ntp_class_parameters::file {
	$template = $ntp_class_parameters::params::template
	$servers = $ntp_class_parameters::params::default_servers

	file { '/etc/ntp.conf':
		ensure	=> file,
		require	=> Package['ntp'],
		content	=> template("ntp/${template}.erb")
	}

}

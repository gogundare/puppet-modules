class ntp2::file {
	$template = $ntp2::params::template
	$servers = $ntp2::params::default_servers

	file { '/etc/ntp.conf':
		ensure	=> file,
		require	=> Package['ntp'],
		content	=> template("ntp2/${template}.erb")
	}

}

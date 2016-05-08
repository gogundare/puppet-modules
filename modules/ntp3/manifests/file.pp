class ntp3::file ($template = $ntp3::params::template, $servers = $ntp3::params::default_servers) inherits ntp3{
	
	notify{ "the template variable is now ${template}": }
	file { '/etc/ntp.conf':
		ensure	=> file,
		require	=> Package['ntp'],
#		content	=> template("ntp/${template}.erb")
	}

}

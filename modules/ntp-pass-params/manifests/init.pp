class ntp ($package = $ntp::params::package_name) inherits ntp::params {
	package { 'ntp':
		name	=> $package,
		ensure	=> present
	}
	class { 'ntp::file' : template => 'hello', }
	include ntp::service
}	

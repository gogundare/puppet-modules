class ntp3 ($package = $ntp3::params::package_name) inherits ntp3::params {
	package { ntp:
		name	=> $package,
		ensure	=> present
	}
	class { 'ntp3::file' : template => 'hello', }
	include ntp3::service
}	

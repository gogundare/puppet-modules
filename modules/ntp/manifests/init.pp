class ntp ($package) inherits ntp::params {
	package { ntp:
		name	=> $package,
		ensure	=> present
	}
	notify { " The variable package is equal to ${package}": }
	class { 'ntp::file' : template => 'hello', }
	include ntp::service
}	

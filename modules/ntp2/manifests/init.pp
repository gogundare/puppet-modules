class ntp2 {
	package { 'ntp':
		ensure => present
	}
	
	include ntp2::params
	include ntp2::file
	include ntp2::service
}

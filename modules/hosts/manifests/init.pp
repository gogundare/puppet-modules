class hosts {

	file { '/etc/hosts':
	ensure => 'present',
	owner => 'root',
	group => 'root',
	mode => '0644',
	source => 'puppet:///modules/hosts/hosts'
	}
}

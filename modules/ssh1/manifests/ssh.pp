class ssh1::ssh {
	case $osfamily {
		'RedHat': { $ssh_name = 'sshd'}
		'Debian': { $ssh_name = 'ssh'}
		default: { fail('OS not supported by puppet module SSH')}
}
			## Or ##
	#$ssh_name = $osfamily ? {
	#'Redhat'	=> 'sshd',
	#'Debian'	=> 'ssh'
	#default	=> 'value'
	#}

	package { 'openssh-package':
		name	=> 'openssh',
		ensure	=> present,
		before	=> File['/etc/ssh/sshd_config']
		}

	file { '/etc/ssh/sshd_config':
		ensure	=> file,
		owner	=> 'root',
		group	=> 'root',
		source	=> 'puppet:///modules/ssh1/sshd_config',
		require	=> Package['openssh-package'],
		notify	=> Service['ssh-service'] #-name-two'] you can this if you want to
	}
	
	service { 'ssh-service':
		name	=> $ssh_name,
		ensure	=> running,
		alias 	=> 'ssh-service-name-two',
		enable	=> true,	
	}

}

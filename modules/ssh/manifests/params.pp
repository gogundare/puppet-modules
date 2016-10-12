class ssh::params {
	
	case $::osfamily {
		'RedHat': { $ssh_name = 'sshd' }
		'Solaris': { $ssh_name = 'sshd' }
		default: { fail('OS not supported by puppet modules SSH') }
	}
}

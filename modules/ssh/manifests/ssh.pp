class ssh::ssh {

        package { 'openssh-package':
                name    => 'openssh',
                ensure  => present,
                before  => File['/etc/ssh/sshd_config']
                }

        file { '/etc/ssh/sshd_config':
                ensure  => file,
                owner   => 'root',
                group   => 'root',
                source  => 'puppet:///modules/ssh1/sshd_config',
                require => Package['openssh-package'],
                notify  => Service['ssh-service'] #-name-two'] you can this if you want to
        }

        service { 'ssh-service':
                name    => $ssh::params::ssh_name,
                ensure  => running,
                alias   => 'ssh-service-name-two',
                enable  => true,
        }

}


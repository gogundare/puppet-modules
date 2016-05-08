class resource_collector {

## File And Resource Collectors ##

	File {
		owner	=> 'root',
		group	=> 'finance',
		mode	=> '0660'
	}

	$homedir = "/root"
	$content = "My Files Content"

	file { "${homedir}/myfile.txt":
		content => $content,
	}

	file { "${homedir}/myfile2.txt":
		content => "myfile2 content",
	}

	file {"${homedir}/myfile3.txt":
		content => "myfile3",
		owner	=> 'admin',
		group	=> 'root'
	}

        file { '/root/motd':
                ensure  => present,
                source  => 'puppet:///modules/filedemo/motd',
                #content => 'This is my MOTD file managed by content attriute',
                owner   => 'root',
                group   => 'root',
                mode    => '0644'
        }

        file { '/etc/motd':
                ensure  => link,
                target  => '/root/motd'
        }
}


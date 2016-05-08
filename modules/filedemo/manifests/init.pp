class filedemo {
	file { '/root/motd': 
		ensure	=> present,
		source	=> 'puppet:///modules/filedemo/motd', 	
		#content => 'This is my MOTD file managed by content attriute',
		owner	=> 'root',
		group	=> 'root',
		mode	=> '0644'
	}

	file { '/etc/motd':
		ensure	=> link,
		target	=> '/root/motd'
	}
}

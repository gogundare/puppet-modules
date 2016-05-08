class filedemo::motd {

	file { '/etc/motd':
		ensure	=> file,
		owner	=> 'root',
		group	=> 'root',
		content	=> template('filedemo/motd.erb'),
		mode	=> '0644'
	}

}

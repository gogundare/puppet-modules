class localusers::groups::wheel {
	group { 'wheel':
		ensure	=> present,
		members	=> 'gxo,admin'
	}

}

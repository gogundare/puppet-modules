class localusers {
	user { 'admin':
		ensure		=> present,
		shell		=> '/bin/bash',
		home		=> '/home/admin',
		gid		=> 'wheel',
		managehome	=> true,	
		password	=> '$6$LVi0v/5K$dNu8IW/G7BAzK.MK18FHQ.wlmfAGaHy5Ir0K0YZXc9VNyfnw2Zi1NZgXCfGq8fD3DJuXiBUI4g37xrZvxfEvJ1'
	}
	user { 'jeff':
		ensure		=> present,
		shell		=> '/bin/bash',
		home		=> '/home/jeff',
		groups		=> ['wheel', 'finance'],
		password	=> '$6$LVi0v/5K$dNu8IW/G7BAzK.MK18FHQ.wlmfAGaHy5Ir0K0YZXc9VNyfnw2Zi1NZgXCfGq8fD3DJuXiBUI4g37xrZvxfEvJ1',
		managehome	=> true
	}
}

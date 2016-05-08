class profiles::base {
	include hosts
	include localusers
	include localusers::groups::finance
	include localusers::groups::wheel
	class {'ntp': package => 'ntp', }
}

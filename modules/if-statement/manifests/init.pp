class if-statement::if {
	if $::hostname =~ /^puppet(\d+)/ {
		notice("you have arrived at server $0 ")
	}
}

class resource_collector::rc {
	# This is how to find all files owned by root user #
	#File <| owner =="root"

	# How to search for all files that has group equal to root #

	File <| group	== "root" |> {
		group 	=> "jeff",
	# To add into an array
	#Require +> '[ ]'
	}
}

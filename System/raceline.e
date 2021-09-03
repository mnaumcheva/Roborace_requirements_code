note
	description: "Summary description for {RACELINE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RACELINE
create
	make_empty
feature
	make_empty
		do
			create raceline.make
			create velocity_profile.make
		end
	raceline: LINKED_LIST[LOCATION]
	velocity_profile: LINKED_LIST[REAL]

invariant
	raceline.count = velocity_profile.count
end

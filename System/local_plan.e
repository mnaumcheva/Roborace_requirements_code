note
	description: "Summary description for {LOCAL_PLAN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LOCAL_PLAN

create
	make

feature
	make (c: RACECAR)
		do
			car := c
			create location_points.make
			create velocity_profile.make
			create orientation_profile.make
		end

feature
	car: RACECAR

	steps_number: INTEGER_32

	location_points: LINKED_LIST [LOCATION]

	velocity_profile: LINKED_LIST[REAL]

	orientation_profile: LINKED_LIST[REAL]

	next_speed: REAL

	next_orientation: REAL

end

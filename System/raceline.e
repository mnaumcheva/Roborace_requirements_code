note
	description: "Summary description for {RACELINE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	RACELINE

feature
	raceline: SEQUENCE[LOCATION]
	velocity_profile: SEQUENCE[REAL]

invariant
	raceline.count = velocity_profile.count
end

note
	description: "Subsystem responsible for localization and mapping"
	author: "Maria Naumcheva"
	date: "$03/07/2021$"
	revision: "$03/07/2021$"

class
	LOCALIZATION_AND_MAPPING_MODULE

create
	make

feature
	make (c: RACECAR)
		do
			car :=c
		end

feature
	car: RACECAR

end

note
	description: "Subsystem responsible for perception, localization and mapping"
	author: "Maria Naumcheva"
	date: "$01/06/2021$"
	revision: "$01/06/2021$"

class
	PERCEPTION_MODULE

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

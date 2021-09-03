note
	description: "Dynamic obstacle on a racetrack"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

class
	DYNAMIC_OBSTACLE

inherit
	OBSTACLE

create
	make_dynamic

feature

	make_dynamic (t: STRING; l: LOCATION; s: TUPLE[REAL, REAL, REAL]; sp: REAL)
		do
			type := t
			location := l
			size := s
			speed := sp
			create path_history.make
			create path_prediction.make
		end

	speed: REAL
		-- Current speed

	path_history: LINKED_LIST[LOCATION]
		-- Path history

	path_prediction: LINKED_LIST[LOCATION]
		-- Predicted path

	update_path_history
		-- Add current location to path history
		do

		end

	update_path_prediction
		-- Update predicted path
		do

		end
end

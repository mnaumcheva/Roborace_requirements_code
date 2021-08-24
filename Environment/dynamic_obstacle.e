note
	description: "Dynamic obstacle on a racetrack"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

deferred class
	DYNAMIC_OBSTACLE

inherit
	OBSTACLE

feature

	speed: REAL
		-- Current speed

	path_history: SEQUENCE[LOCATION]
		-- Path history

	path_prediction: SEQUENCE[LOCATION]
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

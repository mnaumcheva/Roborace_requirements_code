
note
	description: "Environment components"
	author: "Maria Naumcheva"
	revision: "14/10/2024"
	EIS: "name=Project Requirement 1.1", "protocol=URI", "src=/home/mnaumcheva/Roborace/roboraceRequirements/main.pdf", "tag=requirement", "nameddest=4.1"

class
	ENVIRONMENT

create
	make

feature
	make (m: MISSION; s: SENSORS_SETUP; r: RACETRACK)
		do
			create obstacles.make(0)
			create roborace.default_create
			mission := m
			sensors := s
			racetrack := r
		end

	obstacles: ARRAYED_SET[OBSTACLE]
		--Set of detected obstacles on racetrack

	roborace: ROBORACE
		--Race control unit

	mission: MISSION
		--Current mission details

	sensors: SENSORS_SETUP
		--Set of sensos insalled of the vehicle

	racetrack: RACETRACK
		-- Racetrack of a current competition

end

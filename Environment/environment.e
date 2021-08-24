
note
	description: "Environment components"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$11/08/2021$"
	EIS: "name=Project Requirement 1.1", "protocol=URI", "src=/home/mnaumcheva/Roborace/roboraceRequirements/main.pdf", "tag=requirement", "nameddest=4.1"

deferred class
	ENVIRONMENT

feature
	obstacles: BAG[OBSTACLE]
		--Set of detected obstacles on racetrack

	roborace: ROBORACE
		--Race control unit

	mission: MISSION
		--Current mission details

	sensors: SENSORS
		--Set of sensos insalled of the vehicle

	racetrack: RACETRACK
		-- Racetrack of a current competition

end

note
	description: "Abstract sensor"
	author: "Maria Naumcheva"
	date: "$16/06/2021$"
	revision: "$16/06/2021$"

deferred class
	SENSOR

feature
	position: LOCATION_3D
		--location in the world coordinates of the scene

	update_rate: REAL
		--sensor update rate
end

note
	description: "Abstract sensor"
	author: "Maria Naumcheva"
	revision: "14/10/2024"

deferred class
	SENSOR

feature
	position: LOCATION_3D
		--location in the world coordinates of the scene

	update_rate: REAL
		--sensor update rate
end

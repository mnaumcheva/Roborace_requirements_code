note
	description: "Lidar sensor"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$16/06/2021$"

deferred class
	LIDAR

inherit
	SENSOR

feature
	point_cloud: ARRAY2 [LOCATION]
		-- m by n matrix of detected points in lidar coordinate system

	object_points_distance: ARRAY2 [REAL]
		-- m by n matrix of distances to object points

	orientation: ORIENTATION
		-- Lidar orientation in the world coordinates of the scene	

end

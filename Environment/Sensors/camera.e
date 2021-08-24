note
	description: "Camera sensor"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$23/06/2021$"

deferred class
	CAMERA

inherit
	SENSOR

feature
--Properties
	orientation: ORIENTATION
		-- Camera orientation in the world coordinate system	

-- Output
	image: ARRAY2 [RGB]
		-- m by n matrix of RGB values

	labels: ARRAY2 [INTEGER]
		-- Label identifier for each pixel in the image


end

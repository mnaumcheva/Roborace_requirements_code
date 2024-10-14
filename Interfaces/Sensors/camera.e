note
	description: "Camera sensor"
	author: "Maria Naumcheva"
	revision: "14/10/2024"

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

note
	description: "Location points on 2D plane"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$21/04/2021$"

deferred class
	LOCATION

feature
	x: REAL
		-- x-coordinate
	y: REAL
		-- y-coordinate
	distance_error: REAL

	distance (a: LOCATION) : REAL
		-- distance from current to given location
		do
		ensure
			(a.x - x)*(a.x - x) + (a.y - y)*(a.y - y) - Result*Result < 0.000002
		end

	equals (a: LOCATION) : BOOLEAN
		--Two locations are equal up to a given error
		do
		ensure
			distance(a) < distance_error
		end

	close_to (o: OBSTACLE) : BOOLEAN
		--The distance between the car bounding box and obstacle is under the limit
		do
		ensure
			--The distance between the car bounding box and obstacle is under the limit
		end

end


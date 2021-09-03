note
	description: "2D roadmap"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$11/08/2021$"

class
	MAP

create
	make
feature
	make (tb: SEQUENCE [TUPLE [LOCATION, LOCATION]]; sl: TUPLE [LOCATION, LOCATION])
		do
			track_borders := tb
			starting_line := sl
		end

	track_borders: SEQUENCE [TUPLE [LOCATION, LOCATION]]
			-- Coordinates of the bounding lines of racetrack

	starting_line: TUPLE [LOCATION, LOCATION]
			-- Coordinates of the endpoints of the starting line

end

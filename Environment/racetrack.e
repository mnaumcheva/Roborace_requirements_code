note
	description: "RACETRACK"
	author: "Maria Naumcheva"
	revision: "14/10/2024"

class
	RACETRACK

create
	make

feature
	make (m: MAP; sl: TUPLE [LOCATION, LOCATION]; sg: ARRAY [LOCATION])
		do
			map := m
			starting_line := sl
			starting_grid := sg
		end

	map: MAP
			-- Coordinates of the bounding lines

	starting_line: TUPLE [LOCATION, LOCATION]
			-- Coordinates of the crossings of starting line with track bounding lines

	starting_grid: ARRAY [LOCATION]
			-- Coordinates of the middles of the front lines of the starting grid positions
			-- n-th element corresponds to n-th starting position.

end

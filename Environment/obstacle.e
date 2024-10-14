note
	description: "Obstacle on a racetrack"
	author: "Maria Naumcheva"
	revision: "14/10/2024"

deferred class
	OBSTACLE

feature

	make (t: STRING; l: LOCATION; s: TUPLE[REAL, REAL, REAL])
		do
			type := t
			location := l
			size := s
		end

	type: STRING
		-- Obstacle type

	location: LOCATION
		-- Obstacle location

	size: TUPLE[REAL, REAL, REAL]
		-- Obstacle size (bounding box)

invariant
--	type ~ "loot" or type ~ "obstacle" or type ~ "ghost_car"
--	across <<"loot", "obstacle", "ghost_car">> as i some i.item ~ type end;
	(<<"loot", "obstacle", "ghost_car">>).has (type)
		-- ~ denotes equality

end

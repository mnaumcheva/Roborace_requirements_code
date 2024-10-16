note
	description: "Mission rules and objectives"
	author: "Maria Naumcheva"
	revision: "14/10/2024"

class
	MISSION

create
	make

feature
	make (r: RACETRACK; nl, na, tl, bts, pts, ptm: INTEGER; sos, sbos, dos: TUPLE[REAL, REAL, REAL])
		do
			racetrack := r
			num_laps := nl
			num_attempts := na
			time_limit := tl
			bonus_time_static := bts
			penalty_time_static := pts
			penalty_time_moving := ptm
			static_obstacle_size := sos
			static_bonus_obstacle_size := sbos
			dynamic_obstacle_size := dos
		end
	racetrack: RACETRACK
		--racetrack of the race

	num_laps: INTEGER
		--Number of laps in one attempt

	num_attempts: INTEGER
		--Number of attemps

	time_limit: INTEGER
		--Time limit for the racing session (minutes)

	bonus_time_static: INTEGER
		--Time reward for collecting a bonus (seconds)

	penalty_time_static: INTEGER
		--Penalty time for hitting a static obstacle

	penalty_time_moving: INTEGER
		--Penalty time for hittig a moving obstacle

	static_obstacle_size: TUPLE[REAL, REAL, REAL]
		--Static obstacle size (bounding box)

	static_bonus_obstacle_size: TUPLE[REAL, REAL, REAL]
		--Static bonus obstacles size (bounding box)

	dynamic_obstacle_size: TUPLE[REAL, REAL, REAL]
		--Dynamic obstacles size (bounding box)

end

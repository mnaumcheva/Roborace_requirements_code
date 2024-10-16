note
	description: "Subsystem responsible for local and global path planning"
	author: "Maria Naumcheva"
	date: "$01/06/2021$"
	revision: "$17/08/2021$"

class
	PLANNING_MODULE

create
	make
feature
	car: RACECAR
	make (c: RACECAR)
		do
			create raceline.make_empty
			create global_plan.make_empty
			create local_plan.make(c)
			car := c
		end

feature
	raceline, global_plan: RACELINE

	local_plan: LOCAL_PLAN

	calculate_race_trajectory (circuit_map: MAP;
								vehicle_param: VEHICLE_PARAMETERS; strategy: INTEGER)
		-- Calculate optimal racing line for circuit
		-- Input: circuit map, Parameters, Optimization strategy
		-- Output: Raceline, Velocity profile
		note
		    EIS: "name=Env 1.1", "protocol=pdf",
		    "src=/home/Library/Requirements.pdf",
		    "tag=env1.1", "nameddest=1.1"
		require
			racetrack_is_a_circuit: ;
			racetrack_wide_enough: ;
		do

		ensure
			circuit_trajectory: ;
			velocity_limit_obeyed: ;

		end

	calculate_raceline --Used to be calculate_global_path
		-- Calculate global path from current location to given point
		-- Input: Road map, Raceline, Parameters, Optimization strategy
		-- Output: Path, Velocity profile
		do
		ensure
			across raceline.velocity_profile as rl all rl.item < car.max_speed end
		end

	recalculate_global_plan
		require
			car.raceline_is_calculated
			car.obstacle_is_detected or car.there_is_safety_hazard
		do
		ensure
			car.global_plan_is_calculated
		end

	calculate_local_plan: LOCAL_PLAN
		-- Calculate local path from current location to converge to global path
		-- Input: Vehicle pose; Obstacles location, velocity and path prediction (from Perception module)
		-- Input: Raceline, Global Velocity profile (from Global Path planner)
		-- Input: External events
		-- Output: Local trajectory, velocity profile
		require
			car.global_plan_is_calculated
		do
			
		ensure
			car.local_plan_is_calculated
		end

	update_max_speed (v: REAL)
		require
			car.yellow_flag_is_up or car.green_flag_is_up
			v > 0
		do

		ensure
			car.max_speed = v
		end

end

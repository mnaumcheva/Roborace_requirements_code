note
	description: "Core system class"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$17/08/2021$"

deferred class
	RACECAR

feature
	control_module: CONTROL_MODULE
	perception_module: PERCEPTION_MODULE
	planning_module: PLANNING_MODULE
	localization_and_mapping_module: LOCALIZATION_AND_MAPPING_MODULE

feature

	local_plan_is_calculated, global_plan_is_calculated, obstacle_is_detected, race_is_finished,
	is_moving, red_flag_is_shown, green_flag_is_shown, there_is_safety_hazard, safe_stop_request_received : BOOLEAN

	unsurmountable_obstacle_detected: BOOLEAN
		--The obstacle that does not let follow the glodal trajectory is detected

	is_accelerating, is_braking, raceline_is_calculated: BOOLEAN

	yellow_flag_is_shown (speedlimit : REAL) : BOOLEAN
	deferred
	end

feature

-- Environment
	environment: ENVIRONMENT
		-- Racecar environment components

	sensors: SENSORS
		-- Racecar sensors

	mission: MISSION

-- Vehicle current state
	location: LOCATION
		-- Location of the racecar´s centre of mass

	speed: REAL
		-- Current speed of racecar

	acceleration: REAL
		-- Current acceleration (negative values for deceleration)

	steering_angle: REAL
		-- Current steering angle in rad

	global_trajectory: SEQUENCE[TUPLE[LOCATION, REAL]]
		-- Racecar global trajectory

	local_trajectory: SEQUENCE[TUPLE[LOCATION, REAL]]
		-- Racecar local trajectory

	is_on_racetrack: BOOLEAN

	is_on_starting_grid: BOOLEAN

	start_command_is_received: BOOLEAN

	location_passed (l: LOCATION) : BOOLEAN
		deferred
		end

-- Parameters	
	max_speed: REAL		-- assign set_max_speed
		-- Speed limit

	set_max_speed (new_max_speed: REAL)
		-- Update speed limit
		require
			new_max_speed >= 0
		do
			max_speed := new_max_speed
		end

	normal_speed: REAL
		-- Speed limit when moving not in racing mode

	max_acceleration: REAL
		-- Acceleration limit

	max_steering_angle: REAL
		-- Max possible steering angle

	emergency_deceleration: REAL
		-- Deceleration at the emergency brake (must be < 0)

	normal_deceleration: REAL
		-- Deceleration at regular stop

	timestep: REAL
		-- A timestep for sending the desired speed to the actuators

	speed_error: REAL
		-- Acceptable error margin when setting speed

	angle_error: REAL
		-- Acceptable error margin when setting steering angle

	is_valid_acceleration (old_speed: REAL; new_speed: REAL; timeincrement: REAL) : BOOLEAN
		deferred
		end

invariant
	valid_max_angle: max_steering_angle > 0
	valid_speed: speed < max_speed
	red_flag_is_shown xor yellow_flag_is_shown (max_speed) xor green_flag_is_shown
	is_on_racetrack

end

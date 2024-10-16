note
	description: "Use cases as specification drivers"
	author: "Maria Naumcheva"
	revision: "14/10/2024"

class
	ROBORACE_USE_CASES

create
	make
feature

	make (c: RACECAR)
		do
			car := c
		end
	car: RACECAR
feature

	safe_stop
		require
			car.is_in_normal_mode
		do
			car.control_module.safe_stop
		ensure
			not car.is_moving
		end

	emergency_stop
		require
			car.red_flag_is_up or car.location_error_is_detected
		do
			car.control_module.emergency_stop
		ensure
			not car.is_in_normal_mode
			not car.is_moving
		end

	update_speed
		require
			car.yellow_flag_is_up
		do
			car.update_max_speed (car.safe_speed)
		ensure
			car.current_max_speed = car.safe_speed
		end

	race_no_obstacles
		Note
			Callers: car_operator
		require
			not car.is_moving
			car.global_plan_is_calculated
			car.green_flag_is_up
			car.is_on_starting_grid
		local
			local_plan: LOCAL_PLAN
		do
				--Sequence of system actions in use case main flow
			from
			until car.race_is_finished or
				car.red_flag_is_up or
				car.location_error_is_detected
			loop
				if car.yellow_flag_is_up then
					update_speed
				end
				local_plan := car.planning_module.calculate_local_plan
				car.control_module.move (local_plan.next_speed, local_plan.next_orientation)
			end
			if car.red_flag_is_up or car.location_error_is_detected then
				emergency_stop
			else safe_stop
			end
		ensure
			not car.is_moving
			car.is_in_normal_mode implies car.race_is_finished
		end


	avoid_obstacle_or_stop
		do
		end

	race_with_virtual_obstacles
		do
		end

	race_with_virtual_race_cars
		do
		end

	move_to_pit
		do
		end

end

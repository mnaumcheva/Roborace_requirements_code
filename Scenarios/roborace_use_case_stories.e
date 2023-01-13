note
	description: "Summary description for {ROBORACE_USE_CASE_SLICES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ROBORACE_USE_CASE_STORIES

inherit
	ROBORACE_USE_CASES
feature
	emergency_stop_red_flag_story
		require
			car.red_flag_is_up
		do
			emergency_stop
		end

	emergency_stop_location_error_story
		require
			car.location_error_is_detected
		do
			emergency_stop
		end

	race_no_obstacles_race_is_finished_story
		require
			not car.is_moving
			car.global_plan_is_calculated
			car.green_flag_is_up
			car.is_on_starting_grid
		do
			race_no_obstacles
		ensure
			car.race_is_finished
		end

	race_no_obstacles_red_flag_is_up_story
		require
			not car.is_moving
			car.global_plan_is_calculated
			car.green_flag_is_up
			car.is_on_starting_grid
		do
			race_no_obstacles
		ensure
			car.red_flag_is_up
		end

	race_no_obstacles_location_error_is_detected_story
		require
			not car.is_moving
			car.global_plan_is_calculated
			car.green_flag_is_up
			car.is_on_starting_grid
		do
			race_no_obstacles
		ensure
			car.location_error_is_detected
		end

	race_no_obstacles_is_in_normal_mode_story
		require
			not car.is_moving
			car.global_plan_is_calculated
			car.green_flag_is_up
			car.is_on_starting_grid
		do
			race_no_obstacles
		ensure
			car.is_in_normal_mode
		end

	race_no_obstacles_race_is_finished_not_in_normal_mode_story
		require
			not car.is_moving
			car.global_plan_is_calculated
			car.green_flag_is_up
			car.is_on_starting_grid
		do
			race_no_obstacles
		ensure
			car.race_is_finished
			not car.is_in_normal_mode
		end

end

note
	description: "Subsystem responsible for vehicle control"
	author: "Maria Naumcheva"
	date: "$01/06/2021$"
	revision: "$17/08/2021$"

class
	CONTROL_MODULE

create
	make

feature
	make (c: RACECAR)
		do
			car :=c
		end

	car: RACECAR

feature
	accelerate (v : REAL)
		-- Send desired speed command to the actuators
		require
			not car.is_braking
			valid_acceleration: (v - car.speed)/car.timestep <= car.max_acceleration
			valid_deceleration: (v - car.speed)/car.timestep >= car.emergency_deceleration
		do
		ensure
			speed_set: (v - car.speed) <= car.speed_error
			car.is_accelerating
		end

	steer (angle : REAL)
		-- Send desired steering command to the actuators
		require
			valid_angle: angle.abs <= car.max_steering_angle
		do
		ensure
			angle_set: (car.steering_angle - angle) <= car.angle_error
		end

	brake
		require
			not car.is_accelerating
		do

		ensure
			car.is_braking
		end

	emergency_brake
		-- Perform emergency stop				
		require
			not_stopped: car.speed > 0
		do

		end

	move (s: REAL; o: REAL)
		--move along the calculated path and velocity
		require
			car.local_plan_is_calculated
		do

		end

	safe_stop
		require
			car.race_is_finished
		do

		ensure
			not car.is_moving
		end

	emergency_stop
		require
			car.red_flag_is_shown or car.there_is_safety_hazard
		do

		ensure
			not car.is_moving
		end

	output
		do
			print ("Robocar")
		end
end

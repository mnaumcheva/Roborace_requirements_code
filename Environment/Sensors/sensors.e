note
	description: "Racecar sensors"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$23/06/2021$"

deferred class
	SENSORS

feature

		-- The sensors are to be updated according to the racecar specification

	lidars: ARRAY [LIDAR]
		--Set of lidars

	radars: ARRAY [RADAR]
		--Set of radars

	cameras: ARRAY [CAMERA]
		--Set of cameras

	sonars: ARRAY [SONAR]
		--Set of sonars

	ins: INS
		--Inertial navigation system (GNSS and IMU)

	oss: OSS
		--Output Speed Sensor

end

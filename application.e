note
	description: "Roborace root class"
	author: "Maria Naumcheva"
	revision: "14/10/2024"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			print ("The Roborace Specification")
		end

end

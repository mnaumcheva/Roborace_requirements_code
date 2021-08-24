note
	description: "Color values for RGB color model"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$21/04/2021$"

deferred class
	RGB

feature
	red: INTEGER
		-- Red component 0-255
	green: INTEGER
		-- Green component 0-255
	blue: INTEGER
		-- Blue component 0-255

invariant
	correct_values: red>=0 and red < 256 and green >= 0 and green < 256 and blue >= 0 and blue < 256
end

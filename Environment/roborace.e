note
	description: "Roborace"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

class
	ROBORACE

feature

	green_flag: FLAG
	yellow_flag: FLAG
	red_flag: FLAG
	
    raise_yellow_flag
        require
            green_flag.is_up
        do
        ensure
            yellow_flag.is_up
            not green_flag.is_up
            not red_flag.is_up
        end

    raise_red_flag
        require
            green_flag.is_up or yellow_flag.is_up
        do
        ensure
            red_flag.is_up
            not green_flag.is_up
            not yellow_flag.is_up
        end
end

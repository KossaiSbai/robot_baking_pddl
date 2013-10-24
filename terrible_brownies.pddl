	(
	define (problem brownies)
  	(:domain robot_baking)
	(
		:objects 
			bowl_butter bowl_cocoa - container
			bowl_mixing - mixing-container
			sauce_pan - heating-container
			baking_sheet - baking-container
			counter - working-space
			oven - baking-space
			stove - heating-space
			butter cocoa - ingredient 

	)
  
  	(
		:init 
			(MIXABLE cocoa)
			(IN-SPACE bowl_butter counter)(IN-SPACE bowl_cocoa counter)(IN-SPACE baking_sheet oven)(IN-SPACE sauce_pan stove)(IN-SPACE bowl_mixing counter)
         		(IN-CONTAINER butter bowl_butter)(IN-CONTAINER cocoa bowl_cocoa)
			(= (burnt-val butter) 0)(= (burnt-val cocoa) 1)
	)

	(
		:goal 
		(
			and  (IN-SPACE baking_sheet counter)
			(BAKED butter)(BAKED cocoa)
			(< (burnt-val butter) 3)(< (burnt-val cocoa) 3)
		)
	)
)

	(
	define (problem brownies)
  	(:domain robot_baking)
	(
		:objects 
			bowl_butter bowl_cocoa bowl_sugar - container
			bowl_mixing - mixing-container
			sauce_pan - heating-container
			baking_sheet - baking-container
			counter - working-space
			oven - baking-space
			stove - heating-space
			butter cocoa sugar - ingredient 

	)
  
  	(
		:init 
			(MIXABLE cocoa)(MIXABLE sugar)
			(IN-SPACE bowl_butter counter)(IN-SPACE bowl_cocoa counter)(IN-SPACE bowl_sugar counter)(IN-SPACE baking_sheet oven)(IN-SPACE sauce_pan stove)(IN-SPACE bowl_mixing counter)
         		(IN-CONTAINER butter bowl_butter)(IN-CONTAINER cocoa bowl_cocoa)(IN-CONTAINER sugar bowl_sugar)
			(= (burnt-val butter) 0)(= (burnt-val cocoa) 1)(= (burnt-val sugar) 1)
	)

	(
		:goal 
		(
			and  (IN-SPACE baking_sheet counter)
			(BAKED butter)(BAKED cocoa)(BAKED sugar)
			(IN-CONTAINER butter baking_sheet)(IN-CONTAINER sugar baking_sheet)(IN-CONTAINER cocoa baking_sheet)
			(< (burnt-val butter) 3)(< (burnt-val cocoa) 3)(< (burnt-val sugar) 3)
		)
	)
)

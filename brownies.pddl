	(
	define (problem brownies)
  	(:domain robot_baking)
	(
		:objects 
			bowl_butter bowl_sugar bowl_eggs bowl_vanilla bowl_cocoa bowl_flour bowl_salt bowl_baking_powder - container
			bowl_mixing - mixing-container
			sauce_pan - heating-container
			baking_sheet - baking-container
			counter - working-space
			oven - baking-space
			stove - heating-space
			butter sugar eggs vanilla cocoa flour salt baking_powder - ingredient 

	)
  
  	(
		:init 
			(MIXABLE sugar)(MIXABLE eggs)(MIXABLE vanilla)(MIXABLE cocoa)(MIXABLE flour)(MIXABLE salt)(MIXABLE baking_powder)
			(IN-SPACE bowl_butter counter)(IN-SPACE bowl_sugar counter)(IN-SPACE bowl_eggs counter)(IN-SPACE bowl_vanilla counter)(IN-SPACE bowl_cocoa counter)(IN-SPACE bowl_flour counter)(IN-SPACE bowl_salt counter)(IN-SPACE bowl_baking_powder counter)(IN-SPACE baking_sheet oven)(IN-SPACE bowl_mixing counter)(IN-SPACE sauce_pan stove)
         		(IN-CONTAINER butter bowl_butter)(IN-CONTAINER sugar bowl_sugar)(IN-CONTAINER eggs bowl_eggs)(IN-CONTAINER vanilla bowl_vanilla)(IN-CONTAINER cocoa bowl_cocoa)(IN-CONTAINER flour bowl_flour)(IN-CONTAINER salt bowl_salt)(IN-CONTAINER baking_powder bowl_baking_powder)
			(= (burnt-val butter) 0)(= (burnt-val sugar) 1)(= (burnt-val eggs) 1)(= (burnt-val vanilla) 1)(= (burnt-val cocoa) 1)
			(= (burnt-val flour) 1)(= (burnt-val salt) 1)(= (burnt-val baking_powder) 1)
	)

	(
		:goal 
		(
			and  (IN-SPACE baking_sheet counter)
			(BAKED butter)(BAKED sugar)(BAKED eggs)(BAKED vanilla)(BAKED cocoa)(BAKED flour)(BAKED salt)(BAKED baking_powder)
			(= (burnt-val butter) 1)(= (burnt-val sugar) 1)(= (burnt-val eggs) 1)(= (burnt-val vanilla) 1)(= (burnt-val cocoa) 1)
			(= (burnt-val flour) 1)(= (burnt-val salt) 1)(= (burnt-val baking_powder) 1)
		)
	)
)

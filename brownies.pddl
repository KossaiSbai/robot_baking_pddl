(
	define (problem brownies)
  	(:domain robot_baking)
	(
		:objects 
			bowl_butter bowl_sugar bowl_eggs bowl_vanilla bowl_cocoa bowl_flour bowl_salt bowl_baking_powder - container
			bowl_mixing - mixing-container
			baking_sheet - baking-container
			counter - working-space
			oven - baking-space
			butter sugar eggs vanilla cocoa flour salt baking_powder - ingredient
	)
  
  	(
		:init 
			(IN-SPACE bowl_butter counter)(IN-SPACE bowl_sugar counter)(IN-SPACE bowl_eggs counter)(IN-SPACE bowl_vanilla counter)(IN-SPACE bowl_cocoa counter)(IN-SPACE bowl_flour counter)(IN-SPACE bowl_salt counter)(IN-SPACE bowl_baking_powder counter)(IN-SPACE baking_sheet counter)
         		(IN-CONTAINER butter bowl_butter)(IN-CONTAINER sugar bowl_sugar)(IN-CONTAINER eggs bowl_eggs)(IN-CONTAINER vanilla bowl_vanilla)(IN-CONTAINER cocoa bowl_cocoa)(IN-CONTAINER flour bowl_flour)(IN-CONTAINER salt bowl_salt)(IN-CONTAINER baking_powder bowl_baking_powder)
	)

	(
		:goal 
		(
			and (IN-SPACE baking_sheet oven)
            		(IN-CONTAINER butter baking_sheet) (IN-CONTAINER sugar baking_sheet) (IN-CONTAINER eggs baking_sheet) (IN-CONTAINER vanilla baking_sheet) (IN-CONTAINER cocoa baking_sheet) (IN-CONTAINER flour baking_sheet) (IN-CONTAINER salt baking_sheet) (IN-CONTAINER baking_powder baking_sheet)
		)
	)
)

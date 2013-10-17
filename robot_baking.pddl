(
	define (domain robot_baking)
	(:requirements :typing)
	(
		:types 	working-space baking-space - space
			baking-container mixing-container - container
	)


	(
		:predicates (IN-CONTAINER ?ingredient - ingredient ?container - container) (IN-SPACE ?container - container ?space - space) (MIXED ?ingredient - ingredient) (SIFTED ?ingredient - ingredient) (STRAINED ?ingredient - ingredient) (BAKED ?ingredient - ingredient)
	)

	(
		:action pour 
			:parameters (?ingredient - ingredient ?pouring-container - container ?receiving-container - container ?working-space - working-space)	
			:precondition 
			(
				and (IN-SPACE ?pouring-container ?working-space) (IN-SPACE ?receiving-container ?working-space)
                           	(IN-CONTAINER ?ingredient ?pouring-container)
			)
        		:effect 
			(
				and (IN-CONTAINER ?ingredient ?receiving-container)
                     		(NOT (IN-CONTAINER ?ingredient ?pouring-container))
			)
	)
	(
		:action move
			:parameters (?container - container ?from - space ?to - space)
			:precondition
			(
				and (IN-SPACE ?container ?from)
			)
			:effect
			(
				and (IN-SPACE ?container ?to)
				(NOT (IN-SPACE ?container ?from))
			)
	)
)



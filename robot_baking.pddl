(
	define (domain robot_baking)
	(
		:predicates (SPACE ?x) (CONTAINER ?x) (INGREDIENT ?x) (IN-CONTAINER ?x ?y) (IN-SPACE ?x ?y) (MIXED ?x) (SIFTED ?x) (STRAINED ?x) (BAKED ?x)
	)

	(
		:action pour 
			:parameters (?x ?y ?z)	
			:precondition 
			(
				and (and (CONTAINER ?x) (CONTAINER ?y) (INGREDIENT ?z))
                           	(IN-CONTAINER ?z ?x)
			)
        		:effect 
			(
				and (IN-CONTAINER ?z ?y)
                     		(NOT (IN-CONTAINER ?z ?x))
			)
	)
	(
		:action place-container
			:parameters (?x ?y ?z)
			:precondition
			(
				and (and (CONTAINER ?x) (SPACE ?y) (SPACE ?z))
				(IN-SPACE ?x ?y)
			)
			:effect
			(
				and (IN-SPACE ?x ?z)
				(NOT (IN-SPACE ?x ?y))
			)
	)
)



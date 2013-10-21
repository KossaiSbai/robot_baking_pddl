(
	define (domain test)
	(:requirements [:fluents])
	(
		:predicates (A ?x)(B ?x)(C ?x)
	)
	(:functions
		(val ?x)
		(val2 ?x)
		(val3 ?x))
	(
		:action plus5
			:parameters (?x)
			:effect
			(
				and
				(increase (val2 ?x) 1)
				(increase (val ?x) (val3 ?x) / ((val2 ?x) * (val2 ?x)))
			)
	)
	
)



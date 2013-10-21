(
	define (domain robot_baking)
	(:requirements :typing :fluents)
	(
		:types 	working-space baking-space - space
			heating-space - space
			heating-container baking-container mixing-container - container	
	)
	(:functions 
		(burnt-val ?x)
	)
	(
		:predicates (IN-BATTER ?ingredient - ingredient) (IN-CONTAINER ?ingredient - ingredient ?container - container) (IN-SPACE ?container - container ?space - space) (MIXABLE ?ingredient - ingredient) (BAKED ?ingredient - ingredient) (HEATED ?ingredient - ingredient)
	)

	(
		:action pour 
			:parameters (?pouring-container - container ?receiving-container - container ?working-space - working-space)	
			:precondition 
			(
				and (IN-SPACE ?pouring-container ?working-space) (IN-SPACE ?receiving-container ?working-space)
			)
        		:effect
			(
				forall (?ingredient - ingredient)
				(
					when
					(
						and (IN-CONTAINER ?ingredient ?pouring-container)
					)
					(
						and (IN-CONTAINER ?ingredient ?receiving-container)
						(not (IN-CONTAINER ?ingredient ?pouring-container))
					)
				)
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
	(
		:action mix
			:parameters (?container - mixing-container ?working-space - working-space)
			:precondition (and (IN-SPACE ?container ?working-space))
			:effect
			(
				and
				(
					forall (?ingredient - ingredient)
					(
						when 
						(
							and (IN-CONTAINER ?ingredient ?container) (MIXABLE ?ingredient)
						)
						(
							and (IN-BATTER ?ingredient)
						)
					)
				)
			)
	)
	(
		:action heat
			:parameters (?container - heating-container ?heating-space - heating-space)
			:precondition 
			(
				and 
				(IN-SPACE ?container ?heating-space)
			)
			:effect
			 
			 
			(
				forall (?ingredient - ingredient)
				(
					and (HEATED ?ingredient)(MIXABLE ?ingredient)
					(increase (burnt-val ?ingredient) 1)
				)
			)
	)
	(
		:action bake
			:parameters (?baking-container - baking-container ?baking-space - baking-space)
			:precondition 
			(
				and (IN-SPACE ?baking-container ?baking-space)
			)
			:effect
			(
				forall (?ingredient - ingredient)
				(
					when
					(
						and (IN-CONTAINER ?ingredient ?baking-container) (IN-BATTER ?ingredient)
					)
					(
						and (BAKED ?ingredient)
					)
				)
			)
	)
)



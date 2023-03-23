PokemonMansion3FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 35, DITTO  ;Harzen 23/03/2023
	db 36, DITTO  ;Harzen 23/03/2023
	db 32, DITTO  ;Harzen 23/03/2023
	db 32, PONYTA
	db 34, PONYTA
	db 40, WEEZING
	db 34, GRIMER
	db 38, DITTO ;Harzen 23/03/2023
	db 36, PONYTA
	db 42, MUK
ENDC
IF DEF(_BLUE)
	db 35, DITTO  ;Harzen 23/03/2023
	db 36, DITTO  ;Harzen 23/03/2023
	db 32, DITTO  ;Harzen 23/03/2023
	db 32, PONYTA
	db 34, MAGMAR
	db 40, MUK
	db 34, KOFFING
	db 38, DITTO ;Harzen 23/03/2023
	db 36, PONYTA
	db 42, WEEZING
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

PokemonMansionB1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 36, DITTO  ;Harzen 23/03/2023
	db 38, DITTO  ;Harzen 23/03/2023
	db 36, DITTO  ;Harzen 23/03/2023
	db 32, PONYTA
	db 31, KOFFING
	db 40, WEEZING
	db 34, PONYTA
	db 35, GRIMER
	db 42, DITTO ;Harzen 23/03/2023
	db 42, MAGMAR ;Harzen 18/03/2023
ENDC
IF DEF(_BLUE)
	db 36, DITTO  ;Harzen 23/03/2023
	db 38, DITTO  ;Harzen 23/03/2023
	db 36, DITTO  ;Harzen 23/03/2023
	db 32, PONYTA
	db 31, GRIMER
	db 40, MUK
	db 34, PONYTA
	db 35, KOFFING
	db 38, MAGMAR
	db 40, MAGMAR ;Harzen 23/03/2023
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

PokemonMansion1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 32, KOFFING
	db 30, DITTO ;Harzen 23/03/2023
	db 34, DITTO ;Harzen 23/03/2023
	db 30, DITTO ;Harzen 23/03/2023
	db 34, GROWLITHE
	db 32, PONYTA
	db 30, GRIMER
	db 28, PONYTA
	db 37, WEEZING
	db 39, MUK
ENDC
IF DEF(_BLUE)
	db 32, GRIMER
	db 30, DITTO ;Harzen 23/03/2023
	db 34, DITTO ;Harzen 23/03/2023
	db 30, DITTO ;Harzen 23/03/2023
	db 34, VULPIX
	db 32, PONYTA
	db 30, KOFFING
	db 28, PONYTA
	db 37, MUK
	db 39, WEEZING
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

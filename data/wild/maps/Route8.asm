Route8WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 18, PIDGEY
IF DEF(_RED)
	db 18, GRIMER ;Harzen 23/03/2023
	db 17, KOFFING ;Harzen 23/03/2023
	db 16, GROWLITHE
	db 20, PIDGEY
	db 20, MANKEY
	db 19, EKANS
	db 17, GROWLITHE
	db 15, VULPIX ;Harzen 18/03/2023
	db 18, GROWLITHE
ENDC
IF DEF(_BLUE)
	db 18, KOFFING ;Harzen 23/03/2023
	db 17, GRIMER ;Harzen 23/03/2023
	db 16, VULPIX
	db 20, PIDGEY
	db 20, MEOWTH
	db 19, SANDSHREW
	db 17, VULPIX
	db 15, GROWLITHE ;Harzen 18/03/2023
	db 18, VULPIX
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

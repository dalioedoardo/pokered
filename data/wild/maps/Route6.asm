Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 18, GRIMER ;Harzen 23/03/2023
	db 17, KOFFING ;Harzen 23/03/2023
	db 15, GRIMER ;Harzen 23/03/2023
	db 10, MANKEY
	db 12, MANKEY
	db 15, ODDISH
	db 16, ODDISH
	db 16, PIDGEY
	db 14, MEOWTH ;Harzen 18/03/2023
	db 16, MANKEY
ENDC
IF DEF(_BLUE)
	db 18, KOFFING ;Harzen 23/03/2023
	db 17, GRIMER ;Harzen 23/03/2023
	db 15, KOFFING ;Harzen 23/03/2023
	db 10, MEOWTH
	db 12, MEOWTH
	db 15, BELLSPROUT
	db 16, BELLSPROUT
	db 16, PIDGEY
	db 14, MANKEY ;Harzen 18/03/2023
	db 16, MEOWTH
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

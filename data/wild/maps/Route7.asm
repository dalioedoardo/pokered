Route7WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 18, KOFFING ;Harzen 23/03/2023
	db 17, GRIMER ;Harzen 23/03/2023
	db 22, ODDISH
	db 22, PIDGEY
	db 18, MANKEY
	db 18, GROWLITHE
	db 20, GROWLITHE
	db 19, MANKEY
	db 20, MANKEY
ENDC
IF DEF(_BLUE)
	db 18, GRIMER ;Harzen 23/03/2023
	db 17, KOFFING ;Harzen 23/03/2023
	db 22, BELLSPROUT
	db 22, PIDGEY
	db 18, MEOWTH
	db 18, VULPIX
	db 20, VULPIX
	db 19, MEOWTH
	db 20, MEOWTH
ENDC
	db 20, EEVEE ;Harzen 18/03/2023
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

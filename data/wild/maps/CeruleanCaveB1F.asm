CeruleanCaveB1FWildMons:
	def_grass_wildmons 25 ; encounter rate
	db 65, NIDOKING
	db 65, NIDOQUEEN
	db 62, CHARIZARD
IF DEF(_RED)
	db 57, SANDSLASH
	db 58, PERSIAN
	db 60, NINETALES
	db 61, VICTREEBEL
ENDC
IF DEF(_BLUE)
	db 57, ARBOK
	db 58, PRIMEAPE
	db 60, ARCANINE
	db 61, VILEPLUME
ENDC
	db 64, TAUROS
	db 65, GENGAR
	db 68, DRAGONITE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons

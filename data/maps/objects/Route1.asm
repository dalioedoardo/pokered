Route1_Object:
	db $b ; border block

	def_warp_events

	def_bg_events
	bg_event  9, 27, 4 ; Route1Text3

	def_object_events
	object_event  5, 24, SPRITE_YOUNGSTER, WALK, UP_DOWN, 1 ; person
	object_event 15, 13, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, 2 ; person
	object_event 12, 14, SPRITE_YOUNGSTER, WALK, UP_DOWN, 3, OPP_YOUNGSTER, 1 ; person ; harzen 12/03/2023

	def_warps_to ROUTE_1

	; unused
	warp_to 2, 7, 4

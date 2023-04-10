TypeEffects:
	;  attacker,     defender,     *=
	db WATER,        WATER,        NOT_VERY_EFFECTIVE
  db WATER,        FIRE,         SUPER_EFFECTIVE
	db WATER,        ROCK,         SUPER_EFFECTIVE
	db WATER,        ICE,          NOT_VERY_EFFECTIVE ;harzen 03/04/2023
	db WATER,        GRASS,        NOT_VERY_EFFECTIVE
	db WATER,        GROUND,       NOT_VERY_EFFECTIVE  ;Harzen 03/04/2023
	db WATER,        DRAGON,       NOT_VERY_EFFECTIVE
	db FIRE,         FIRE,         NOT_VERY_EFFECTIVE
	db FIRE,         GRASS,        SUPER_EFFECTIVE
	db FIRE,         ICE,          SUPER_EFFECTIVE
	db FIRE,         WATER,        NOT_VERY_EFFECTIVE
	db FIRE,         BUG,          SUPER_EFFECTIVE
	db FIRE,         ROCK,         NOT_VERY_EFFECTIVE
  db FIRE,         GROUND,       NOT_VERY_EFFECTIVE  ;Harzen 03/04/2023
	db FIRE,         DRAGON,       NOT_VERY_EFFECTIVE
	db GRASS,        GRASS,        NOT_VERY_EFFECTIVE
  db GRASS,        WATER,        SUPER_EFFECTIVE
	db GRASS,        FIRE,         NOT_VERY_EFFECTIVE
	db GRASS,        GROUND,       SUPER_EFFECTIVE
	db GRASS,        BUG,          NOT_VERY_EFFECTIVE
	db GRASS,        POISON,       NOT_VERY_EFFECTIVE
	;db GRASS,        ROCK,         SUPER_EFFECTIVE  ;Harzen 03/04/2023 commentata
	;db GRASS,        FLYING,       NOT_VERY_EFFECTIVE ;Harzen 03/2023 commentata
	db ELECTRIC,     WATER,        SUPER_EFFECTIVE
	db GROUND,       FLYING,       NO_EFFECT
	db ELECTRIC,     ELECTRIC,     NOT_VERY_EFFECTIVE
	db ICE,          ICE,          NOT_VERY_EFFECTIVE
  db ICE,          ROCK,         NOT_VERY_EFFECTIVE ;Harzen 03/04/2023
	db PSYCHIC_TYPE, PSYCHIC_TYPE, NOT_VERY_EFFECTIVE
	db ELECTRIC,     GRASS,        NOT_VERY_EFFECTIVE
	db NORMAL,       ROCK,         NOT_VERY_EFFECTIVE
  db NORMAL,       BUG,          NOT_VERY_EFFECTIVE ;Harzen 10/04/2023
	db NORMAL,       GHOST,        NO_EFFECT
	db GHOST,        GHOST,        SUPER_EFFECTIVE
  db PSYCHIC_TYPE, GHOST,				 NOT_VERY_EFFECTIVE ;Harzen 10/04/2023
	db ELECTRIC,     GROUND,       NO_EFFECT
	db ELECTRIC,     FLYING,       SUPER_EFFECTIVE
	db ICE,          WATER,        NOT_VERY_EFFECTIVE
	db ICE,          GRASS,        SUPER_EFFECTIVE
	db ICE,          GROUND,       SUPER_EFFECTIVE
	db ICE,          FLYING,       SUPER_EFFECTIVE
	db ICE,          FIRE,         NOT_VERY_EFFECTIVE ;Harzen 03/04/2023
	db FIGHTING,     NORMAL,       SUPER_EFFECTIVE
	db FIGHTING,     POISON,       NOT_VERY_EFFECTIVE
	db FIGHTING,     FLYING,       NOT_VERY_EFFECTIVE
	db FIGHTING,     PSYCHIC_TYPE, NOT_VERY_EFFECTIVE
	db FIGHTING,     BUG,          NOT_VERY_EFFECTIVE
	db FIGHTING,     ROCK,         SUPER_EFFECTIVE
	db FIGHTING,     ICE,          SUPER_EFFECTIVE
	db FIGHTING,     GHOST,        NO_EFFECT
	db FIGHTING,     WATER,        NOT_VERY_EFFECTIVE ;Harzen 03/04/2023
	db POISON,       GRASS,        SUPER_EFFECTIVE
	db POISON,       POISON,       NOT_VERY_EFFECTIVE
	db POISON,       GROUND,       SUPER_EFFECTIVE ;Harzen 03/04/2023 cambiata da not_very_effective a super_effective
	;db POISON,      BUG,          SUPER_EFFECTIVE ;Harzen 03/04/2023 commentata
	db POISON,       WATER,        SUPER_EFFECTIVE ;Harzen 03/04/2023
	db POISON,       ROCK,         NOT_VERY_EFFECTIVE
	db POISON,       GHOST,        NOT_VERY_EFFECTIVE
	db GROUND,       FIRE,         SUPER_EFFECTIVE
	db GROUND,       ELECTRIC,     SUPER_EFFECTIVE
	db GROUND,       GRASS,        NOT_VERY_EFFECTIVE
	db GROUND,       BUG,          NOT_VERY_EFFECTIVE
	db GROUND,       ROCK,         SUPER_EFFECTIVE
	db GROUND,       POISON,       SUPER_EFFECTIVE
	db FLYING,       ELECTRIC,     NOT_VERY_EFFECTIVE
	db FLYING,       FIGHTING,     SUPER_EFFECTIVE
	db FLYING,       BUG,          SUPER_EFFECTIVE
	db FLYING,       GRASS,        SUPER_EFFECTIVE
	db FLYING,       ROCK,         NOT_VERY_EFFECTIVE
	db PSYCHIC_TYPE, FIGHTING,     SUPER_EFFECTIVE
	db PSYCHIC_TYPE, POISON,       SUPER_EFFECTIVE
	db BUG,          FIRE,         NOT_VERY_EFFECTIVE
	db BUG,          GRASS,        SUPER_EFFECTIVE
	;db BUG,          FIGHTING,     NOT_VERY_EFFECTIVE ;Harzen 03/04/2023 commentata
	db BUG,          FLYING,       NOT_VERY_EFFECTIVE
	db BUG,          PSYCHIC_TYPE, SUPER_EFFECTIVE
	;db BUG,          GHOST,        NOT_VERY_EFFECTIVE  ;Harzen 10/04/2023 commentata
	;db BUG,          POISON,       SUPER_EFFECTIVE  ;Harzen 10/04/2023 commentata
	db BUG,          ROCK,         NOT_VERY_EFFECTIVE ;Harzen 03/04/2023
	db ROCK,         FIRE,         SUPER_EFFECTIVE
	db ROCK,         FIGHTING,     NOT_VERY_EFFECTIVE
	db ROCK,         GROUND,       NOT_VERY_EFFECTIVE
	db ROCK,         FLYING,       SUPER_EFFECTIVE
	db ROCK,         BUG,          SUPER_EFFECTIVE
	db ROCK,         ICE,          SUPER_EFFECTIVE
	db GHOST,        NORMAL,       NO_EFFECT
	db GHOST,        PSYCHIC_TYPE, SUPER_EFFECTIVE ;Harzen 03/04/2023
	;db ELECTRIC,     DRAGON,       NOT_VERY_EFFECTIVE ;Harzen 03/04/2023 commentata
	db GRASS,        DRAGON,       NOT_VERY_EFFECTIVE
	db ICE,          DRAGON,       SUPER_EFFECTIVE
	db DRAGON,       DRAGON,       SUPER_EFFECTIVE
  db PSYCHIC_TYPE, BUG,					 NO_EFFECT ;Harzen 03/04/2023
	db -1 ; end

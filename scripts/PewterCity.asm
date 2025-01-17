PewterCity_Script:
	call EnableAutoTextBoxDrawing
	ld hl, PewterCity_ScriptPointers
	ld a, [wPewterCityCurScript]
	jp CallFunctionInTable

PewterCity_ScriptPointers:
	dw PewterCityScript0
	dw PewterCityScript1
	dw PewterCityScript2
	dw PewterCityScript3
	dw PewterCityScript4
	dw PewterCityScript5
	dw PewterCityScript6

PewterCityScript0:
	xor a
	ld [wMuseum1FCurScript], a
	ResetEvent EVENT_BOUGHT_MUSEUM_TICKET
	call PewterCityScript_1925e
	ret

PewterCityScript_1925e:
	CheckEvent EVENT_BEAT_BROCK
	ret nz
IF DEF(_DEBUG)
	call DebugPressedOrHeldB
	ret nz
ENDC
	ld hl, CoordsData_19277
	call ArePlayerCoordsInArray
	ret nc
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, $5
	ldh [hSpriteIndexOrTextID], a
	jp DisplayTextID

CoordsData_19277:
	dbmapcoord 35, 17
	dbmapcoord 36, 17
	dbmapcoord 37, 18
	dbmapcoord 37, 19
	db -1 ; end

PewterCityScript1:
	ld a, [wNPCMovementScriptPointerTableNum]
	and a
	ret nz
	ld a, $3
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_UP
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, ($3 << 4) | SPRITE_FACING_UP
	ldh [hSpriteImageIndex], a
	call SetSpriteImageIndexAfterSettingFacingDirection
	call PlayDefaultMusic
	ld hl, wFlags_0xcd60
	set 4, [hl]
	ld a, $d
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $3c
	ldh [hSpriteScreenYCoord], a
	ld a, $30
	ldh [hSpriteScreenXCoord], a
	ld a, 12
	ldh [hSpriteMapYCoord], a
	ld a, 17
	ldh [hSpriteMapXCoord], a
	ld a, $3
	ld [wSpriteIndex], a
	call SetSpritePosition1
	ld a, $3
	ldh [hSpriteIndex], a
	ld de, MovementData_PewterMuseumGuyExit
	call MoveSprite
	ld a, $2
	ld [wPewterCityCurScript], a
	ret

MovementData_PewterMuseumGuyExit:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

PewterCityScript2:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_MUSEUM_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, $3
	ld [wPewterCityCurScript], a
	ret

PewterCityScript3:
	ld a, $3
	ld [wSpriteIndex], a
	call SetSpritePosition2
	ld a, HS_MUSEUM_GUY
	ld [wMissableObjectIndex], a
	predef ShowObject
	xor a
	ld [wJoyIgnore], a
	ld a, $0
	ld [wPewterCityCurScript], a
	ret

PewterCityScript4:
	ld a, [wNPCMovementScriptPointerTableNum]
	and a
	ret nz
	ld a, $5
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, ($1 << 4) | SPRITE_FACING_LEFT
	ldh [hSpriteImageIndex], a
	call SetSpriteImageIndexAfterSettingFacingDirection
	call PlayDefaultMusic
	ld hl, wFlags_0xcd60
	set 4, [hl]
	ld a, $e
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $3c
	ldh [hSpriteScreenYCoord], a
	ld a, $40
	ldh [hSpriteScreenXCoord], a
	ld a, 22
	ldh [hSpriteMapYCoord], a
	ld a, 16
	ldh [hSpriteMapXCoord], a
	ld a, $5
	ld [wSpriteIndex], a
	call SetSpritePosition1
	ld a, $5
	ldh [hSpriteIndex], a
	ld de, MovementData_PewterGymGuyExit
	call MoveSprite
	ld a, $5
	ld [wPewterCityCurScript], a
	ret

MovementData_PewterGymGuyExit:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db -1 ; end

PewterCityScript5:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_GYM_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, $6
	ld [wPewterCityCurScript], a
	ret

PewterCityScript6:
	ld a, $5
	ld [wSpriteIndex], a
	call SetSpritePosition2
	ld a, HS_GYM_GUY
	ld [wMissableObjectIndex], a
	predef ShowObject
	xor a
	ld [wJoyIgnore], a
	ld a, $0
	ld [wPewterCityCurScript], a
	ret

PewterCity_TextPointers:
	dw PewterCityText1
	dw PewterCityText2
	dw PewterCityText3
	dw PewterCityText4
	dw PewterCityText5
	dw PewterCityText6
	dw PewterCityText7
	dw MartSignText
	dw PokeCenterSignText
	dw PewterCityText10
	dw PewterCityText11
	dw PewterCityText12
	dw PewterCityText13
	dw PewterCityText14

PewterCityText1:
	text_far _PewterCityText1
	text_end

PewterCityText2:
	text_far _PewterCityText2
	text_end

PewterCityText3:
	text_asm
	ld hl, PewterCityText_193f1
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .playerDidNotGoIntoMuseum
	ld hl, PewterCityText_193f6
	call PrintText
	jr .done
.playerDidNotGoIntoMuseum
	ld hl, PewterCityText_193fb
	call PrintText
	xor a
	ldh [hJoyPressed], a
	ldh [hJoyHeld], a
	ld [wNPCMovementScriptFunctionNum], a
	ld a, $2
	ld [wNPCMovementScriptPointerTableNum], a
	ldh a, [hLoadedROMBank]
	ld [wNPCMovementScriptBank], a
	ld a, $3
	ld [wSpriteIndex], a
	call GetSpritePosition2
	ld a, $1
	ld [wPewterCityCurScript], a
.done
	jp TextScriptEnd

PewterCityText_193f1:
	text_far _PewterCityText_193f1
	text_end

PewterCityText_193f6:
	text_far _PewterCityText_193f6
	text_end

PewterCityText_193fb:
	text_far _PewterCityText_193fb
	text_end

PewterCityText13:
	text_far _PewterCityText13
	text_end

; per aggiustare il mio .sgm!!
;PewterCityText4:
;	text_asm
;	ResetEvent EVENT_BEAT_MANSION_2_TRAINER_0 ; DA TOGLIERE SUBITO!
;	ResetEvent EVENT_BEAT_ROUTE_10_TRAINER_3 ; DA TOGLIERE SUBITO!
;	ResetEvent EVENT_BEAT_ROUTE_12_TRAINER_0 ; DA TOGLIERE SUBITO!
;	ld a, HS_POKEMON_MANSION_2F_ASSISTANT ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	ld [wMissableObjectIndex], a ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	predef ShowObject ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	ld a, HS_EDO ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	ld [wMissableObjectIndex], a ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	predef HideObject ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	ld a, HS_NILOX ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	ld [wMissableObjectIndex], a ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	predef HideObject ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	ld a, HS_LEO ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	ld [wMissableObjectIndex], a ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	predef HideObject ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	ld a, HS_ELIA ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	ld [wMissableObjectIndex], a ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	predef HideObject ; DA TOGLIERE NELLA VERSIONE DEFINITIVA, SERVE SOLO PER TESTARE
;	jp TextScriptEnd

PewterCityText4:
	text_asm
	CheckEvent EVENT_GOT_MEW
	jr nz, .alreadyGotMew
	CheckEvent EVENT_BEAT_MANSION_2_TRAINER_0
	jr nz, .alreadyBeatenPiccia
	CheckEvent EVENT_BEAT_MEWTWO
	jr nz, .alreadyBeatenMewtwo
	ld hl, .notBeatenMewtwoText
	call PrintText
	jr .done
.alreadyBeatenMewtwo
	ld hl, .alreadyBeatenMewtwoText
	call PrintText
	ld a, HS_EDO
	ld [wMissableObjectIndex], a
	predef ShowObject
	jr .done
.alreadyBeatenPiccia
	ld hl, .alreadyBeatenPicciaText
	call PrintText
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jp z, .done ; questo evita di farmi prendere Mew se ho il party pieno
	lb bc, MEW, 5
	call GivePokemon
	jr nc, .done ; questo evita di settare l'evento se non ho preso Mew in squadra
	SetEvent EVENT_GOT_MEW
	jr .done
.alreadyGotMew
	ld hl, .alreadyGotMewtext
	call PrintText
	jr .done
.done
	jp TextScriptEnd

.alreadyGotMewtext
	text_far _PewterCityText_19438
	text_end
.alreadyBeatenPicciaText
	text_far _PewterCityText_19431
	text_end
.alreadyBeatenMewtwoText
	text_far _PewterCityText_1942c
	text_end
.notBeatenMewtwoText
	text_far _PewterCityText_19427
	text_end









PewterCityText_19427:
	text_far _PewterCityText_19427
	text_end

PewterCityText_1942c:
	text_far _PewterCityText_1942c
	text_end

PewterCityText_19431:
	text_far _PewterCityText_19431
	text_end

PewterCityText5:
	text_asm
	ld hl, PewterCityText_1945d
	call PrintText
	xor a
	ldh [hJoyHeld], a
	ld [wNPCMovementScriptFunctionNum], a
	ld a, $3
	ld [wNPCMovementScriptPointerTableNum], a
	ldh a, [hLoadedROMBank]
	ld [wNPCMovementScriptBank], a
	ld a, $5
	ld [wSpriteIndex], a
	call GetSpritePosition2
	ld a, $4
	ld [wPewterCityCurScript], a
	jp TextScriptEnd

PewterCityText_1945d:
	text_far _PewterCityText_1945d
	text_end

PewterCityText14:
	text_far _PewterCityText14
	text_end

PewterCityText6:
	text_far _PewterCityText6
	text_end

PewterCityText7:
	text_far _PewterCityText7
	text_end

PewterCityText10:
	text_far _PewterCityText10
	text_end

PewterCityText11:
	text_far _PewterCityText11
	text_end

PewterCityText12:
	text_far _PewterCityText12
	text_end

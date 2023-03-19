PewterNidoranHouse_Script:
	jp EnableAutoTextBoxDrawing

PewterNidoranHouse_TextPointers:
	dw PewterHouse1Text1
	dw PewterHouse1Text2
	dw PewterHouse1Text3

PewterHouse1Text1:
	text_far _PewterHouse1Text1
	text_asm
	ld a, NIDORAN_M
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

PewterHouse1Text2:
	text_far _PewterHouse1Text2
	text_end

PewterHouse1Text3:
	text_asm
	CheckEvent EVENT_GOT_HELIX_FOSSIL
	jr nz, .alreadyGotHelix
	CheckEvent EVENT_GOT_DOME_FOSSIL
	jr nz, .alreadyGotDome
	ld hl, .noFossilTakenYetText
	jr .done
.alreadyGotHelix
	CheckEvent EVENT_GOT_DOME_FOSSIL
	jr nz, .alreadyGotBothFossils
	ld hl, .giveFossilText
	call PrintText
	lb bc, DOME_FOSSIL, 1
	call GiveItem
	jr nc, .bag_full
	SetEvent EVENT_GOT_DOME_FOSSIL
	ld hl, .text_1cae8 ;trainer got +++! text
	jr .done
.alreadyGotDome
	CheckEvent EVENT_GOT_HELIX_FOSSIL
	jr nz, .alreadyGotBothFossils
	ld hl, .giveFossilText
	call PrintText
	lb bc, HELIX_FOSSIL, 1
	call GiveItem
	jr nc, .bag_full
	SetEvent EVENT_GOT_HELIX_FOSSIL
	ld hl, .text_1cae8 ;trainer got +++! text
	jr .done
.bag_full
	ld hl, .text_1caf3 ;bag_full text
	jr .done
.alreadyGotBothFossils
	ld hl, .text_1caee ;already got both fossils
	jr .done
.done
	call PrintText
	jp TextScriptEnd

.text_1caee	
	text_far _PewterHouse1Text3_1caee
	text_end
.text_1caf3	
	text_far _PewterHouse1Text3_1caf3
	text_end	
.text_1cae8
	text_far _PewterHouse1Text3_1cae8
	text_end
.giveFossilText
	text_far _PewterHouse1Text3_takeThisFossil
	text_end
.noFossilTakenYetText
	text_far _PewterHouse1Text3_notYet
	text_end

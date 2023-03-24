TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
	; Harzen 22/03/2023 modificati tutti i soprannomi
	db CHARMELEON, FLAREON,   TRADE_DIALOGSET_EVOLUTION, "FLAREON@@@@" ;Harzen 22/03/2023 sostituito NIDORINO, NIDORINA
	db KADABRA,    MR_MIME,   TRADE_DIALOGSET_CASUAL,    "MR.MIME@@@@" ;Harzen 22/03/2023 sostituito ABRA, MR_MIME
	db BUTTERFREE, BEEDRILL,  TRADE_DIALOGSET_HAPPY,     "BEEDRILL@@@" ; unused
	db ELECTABUZZ, MAGMAR,    TRADE_DIALOGSET_CASUAL,    "MAGMAR@@@@@" ;Harzen 22/03/2023 sostituito PONYTA, SEEL -> QUESTO SCAMBIO AIUTA LA VERSIONE ROSSA 
	db WIGGLYTUFF, FARFETCHD, TRADE_DIALOGSET_HAPPY,     "FARFETCH'D@" ;Harzen 22/03/2023 sostituito SPEAROW, FARFETCH'D
	db CHANSEY,    LICKITUNG, TRADE_DIALOGSET_CASUAL,    "LICKITUNG@@" ;Harzen 22/03/2023 sostituito SLOWBRO, LICKITUNG
	db WARTORTLE,  JYNX,      TRADE_DIALOGSET_CASUAL,    "JYNX@@@@@@@" ;Harzen 22/03/2023 sostituito POLIWHIRL, JYNX
	db IVYSAUR,    DRATINI,   TRADE_DIALOGSET_HAPPY,     "DRATINI@@@@" ;Harzen 22/03/2023 sostituito RAICHU, ELECTRODE
	db PINSIR,     SCYTHER,   TRADE_DIALOGSET_HAPPY,     "SCYTHER@@@@" ;Harzen 22/03/2023 sostituito VENONAT, TANGELA -> QUESTO SCAMBIO AIUTA MOLTO LA VERSIONE BLU
	db MANKEY,     MEOWTH,    TRADE_DIALOGSET_EVOLUTION, "MEOWTH@@@@@" ;Harzen 22/03/2023 sostituito NIDORAN_M, NIDORAN_F -> QUESTO SCAMBIO AIUTA LA VERSIONE ROSSA 
	assert_table_length NUM_NPC_TRADES

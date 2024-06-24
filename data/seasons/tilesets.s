; See data/ages/tilesets.s for documentation.
;
; The only difference from ages is that there can be seasonal tilesets which are simply pointers to
; a group of 4 tileset definitions for the 4 seasons. The data itself is the same.

.macro m_SeasonalTileset ; Tilesets which use this have different data for each season
	.db $ff
	.dw \1
	.dsb 5 0
.endm

tilesetData:
	m_SeasonalTileset tileset00Seasons ; 0x00
	m_SeasonalTileset tileset01Seasons ; 0x01
	m_SeasonalTileset tileset02Seasons ; 0x02
	m_SeasonalTileset tileset03Seasons ; 0x03
	m_SeasonalTileset tileset04Seasons ; 0x04
	m_SeasonalTileset tileset05Seasons ; 0x05
	m_SeasonalTileset tileset06Seasons ; 0x06
	m_SeasonalTileset tileset07Seasons ; 0x07
	m_SeasonalTileset tileset08Seasons ; 0x08
	m_SeasonalTileset tileset09Seasons ; 0x09
	m_SeasonalTileset tileset0aSeasons ; 0x0a
	m_SeasonalTileset tileset0bSeasons ; 0x0b
	m_SeasonalTileset tileset0cSeasons ; 0x0c
	m_SeasonalTileset tileset0dSeasons ; 0x0d
	m_SeasonalTileset tileset0eSeasons ; 0x0e
	m_SeasonalTileset tileset0fSeasons ; 0x0f
	m_SeasonalTileset tileset10Seasons ; 0x10
	m_SeasonalTileset tileset11Seasons ; 0x11
	m_SeasonalTileset tileset12Seasons ; 0x12
	m_SeasonalTileset tileset13Seasons ; 0x13
	m_SeasonalTileset tileset14Seasons ; 0x14
	m_SeasonalTileset tileset15Seasons ; 0x15
	m_SeasonalTileset tileset16Seasons ; 0x16
	m_SeasonalTileset tileset17Seasons ; 0x17
	m_SeasonalTileset tileset18Seasons ; 0x18
	m_SeasonalTileset tileset19Seasons ; 0x19
	m_SeasonalTileset tileset1aSeasons ; 0x1a

	; 0x1b
	.db $0f, $01
	.db UNIQUE_GFXH_SAMASA_DESERT
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_10
	.db $11, $01, $04

	; 0x1c
	.db $0f, $01
	.db UNIQUE_GFXH_SAMASA_DESERT_PIRATE_SHIP
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_10
	.db $12, $01, $05

	; 0x1d
	.db $0f, $01
	.db UNIQUE_GFXH_SAMASA_DESERT
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_10
	.db $35, $01, $04

	; 0x1e
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_TARM_RUINS_PEDESTAL
	.db SEASONS_PALH_56
	.db $0e, $01, $03

	; 0x1f
	.db $0f, $01
	.db UNIQUE_GFXH_1f
	.db GFXH_TILESET_BIGGORON
	.db SEASONS_PALH_54
	.db $0b, $03, $0d

	; 0x20
	.db $1f, $81
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SUBROSIA
	.db SEASONS_PALH_5a
	.db $1c, $04, $10

	; 0x21
	.db $1f, $81
	.db UNIQUE_GFXH_TEMPLE_OF_SEASONS_OUTSIDE
	.db GFXH_TILESET_SUBROSIA
	.db SEASONS_PALH_58
	.db $1b, $04, $10

	; 0x22
	.db $1f, $81
	.db UNIQUE_GFXH_TEMPLE_OF_SEASONS_OUTSIDE
	.db GFXH_TILESET_SUBROSIA
	.db SEASONS_PALH_59
	.db $1b, $04, $10

	; 0x23
	.db $1f, $81
	.db UNIQUE_GFXH_TEMPLE_OF_SEASONS_OUTSIDE
	.db GFXH_TILESET_SUBROSIA
	.db SEASONS_PALH_5f
	.db $1b, $04, $10

	; 0x24
	.db $1f, $81
	.db UNIQUE_GFXH_SUBROSIA
	.db GFXH_TILESET_SUBROSIA
	.db SEASONS_PALH_5a
	.db $1c, $04, $10

	; 0x25
	.db $1f, $81
	.db UNIQUE_GFXH_SUBROSIA_VILLAGE
	.db GFXH_TILESET_SUBROSIA
	.db SEASONS_PALH_5b
	.db $1d, $04, $10

	; 0x26
	.db $1f, $81
	.db UNIQUE_GFXH_SUBROSIAN_SMITHY_OUTSIDE
	.db GFXH_TILESET_SUBROSIA
	.db SEASONS_PALH_5c
	.db $1e, $04, $10

	; 0x27
	.db $1f, $81
	.db UNIQUE_GFXH_SUBROSIAN_MARKET_OUTSIDE
	.db GFXH_TILESET_SUBROSIA
	.db SEASONS_PALH_5d
	.db $1f, $04, $10

	; 0x28
	.db $1f, $81
	.db UNIQUE_GFXH_SUBROSIA_PIRATE_SHIP
	.db GFXH_TILESET_SUBROSIA
	.db SEASONS_PALH_5e
	.db $20, $04, $11

	; 0x29
	.db $2f, $02
	.db UNIQUE_GFXH_MAKU_TREE_BOTTOM
	.db GFXH_TILESET_MAKU_TREE
	.db SEASONS_PALH_50
	.db $33, $04, $ff

	; 0x2a
	.db $2f, $02
	.db UNIQUE_GFXH_MAKU_TREE_TOP
	.db GFXH_TILESET_MAKU_TREE
	.db SEASONS_PALH_50
	.db $33, $04, $ff

	; 0x2b
	.db $2f, $02
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_MAKU_TREE_SMALL
	.db SEASONS_PALH_51
	.db $34, $04, $ff

	; 0x2c
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_INDOORS
	.db SEASONS_PALH_70
	.db $2e, $04, $18

	; 0x2d
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_INDOORS
	.db SEASONS_PALH_71
	.db $2e, $04, $18

	; 0x2e
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_INDOORS
	.db SEASONS_PALH_72
	.db $2e, $04, $18

	; 0x2f
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_INDOORS
	.db SEASONS_PALH_74
	.db $2e, $04, $18

	; 0x30
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_INDOORS
	.db SEASONS_PALH_76
	.db $2e, $04, $18

	; 0x31
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_77
	.db $2f, $04, $18

	; 0x32
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_7a
	.db $2f, $04, $18

	; 0x33
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_7b
	.db $2f, $04, $18

	; 0x34
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SUBROSIA_INDOORS
	.db SEASONS_PALH_7c
	.db $31, $04, $18

	; 0x35
	.db $3f, $04
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SUBROSIA_INDOORS
	.db SEASONS_PALH_72
	.db $31, $04, $18

	; 0x36
	.db $40, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_HEROS_CAVE
	.db SEASONS_PALH_40
	.db $21, $05, $18

	; 0x37
	.db $41, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_GNARLED_ROOT_DUNGEON
	.db SEASONS_PALH_41
	.db $22, $05, $18

	; 0x38
	.db $42, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SNAKES_REMAINS
	.db SEASONS_PALH_42
	.db $23, $05, $19

	; 0x39
	.db $43, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_POISON_MOTHS_LAIR
	.db SEASONS_PALH_43
	.db $24, $05, $18

	; 0x3a
	.db $44, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_DANCING_DRAGON_DUNGEON
	.db SEASONS_PALH_44
	.db $25, $05, $18

	; 0x3b
	.db $45, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_UNICORNS_CAVE
	.db SEASONS_PALH_45
	.db $26, $05, $18

	; 0x3c
	.db $46, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_ANCIENT_RUINS
	.db SEASONS_PALH_46
	.db $27, $05, $19

	; 0x3d
	.db $36, $04
	.db UNIQUE_GFXH_TARM_RUINS_NORTH
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $28, $04, $ff

	; 0x3e
	.db $47, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_EXPLORERS_CRYPT
	.db SEASONS_PALH_47
	.db $29, $06, $18

	; 0x3f
	.db $47, $08
	.db UNIQUE_GFXH_27
	.db GFXH_TILESET_EXPLORERS_CRYPT
	.db SEASONS_PALH_47
	.db $29, $06, $18

	; 0x40
	.db $47, $08
	.db UNIQUE_GFXH_28
	.db GFXH_TILESET_EXPLORERS_CRYPT
	.db SEASONS_PALH_4d
	.db $29, $06, $18

	; 0x41
	.db $48, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SWORD_AND_SHIELD_MAZE_ICE
	.db SEASONS_PALH_48
	.db $2a, $06, $18

	; 0x42
	.db $48, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SWORD_AND_SHIELD_MAZE_FIRE
	.db SEASONS_PALH_4e
	.db $2a, $06, $18

	; 0x43
	.db $48, $08
	.db UNIQUE_GFXH_26
	.db GFXH_TILESET_SWORD_AND_SHIELD_MAZE_FIRE
	.db SEASONS_PALH_4f
	.db $2a, $06, $18

	; 0x44
	.db $49, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_ONOX_CASTLE
	.db SEASONS_PALH_49
	.db $2b, $06, $18

	; 0x45
	.db $4a, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_ROOM_OF_RITES
	.db SEASONS_PALH_4a
	.db $2c, $06, $18

	; 0x46
	.db $4a, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_ROOM_OF_RITES
	.db SEASONS_PALH_8e
	.db $2c, $06, $18

	; 0x47
	.db $4b, $08
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_HEROS_CAVE
	.db SEASONS_PALH_40
	.db $21, $06, $18

	; 0x48
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_77
	.db $2f, $05, $18

	; 0x49
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_78
	.db $2f, $05, $18

	; 0x4a
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_79
	.db $2f, $05, $18

	; 0x4b
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_INDOORS
	.db SEASONS_PALH_75
	.db $2e, $05, $18

	; 0x4c
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SUBROSIA_INDOORS
	.db SEASONS_PALH_7c
	.db $31, $05, $18

	; 0x4d
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_INDOORS
	.db SEASONS_PALH_70
	.db $2e, $06, $18

	; 0x4e
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_INDOORS
	.db SEASONS_PALH_73
	.db $2e, $06, $18

	; 0x4f
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_77
	.db $2f, $06, $18

	; 0x50
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_79
	.db $2f, $06, $18

	; 0x51
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_60
	.db $2f, $06, $18

	; 0x52
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_61
	.db $2f, $06, $18

	; 0x53
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_62
	.db $2f, $06, $18

	; 0x54
	.db $4f, $10
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CAVE
	.db SEASONS_PALH_63
	.db $2f, $06, $18

	; 0x55
	.db $50, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_3c
	.db $32, $05, $1a

	; 0x56
	.db $51, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_3d
	.db $32, $05, $1a

	; 0x57
	.db $52, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_68
	.db $32, $05, $1a

	; 0x58
	.db $53, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_3e
	.db $32, $05, $1a

	; 0x59
	.db $54, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_69
	.db $32, $05, $1a

	; 0x5a
	.db $55, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_6a
	.db $32, $05, $1a

	; 0x5b
	.db $58, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_6b
	.db $32, $06, $1a

	; 0x5c
	.db $58, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_6c
	.db $32, $06, $1a

	; 0x5d
	.db $59, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_8d
	.db $32, $06, $1a

	; 0x5e
	.db $5f, $20
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_6d
	.db $32, $06, $1a

	; 0x5f
	.db $5f, $20
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_6e
	.db $32, $06, $1a

	; 0x60
	.db $5f, $20
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_SIDESCROLL
	.db SEASONS_PALH_6f
	.db $32, $06, $1a

	; 0x61
	.db $5f, $20
	.db UNIQUE_GFXH_TEMPLE_REMAINS
	.db GFXH_TILESET_CASTLE_SPRING
	.db SEASONS_PALH_30
	.db $16, $04, $00

	; 0x62
	.db $59, $28
	.db UNIQUE_GFXH_NONE
	.db GFXH_DRAGON_ONOX
	.db SEASONS_PALH_8d
	.db $32, $06, $ff


tileset00Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_HORON_VILLAGE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $00, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_HORON_VILLAGE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $00, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_HORON_VILLAGE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $00, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_HORON_VILLAGE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $00, $03, $00

tileset01Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_CLOCK_HOUSE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $01, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_CLOCK_HOUSE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $01, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_CLOCK_HOUSE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $01, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_CLOCK_HOUSE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $01, $03, $00

tileset02Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_MAKU_TREE_GATE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $02, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_MAKU_TREE_GATE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $02, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_MAKU_TREE_GATE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $02, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_MAKU_TREE_GATE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $02, $03, $00

tileset03Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_GNARLED_ROOT_ENTRANCE_OPENED
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $03, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_GNARLED_ROOT_ENTRANCE_OPENED
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $03, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_GNARLED_ROOT_ENTRANCE_OPENED
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $03, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_GNARLED_ROOT_ENTRANCE_OPENED
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $03, $03, $00

tileset04Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_SNAKES_REMAINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $05, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_SNAKES_REMAINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $05, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_SNAKES_REMAINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $05, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_SNAKES_REMAINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $05, $03, $00

tileset05Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_POISON_MOTHS_LAIR_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_14
	.db $06, $00, $02

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_POISON_MOTHS_LAIR_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_15
	.db $06, $01, $02

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_POISON_MOTHS_LAIR_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_16
	.db $06, $02, $02

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_POISON_MOTHS_LAIR_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_17
	.db $06, $03, $02

tileset06Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_SPOOL_SWAMP_SOUTH
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_14
	.db $07, $00, $01

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_SPOOL_SWAMP_SOUTH
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_15
	.db $07, $01, $01

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_SPOOL_SWAMP_SOUTH
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_16
	.db $07, $02, $01

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_SPOOL_SWAMP_SOUTH
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_17
	.db $07, $03, $01

tileset07Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_24
	.db $08, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_25
	.db $08, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_26
	.db $08, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_27
	.db $08, $03, $00

tileset08Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $09, $00, $02

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $09, $01, $02

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $09, $02, $02

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $09, $03, $02

tileset09Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_18
	.db $09, $00, $02

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_19
	.db $09, $01, $02

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_1a
	.db $09, $02, $02

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_1b
	.db $09, $03, $02

tileset0aSeasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_SUNKEN_CITY
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $0a, $00, $02

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_SUNKEN_CITY
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $0a, $01, $02

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_SUNKEN_CITY
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $0a, $02, $02

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_SUNKEN_CITY
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $0a, $03, $02

tileset0bSeasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_SUNKEN_CITY
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_1c
	.db $0a, $00, $02

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_SUNKEN_CITY
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_1d
	.db $0a, $01, $02

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_SUNKEN_CITY
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_1e
	.db $0a, $02, $02

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_SUNKEN_CITY
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_1f
	.db $0a, $03, $02

tileset0cSeasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_SYRUPS_HUT
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $0c, $00, $02

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_SYRUPS_HUT
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $0c, $01, $02

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_SYRUPS_HUT
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $0c, $02, $02

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_SYRUPS_HUT
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $0c, $03, $02

tileset0dSeasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_20
	.db $09, $00, $02

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_21
	.db $09, $01, $02

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_22
	.db $09, $02, $02

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_DANCING_DRAGON_DUNGEON_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_23
	.db $09, $03, $02

tileset0eSeasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_UNICORNS_CAVE_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $0d, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_UNICORNS_CAVE_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $0d, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_UNICORNS_CAVE_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $0d, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_UNICORNS_CAVE_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $0d, $03, $00

tileset0fSeasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_PEDESTAL
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_24
	.db $0e, $00, $03

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_PEDESTAL
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_25
	.db $0e, $01, $03

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_PEDESTAL
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_26
	.db $0e, $02, $03

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_PEDESTAL
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_27
	.db $0e, $03, $03

tileset10Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_NORTH
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $0f, $00, $03

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_NORTH
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $0f, $01, $03

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_NORTH
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $0f, $02, $03

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_TARM_RUINS_NORTH
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $0f, $03, $03

tileset11Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_ANCIENT_RUINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_28
	.db $10, $00, $ff

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_ANCIENT_RUINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_29
	.db $10, $01, $ff

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_ANCIENT_RUINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_2a
	.db $10, $02, $ff

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_ANCIENT_RUINS_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_2b
	.db $10, $03, $ff

tileset12Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_WESTERN_COAST
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $13, $00, $06

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_WESTERN_COAST
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $13, $01, $06

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_WESTERN_COAST
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $13, $02, $06

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_WESTERN_COAST
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $13, $03, $06

tileset13Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_EXPLORERS_CRYPT_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_2c
	.db $14, $00, $07

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_EXPLORERS_CRYPT_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_2d
	.db $14, $01, $07

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_EXPLORERS_CRYPT_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_2e
	.db $14, $02, $07

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_EXPLORERS_CRYPT_ENTRANCE
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_2f
	.db $14, $03, $07

tileset14Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_BLACK_BEAST
	.db GFXH_TILESET_OVERWORLD_SPRING
	.db SEASONS_PALH_10
	.db $15, $00, $06

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_BLACK_BEAST
	.db GFXH_TILESET_OVERWORLD_SUMMER
	.db SEASONS_PALH_11
	.db $15, $01, $06

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_BLACK_BEAST
	.db GFXH_TILESET_OVERWORLD_AUTUMN
	.db SEASONS_PALH_12
	.db $15, $02, $06

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_BLACK_BEAST
	.db GFXH_TILESET_OVERWORLD_WINTER
	.db SEASONS_PALH_13
	.db $15, $03, $06

tileset15Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CASTLE_SPRING
	.db SEASONS_PALH_30
	.db $16, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CASTLE_SUMMER
	.db SEASONS_PALH_31
	.db $16, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CASTLE_AUTUMN
	.db SEASONS_PALH_32
	.db $16, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CASTLE_WINTER
	.db SEASONS_PALH_33
	.db $16, $03, $00

tileset16Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_TEMPLE_REMAINS
	.db GFXH_TILESET_CASTLE_SPRING
	.db SEASONS_PALH_30
	.db $16, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_TEMPLE_REMAINS
	.db GFXH_TILESET_CASTLE_SUMMER
	.db SEASONS_PALH_31
	.db $16, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_TEMPLE_REMAINS
	.db GFXH_TILESET_CASTLE_AUTUMN
	.db SEASONS_PALH_32
	.db $16, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_TEMPLE_REMAINS
	.db GFXH_TILESET_CASTLE_WINTER
	.db SEASONS_PALH_33
	.db $16, $03, $00

tileset17Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_TEMPLE_REMAINS
	.db GFXH_TILESET_CASTLE_SPRING
	.db SEASONS_PALH_30
	.db $16, $00, $08

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_TEMPLE_REMAINS
	.db GFXH_TILESET_CASTLE_SUMMER
	.db SEASONS_PALH_31
	.db $16, $01, $08

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_TEMPLE_REMAINS
	.db GFXH_TILESET_CASTLE_AUTUMN
	.db SEASONS_PALH_32
	.db $16, $02, $08

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_TEMPLE_REMAINS
	.db GFXH_TILESET_CASTLE_WINTER
	.db SEASONS_PALH_33
	.db $16, $03, $08

tileset18Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_ONOX_CASTLE_OUTSIDE
	.db GFXH_TILESET_CASTLE_SPRING
	.db SEASONS_PALH_34
	.db $17, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_ONOX_CASTLE_OUTSIDE
	.db GFXH_TILESET_CASTLE_SUMMER
	.db SEASONS_PALH_35
	.db $17, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_ONOX_CASTLE_OUTSIDE
	.db GFXH_TILESET_CASTLE_AUTUMN
	.db SEASONS_PALH_36
	.db $17, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_ONOX_CASTLE_OUTSIDE
	.db GFXH_TILESET_CASTLE_WINTER
	.db SEASONS_PALH_37
	.db $17, $03, $00

tileset19Seasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_ONOX_CASTLE_OUTSIDE
	.db GFXH_TILESET_CASTLE_SPRING
	.db SEASONS_PALH_38
	.db $17, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_ONOX_CASTLE_OUTSIDE
	.db GFXH_TILESET_CASTLE_SUMMER
	.db SEASONS_PALH_39
	.db $17, $01, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_ONOX_CASTLE_OUTSIDE
	.db GFXH_TILESET_CASTLE_AUTUMN
	.db SEASONS_PALH_3a
	.db $17, $02, $00

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_ONOX_CASTLE_OUTSIDE
	.db GFXH_TILESET_CASTLE_WINTER
	.db SEASONS_PALH_3b
	.db $17, $03, $00

tileset1aSeasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_NATZU_PRAIRIE
	.db SEASONS_PALH_64
	.db $18, $00, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_NATZU_PRAIRIE
	.db SEASONS_PALH_64
	.db $18, $00, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_NATZU_RIVER
	.db SEASONS_PALH_65
	.db $19, $01, $0a

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_NATZU_WASTELAND
	.db SEASONS_PALH_66
	.db $1a, $02, $05

templeRemainsSeasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CASTLE_SPRING
	.db SEASONS_PALH_30
	.db $16, $04, $08

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CASTLE_SUMMER
	.db SEASONS_PALH_31
	.db $16, $04, $08

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CASTLE_AUTUMN
	.db SEASONS_PALH_32
	.db $16, $04, $08

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_CASTLE_WINTER
	.db SEASONS_PALH_33
	.db $16, $04, $08

moblinKeepSeasons:
	; Spring
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_NATZU_PRAIRIE
	.db SEASONS_PALH_64
	.db $18, $03, $00

	; Summer
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_NATZU_PRAIRIE
	.db SEASONS_PALH_64
	.db $18, $03, $00

	; Autumn
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_NATZU_RIVER
	.db SEASONS_PALH_65
	.db $19, $03, $0a

	; Winter
	.db $0f, $01
	.db UNIQUE_GFXH_NONE
	.db GFXH_TILESET_NATZU_WASTELAND
	.db SEASONS_PALH_66
	.db $1a, $03, $05

; See data/ages/itemUsageTables.s for documentation.
itemUsageParameterTable:
	.db $00, <wGameKeysPressed       ; ITEM_NONE
	.db $05, <wGameKeysPressed       ; ITEM_SHIELD
	.db $03, <wGameKeysJustPressed   ; ITEM_PUNCH
	.db $23, <wGameKeysJustPressed   ; ITEM_BOMB
	.db $00, <wGameKeysJustPressed   ; ITEM_CANE_OF_SOMARIA
	.db $63, <wGameKeysJustPressed   ; ITEM_SWORD
	.db $02, <wGameKeysJustPressed   ; ITEM_BOOMERANG
	.db $33, <wGameKeysJustPressed   ; ITEM_ROD_OF_SEASONS
	.db $53, <wGameKeysJustPressed   ; ITEM_MAGNET_GLOVES
	.db $00, <wGameKeysJustPressed   ; ITEM_SWITCH_HOOK_HELPER
	.db $00, <wGameKeysJustPressed   ; ITEM_SWITCH_HOOK
	.db $00, <wGameKeysJustPressed   ; ITEM_SWITCH_HOOK_CHAIN
	.db $73, <wGameKeysJustPressed   ; ITEM_BIGGORON_SWORD
	.db $02, <wGameKeysJustPressed   ; ITEM_BOMBCHUS
	.db $05, <wGameKeysJustPressed   ; ITEM_FLUTE
	.db $00, <wGameKeysJustPressed   ; ITEM_SHOOTER
	.db $00, <wGameKeysJustPressed   ; ITEM_10
	.db $00, <wGameKeysJustPressed   ; ITEM_HARP
	.db $00, <wGameKeysJustPressed   ; ITEM_12
	.db $43, <wGameKeysJustPressed   ; ITEM_SLINGSHOT
	.db $00, <wGameKeysJustPressed   ; ITEM_14
	.db $13, <wGameKeysJustPressed   ; ITEM_SHOVEL
	.db $13, <wGameKeysPressed       ; ITEM_BRACELET
	.db $01, <wGameKeysJustPressed   ; ITEM_FEATHER
	.db $00, <wGameKeysJustPressed   ; ITEM_18
	.db $02, <wGameKeysJustPressed   ; ITEM_SEED_SATCHEL
	.db $00, <wGameKeysJustPressed   ; ITEM_DUST
	.db $00, <wGameKeysJustPressed   ; ITEM_1b
	.db $00, <wGameKeysJustPressed   ; ITEM_1c
	.db $00, <wGameKeysJustPressed   ; ITEM_MINECART_COLLISION
	.db $03, <wGameKeysJustPressed   ; ITEM_FOOLS_ORE
	.db $00, <wGameKeysJustPressed   ; ITEM_1f


linkItemAnimationTable:
	.db $00, LINK_ANIM_MODE_NONE    ; ITEM_NONE
	.db $00, LINK_ANIM_MODE_NONE    ; ITEM_SHIELD
	.db $d6, LINK_ANIM_MODE_21      ; ITEM_PUNCH
	.db $30, LINK_ANIM_MODE_LIFT    ; ITEM_BOMB
	.db $d6, LINK_ANIM_MODE_22      ; ITEM_CANE_OF_SOMARIA
	.db $e6, LINK_ANIM_MODE_22      ; ITEM_SWORD
	.db $b0, LINK_ANIM_MODE_21      ; ITEM_BOOMERANG
	.db $d6, LINK_ANIM_MODE_22      ; ITEM_ROD_OF_SEASONS
	.db $60, LINK_ANIM_MODE_NONE    ; ITEM_MAGNET_GLOVES
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_SWITCH_HOOK_HELPER
	.db $f6, LINK_ANIM_MODE_21      ; ITEM_SWITCH_HOOK
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_SWITCH_HOOK_CHAIN
	.db $f6, LINK_ANIM_MODE_23      ; ITEM_BIGGORON_SWORD
	.db $30, LINK_ANIM_MODE_21      ; ITEM_BOMBCHUS
	.db $70, LINK_ANIM_MODE_FLUTE   ; ITEM_FLUTE
	.db $c6, LINK_ANIM_MODE_21      ; ITEM_SHOOTER
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_10
	.db $70, LINK_ANIM_MODE_HARP_2  ; ITEM_HARP
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_12
	.db $c6, LINK_ANIM_MODE_21      ; ITEM_SLINGSHOT
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_14
	.db $b0, LINK_ANIM_MODE_DIG_2   ; ITEM_SHOVEL
	.db $40, LINK_ANIM_MODE_LIFT_3  ; ITEM_BRACELET
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_FEATHER
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_18
	.db $a0, LINK_ANIM_MODE_21      ; ITEM_SEED_SATCHEL
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_DUST
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_1b
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_1c
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_MINECART_COLLISION
	.db $e6, LINK_ANIM_MODE_22      ; ITEM_FOOLS_ORE
	.db $80, LINK_ANIM_MODE_NONE    ; ITEM_1f

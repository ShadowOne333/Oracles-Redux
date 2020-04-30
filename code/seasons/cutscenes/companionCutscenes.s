specialObjectCode_companionCutscene:
	ld hl,$d101		; $69c9
	ld a,(hl)		; $69cc
	sub $0f			; $69cd
	rst_jumpTable			; $69cf
	ret c			; $69d0
	ld l,c			; $69d1
	ld a,(bc)		; $69d2
	ld l,h			; $69d3
	ld h,h			; $69d4
	ld l,e			; $69d5
.DB $f4				; $69d6
	ld l,h			; $69d7
	ld e,$04		; $69d8
	ld a,(de)		; $69da
	ld a,(de)		; $69db
	rst_jumpTable			; $69dc
	pop hl			; $69dd
	ld l,c			; $69de
	dec d			; $69df
	ld l,d			; $69e0
	call $6a07		; $69e1
	ld h,d			; $69e4
	ld l,$02		; $69e5
	ld a,(hl)		; $69e7
	or a			; $69e8
	jr z,_label_06_220	; $69e9
	ld l,$10		; $69eb
	ld (hl),$50		; $69ed
	ld l,$09		; $69ef
	ld (hl),$08		; $69f1
	ld bc,$fe00		; $69f3
	call objectSetSpeedZ		; $69f6
	ld a,$02		; $69f9
	jp specialObjectSetAnimation		; $69fb
_label_06_220:
	xor a			; $69fe
	ld ($cbb5),a		; $69ff
	ld a,$1e		; $6a02
	jp specialObjectSetAnimation		; $6a04
	ld a,$01		; $6a07
_label_06_221:
	ld (de),a		; $6a09
	ld hl,$41b5		; $6a0a
	ld e,$05		; $6a0d
	call interBankCall		; $6a0f
	jp objectSetVisiblec0		; $6a12
	ld e,$02		; $6a15
	ld a,(de)		; $6a17
	rst_jumpTable			; $6a18
	dec e			; $6a19
	ld l,d			; $6a1a
	ld h,l			; $6a1b
	ld l,d			; $6a1c
	ld e,$05		; $6a1d
	ld a,(de)		; $6a1f
	rst_jumpTable			; $6a20
	dec h			; $6a21
	ld l,d			; $6a22
	ld b,h			; $6a23
	ld l,d			; $6a24
	call specialObjectAnimate		; $6a25
	ld h,d			; $6a28
	ld l,$21		; $6a29
	ld a,(hl)		; $6a2b
	or a			; $6a2c
	jr z,_label_06_222	; $6a2d
	ld a,$01		; $6a2f
	ld ($cbb5),a		; $6a31
	ld l,$05		; $6a34
	inc (hl)		; $6a36
_label_06_222:
	ld c,$20		; $6a37
	call objectUpdateSpeedZ_paramC		; $6a39
	ret nz			; $6a3c
	ld h,d			; $6a3d
	ld bc,$ff20		; $6a3e
	jp objectSetSpeedZ		; $6a41
	call specialObjectAnimate		; $6a44
	ld h,d			; $6a47
	ld l,$21		; $6a48
	ld a,(hl)		; $6a4a
	or a			; $6a4b
	ret z			; $6a4c
	ld (hl),$00		; $6a4d
	inc a			; $6a4f
	jr z,_label_06_223	; $6a50
	call getFreeInteractionSlot		; $6a52
	ret nz			; $6a55
	ld (hl),$07		; $6a56
	ld bc,$f812		; $6a58
	jp objectCopyPositionWithOffset		; $6a5b
_label_06_223:
	ld l,$05		; $6a5e
	ld (hl),$00		; $6a60
	jp $69fe		; $6a62
	ld e,$05		; $6a65
	ld a,(de)		; $6a67
	rst_jumpTable			; $6a68
	ld a,a			; $6a69
	ld l,d			; $6a6a
	add d			; $6a6b
	ld l,d			; $6a6c
	or h			; $6a6d
	ld l,d			; $6a6e
	cp l			; $6a6f
	ld l,d			; $6a70
	jp z,$dd6a		; $6a71
	ld l,d			; $6a74
	ld ($126a),a		; $6a75
	ld l,e			; $6a78
	inc h			; $6a79
	ld l,e			; $6a7a
	add hl,sp		; $6a7b
	ld l,e			; $6a7c
	ld e,d			; $6a7d
	ld l,e			; $6a7e
	ld l,$05		; $6a7f
	inc (hl)		; $6a81
	call objectApplySpeed		; $6a82
	ld e,$0d		; $6a85
	ld a,(de)		; $6a87
	bit 7,a			; $6a88
	jr nz,_label_06_224	; $6a8a
	ld hl,$d00d		; $6a8c
	ld b,(hl)		; $6a8f
	add $18			; $6a90
	cp b			; $6a92
	jr c,_label_06_224	; $6a93
	call itemIncState2		; $6a95
	inc (hl)		; $6a98
	inc l			; $6a99
	ld (hl),$3c		; $6a9a
	ld l,$0e		; $6a9c
	xor a			; $6a9e
	ldi (hl),a		; $6a9f
	ld (hl),a		; $6aa0
	jp specialObjectAnimate		; $6aa1
_label_06_224:
	ld c,$40		; $6aa4
	call objectUpdateSpeedZ_paramC		; $6aa6
	ret nz			; $6aa9
	call itemIncState2		; $6aaa
	ld l,$06		; $6aad
	ld (hl),$08		; $6aaf
	jp specialObjectAnimate		; $6ab1
	call itemDecCounter1		; $6ab4
	ret nz			; $6ab7
	dec l			; $6ab8
	dec (hl)		; $6ab9
	jp $69f3		; $6aba
	call itemDecCounter1		; $6abd
	ret nz			; $6ac0
	ld (hl),$5a		; $6ac1
	dec l			; $6ac3
	inc (hl)		; $6ac4
	ld a,$14		; $6ac5
	jp specialObjectSetAnimation		; $6ac7
	call specialObjectAnimate		; $6aca
	call itemDecCounter1		; $6acd
	ret nz			; $6ad0
	ld (hl),$0c		; $6ad1
	dec l			; $6ad3
	inc (hl)		; $6ad4
	ld a,$1f		; $6ad5
	call specialObjectSetAnimation		; $6ad7
	jp $6a52		; $6ada
	call itemDecCounter1		; $6add
	ret nz			; $6ae0
	ld (hl),$3c		; $6ae1
	dec l			; $6ae3
	inc (hl)		; $6ae4
	ld a,$1e		; $6ae5
	jp specialObjectSetAnimation		; $6ae7
	call itemDecCounter1		; $6aea
	ret nz			; $6aed
	ld (hl),$1e		; $6aee
	dec l			; $6af0
	inc (hl)		; $6af1
	ld hl,$c6c5		; $6af2
	ld (hl),$ff		; $6af5
	ld a,$81		; $6af7
	ld ($cc77),a		; $6af9
	ld hl,$d010		; $6afc
	ld (hl),$14		; $6aff
	ld l,$14		; $6b01
	ld (hl),$00		; $6b03
	inc l			; $6b05
	ld (hl),$fe		; $6b06
	ld a,$18		; $6b08
	ld ($d009),a		; $6b0a
	ld a,$53		; $6b0d
	jp playSound		; $6b0f
	call itemDecCounter1		; $6b12
	ret nz			; $6b15
	ld (hl),$14		; $6b16
	dec l			; $6b18
	inc (hl)		; $6b19
	xor a			; $6b1a
	ld hl,$d01a		; $6b1b
	ld (hl),a		; $6b1e
	inc a			; $6b1f
	ld ($cca4),a		; $6b20
	ret			; $6b23
	call itemDecCounter1		; $6b24
	ret nz			; $6b27
	dec l			; $6b28
	inc (hl)		; $6b29
	ld l,$09		; $6b2a
	ld (hl),$18		; $6b2c
	ld a,$1c		; $6b2e
	call specialObjectSetAnimation		; $6b30
	ld bc,$fe00		; $6b33
	jp objectSetSpeedZ		; $6b36
	call objectApplySpeed		; $6b39
	ld e,$0d		; $6b3c
	ld a,(de)		; $6b3e
	sub $10			; $6b3f
	rlca			; $6b41
	jr nc,_label_06_225	; $6b42
	ld hl,$cfdf		; $6b44
	ld (hl),$01		; $6b47
	ret			; $6b49
_label_06_225:
	ld c,$40		; $6b4a
	call objectUpdateSpeedZ_paramC		; $6b4c
	ret nz			; $6b4f
	call itemIncState2		; $6b50
	ld l,$06		; $6b53
	ld (hl),$08		; $6b55
	jp specialObjectAnimate		; $6b57
	call itemDecCounter1		; $6b5a
	ret nz			; $6b5d
	ld l,$05		; $6b5e
	dec (hl)		; $6b60
	jp $6b2e		; $6b61
	ld e,$04		; $6b64
	ld a,(de)		; $6b66
	rst_jumpTable			; $6b67
	ld l,h			; $6b68
	ld l,e			; $6b69
	sub (hl)		; $6b6a
	ld l,e			; $6b6b
	call $6a07		; $6b6c
	ld h,d			; $6b6f
	ld l,$06		; $6b70
	ld (hl),$5a		; $6b72
	ld l,$10		; $6b74
	ld (hl),$37		; $6b76
	ld l,$36		; $6b78
	ld (hl),$05		; $6b7a
	ld l,$09		; $6b7c
	ld (hl),$10		; $6b7e
	ld l,$0e		; $6b80
	ld (hl),$ff		; $6b82
	inc l			; $6b84
	ld (hl),$e0		; $6b85
	call getFreeInteractionSlot		; $6b87
	jr nz,_label_06_226	; $6b8a
	ld (hl),$c0		; $6b8c
	ld l,$57		; $6b8e
	ld (hl),d		; $6b90
_label_06_226:
	ld a,$07		; $6b91
	jp specialObjectSetAnimation		; $6b93
	ld e,$05		; $6b96
	ld a,(de)		; $6b98
	or a			; $6b99
	jr z,_label_06_227	; $6b9a
	call specialObjectAnimate		; $6b9c
	call objectApplySpeed		; $6b9f
_label_06_227:
	ld e,$05		; $6ba2
	ld a,(de)		; $6ba4
	rst_jumpTable			; $6ba5
	or b			; $6ba6
	ld l,e			; $6ba7
	cp d			; $6ba8
	ld l,e			; $6ba9
	add $6b			; $6baa
	sbc $6b			; $6bac
	xor $6b			; $6bae
	call itemDecCounter1		; $6bb0
	ret nz			; $6bb3
	ld (hl),$48		; $6bb4
	ld l,$05		; $6bb6
	inc (hl)		; $6bb8
	ret			; $6bb9
	call itemDecCounter1		; $6bba
	ret nz			; $6bbd
	ld (hl),$06		; $6bbe
	ld l,$05		; $6bc0
	inc (hl)		; $6bc2
	jp $6d89		; $6bc3
	ld h,d			; $6bc6
	ld l,$09		; $6bc7
	ld a,(hl)		; $6bc9
	cp $10			; $6bca
	jr z,_label_06_228	; $6bcc
	ld l,$05		; $6bce
	inc (hl)		; $6bd0
	ret			; $6bd1
_label_06_228:
	ld l,$06		; $6bd2
	dec (hl)		; $6bd4
	ret nz			; $6bd5
	call $6da0		; $6bd6
	ld (hl),$06		; $6bd9
	jp $6d89		; $6bdb
	ld h,d			; $6bde
	ld l,$09		; $6bdf
	ld a,(hl)		; $6be1
	cp $10			; $6be2
	jr nz,_label_06_228	; $6be4
	ld l,$05		; $6be6
	inc (hl)		; $6be8
	ld a,$07		; $6be9
	jp specialObjectSetAnimation		; $6beb
	ld e,$0b		; $6bee
	ld a,(de)		; $6bf0
	cp $b0			; $6bf1
	ret c			; $6bf3
	ld hl,$d101		; $6bf4
	ld b,$3f		; $6bf7
	call clearMemory		; $6bf9
	ld hl,$d101		; $6bfc
	ld (hl),$10		; $6bff
	ld l,$0b		; $6c01
	ld (hl),$e8		; $6c03
	inc l			; $6c05
	inc l			; $6c06
	ld (hl),$28		; $6c07
	ret			; $6c09
	ld e,$04		; $6c0a
	ld a,(de)		; $6c0c
	rst_jumpTable			; $6c0d
	ld (de),a		; $6c0e
	ld l,h			; $6c0f
	ld h,$6c		; $6c10
	call $6a07		; $6c12
	ld h,d			; $6c15
	ld l,$10		; $6c16
	ld (hl),$28		; $6c18
	ld l,$0e		; $6c1a
	ld (hl),$e0		; $6c1c
	inc l			; $6c1e
	ld (hl),$ff		; $6c1f
	ld a,$19		; $6c21
	jp specialObjectSetAnimation		; $6c23
	ld e,$05		; $6c26
	ld a,(de)		; $6c28
	rst_jumpTable			; $6c29
	jr c,$6c		; $6c2a
	ld h,h			; $6c2c
	ld l,h			; $6c2d
	add a			; $6c2e
	ld l,h			; $6c2f
	sub a			; $6c30
	ld l,h			; $6c31
	and e			; $6c32
	ld l,h			; $6c33
	cp d			; $6c34
	ld l,h			; $6c35
	add $6c			; $6c36
	ld h,d			; $6c38
	ld l,$05		; $6c39
	inc (hl)		; $6c3b
	ld l,$07		; $6c3c
	ld a,(hl)		; $6c3e
	cp $02			; $6c3f
	jr nz,_label_06_229	; $6c41
	push af			; $6c43
	ld a,$1a		; $6c44
	call specialObjectSetAnimation		; $6c46
	pop af			; $6c49
_label_06_229:
	ld b,a			; $6c4a
	add a			; $6c4b
	add b			; $6c4c
	ld hl,$6c5b		; $6c4d
	rst_addAToHl			; $6c50
	ldi a,(hl)		; $6c51
	ld e,$09		; $6c52
	ld (de),a		; $6c54
	ld c,(hl)		; $6c55
	inc hl			; $6c56
	ld b,(hl)		; $6c57
	jp objectSetSpeedZ		; $6c58
	inc c			; $6c5b
	ld b,b			; $6c5c
.DB $fd				; $6c5d
	inc c			; $6c5e
	and b			; $6c5f
.DB $fd				; $6c60
	inc de			; $6c61
	add b			; $6c62
	cp $cd			; $6c63
	ld (hl),$2a		; $6c65
	call objectApplySpeed		; $6c67
	ld c,$18		; $6c6a
	call objectUpdateSpeedZ_paramC		; $6c6c
	ret nz			; $6c6f
	ld h,d			; $6c70
	ld l,$07		; $6c71
	inc (hl)		; $6c73
	ld a,(hl)		; $6c74
	ld l,$05		; $6c75
	cp $03			; $6c77
	jr z,_label_06_230	; $6c79
	dec (hl)		; $6c7b
	ld l,$06		; $6c7c
	ld (hl),$08		; $6c7e
	ret			; $6c80
_label_06_230:
	inc (hl)		; $6c81
	ld l,$06		; $6c82
	ld (hl),$06		; $6c84
	ret			; $6c86
	call itemDecCounter1		; $6c87
	ret nz			; $6c8a
	ld l,$05		; $6c8b
	inc (hl)		; $6c8d
	ld l,$06		; $6c8e
	ld (hl),$14		; $6c90
	ld a,$27		; $6c92
	jp specialObjectSetAnimation		; $6c94
	call itemDecCounter1		; $6c97
	ret nz			; $6c9a
	ld l,$05		; $6c9b
	inc (hl)		; $6c9d
	ld l,$06		; $6c9e
	ld (hl),$78		; $6ca0
	ret			; $6ca2
	call specialObjectAnimate		; $6ca3
	call itemDecCounter1		; $6ca6
	ret nz			; $6ca9
	ld l,$05		; $6caa
	inc (hl)		; $6cac
	ld l,$06		; $6cad
	ld (hl),$3c		; $6caf
	ld l,$09		; $6cb1
	ld (hl),$0b		; $6cb3
	ld l,$10		; $6cb5
	ld (hl),$14		; $6cb7
	ret			; $6cb9
	call itemDecCounter1		; $6cba
	ret nz			; $6cbd
	ld l,$05		; $6cbe
	inc (hl)		; $6cc0
	ld a,$26		; $6cc1
	jp specialObjectSetAnimation		; $6cc3
	call specialObjectAnimate		; $6cc6
	call objectApplySpeed		; $6cc9
	ld e,$0d		; $6ccc
	ld a,(de)		; $6cce
	cp $78			; $6ccf
	jr nz,_label_06_231	; $6cd1
	ld a,$05		; $6cd3
	jp specialObjectSetAnimation		; $6cd5
_label_06_231:
	cp $b0			; $6cd8
	ret c			; $6cda
	ld hl,$d101		; $6cdb
	ld b,$3f		; $6cde
	call clearMemory		; $6ce0
	ld hl,$d101		; $6ce3
	ld (hl),$0f		; $6ce6
	inc l			; $6ce8
	ld (hl),$01		; $6ce9
	ld l,$0b		; $6ceb
	ld (hl),$48		; $6ced
	inc l			; $6cef
	inc l			; $6cf0
	ld (hl),$d8		; $6cf1
	ret			; $6cf3
	ld e,$04		; $6cf4
	ld a,(de)		; $6cf6
	ld a,(de)		; $6cf7
	rst_jumpTable			; $6cf8
.DB $fd				; $6cf9
	ld l,h			; $6cfa
	inc h			; $6cfb
	ld l,l			; $6cfc
	call $6a07		; $6cfd
	ld h,d			; $6d00
	ld l,$10		; $6d01
	ld (hl),$32		; $6d03
	ld l,$36		; $6d05
	ld (hl),$04		; $6d07
	ld l,$02		; $6d09
	ld a,(hl)		; $6d0b
	or a			; $6d0c
	ld a,$f0		; $6d0d
	jr z,_label_06_232	; $6d0f
	ld a,d			; $6d11
	ld ($cc48),a		; $6d12
	ld a,$d0		; $6d15
_label_06_232:
	ld l,$0f		; $6d17
	ld (hl),a		; $6d19
	ld l,$09		; $6d1a
	ld (hl),$18		; $6d1c
	ld l,$02		; $6d1e
	ld a,(hl)		; $6d20
	jp $6d78		; $6d21
	ld e,$02		; $6d24
	ld a,(de)		; $6d26
	rst_jumpTable			; $6d27
	ld d,d			; $6d28
	ld l,l			; $6d29
	inc l			; $6d2a
	ld l,l			; $6d2b
	ld e,$05		; $6d2c
	ld a,(de)		; $6d2e
	rst_jumpTable			; $6d2f
	ld (hl),$6d		; $6d30
	ld h,d			; $6d32
	ld l,l			; $6d33
	ld (hl),a		; $6d34
	ld l,l			; $6d35
	ld a,($cfc0)		; $6d36
	or a			; $6d39
	jr z,_label_06_233	; $6d3a
	call itemIncState2		; $6d3c
	ld bc,$ff00		; $6d3f
	call objectSetSpeedZ		; $6d42
	ld l,$09		; $6d45
	ld (hl),$0e		; $6d47
	ld l,$10		; $6d49
	ld (hl),$14		; $6d4b
	ld a,$1b		; $6d4d
	jp specialObjectSetAnimation		; $6d4f
_label_06_233:
	ld h,d			; $6d52
	ld l,$02		; $6d53
	ld a,(hl)		; $6d55
	ld l,$06		; $6d56
	dec (hl)		; $6d58
	call z,$6d78		; $6d59
	call objectApplySpeed		; $6d5c
	jp specialObjectAnimate		; $6d5f
	call objectApplySpeed		; $6d62
	ld c,$20		; $6d65
	call objectUpdateSpeedZAndBounce		; $6d67
	jp nc,$6d74		; $6d6a
	call itemIncState2		; $6d6d
	ld l,$20		; $6d70
	ld (hl),$01		; $6d72
	jp specialObjectAnimate		; $6d74
	ret			; $6d77
	ld hl,$6da8		; $6d78
	rst_addDoubleIndex			; $6d7b
	ldi a,(hl)		; $6d7c
	ld h,(hl)		; $6d7d
	ld l,a			; $6d7e
	call $6da0		; $6d7f
	ld b,a			; $6d82
	rst_addAToHl			; $6d83
	ld a,(hl)		; $6d84
	ld e,$06		; $6d85
	ld (de),a		; $6d87
	ld a,b			; $6d88
	sub $04			; $6d89
	and $07			; $6d8b
	ret nz			; $6d8d
	ld e,$09		; $6d8e
	call convertAngleDeToDirection		; $6d90
	dec a			; $6d93
	and $03			; $6d94
	ld h,d			; $6d96
	ld l,$08		; $6d97
	ld (hl),a		; $6d99
	ld l,$36		; $6d9a
	add (hl)		; $6d9c
	jp specialObjectSetAnimation		; $6d9d
	ld e,$09		; $6da0
	ld a,(de)		; $6da2
	dec a			; $6da3
	and $1f			; $6da4
	ld (de),a		; $6da6
	ret			; $6da7
	xor h			; $6da8
	ld l,l			; $6da9
	call z,$066d		; $6daa
	ld b,$06		; $6dad
	ld b,$07		; $6daf
	ld ($0a09),sp		; $6db1
	dec bc			; $6db4
	ld a,(bc)		; $6db5
	add hl,bc		; $6db6
	ld ($0607),sp		; $6db7
	ld b,$06		; $6dba
	ld b,$06		; $6dbc
	ld b,$06		; $6dbe
	rlca			; $6dc0
	ld ($0a09),sp		; $6dc1
	dec bc			; $6dc4
	ld a,(bc)		; $6dc5
	add hl,bc		; $6dc6
	ld ($0607),sp		; $6dc7
	ld b,$06		; $6dca
	ld (bc),a		; $6dcc
	ld (bc),a		; $6dcd
	ld (bc),a		; $6dce
	ld (bc),a		; $6dcf
	inc b			; $6dd0
	ld b,$08		; $6dd1
	ld a,(bc)		; $6dd3
	dec c			; $6dd4
	ld a,(bc)		; $6dd5
	ld ($0406),sp		; $6dd6
	ld (bc),a		; $6dd9
	ld (bc),a		; $6dda
	ld (bc),a		; $6ddb
	ld (bc),a		; $6ddc
	ld (bc),a		; $6ddd
	ld (bc),a		; $6dde
	ld (bc),a		; $6ddf
	inc b			; $6de0
	ld b,$08		; $6de1
	ld a,(bc)		; $6de3
	dec c			; $6de4
	ld a,(bc)		; $6de5
	ld ($0406),sp		; $6de6
	ld (bc),a		; $6de9
	ld (bc),a		; $6dea
	ld (bc),a		; $6deb

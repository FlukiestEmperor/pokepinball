SaveGame: ; 0xda05
	ld de, $0000
	call PlaySong
	ld bc, $0004
	call AdvanceFrames
	call Func_cb5
	ld a, [wd849]
	and a
	call nz, Func_e5d
	call Func_576
	ld hl, hSTAT
	res 6, [hl]
	ld hl, rIE
	res 1, [hl]
	xor a
	ld [wd4aa], a
	ld a, SCREEN_TITLESCREEN
	ld [wCurrentScreen], a
	xor a
	ld [wScreenState], a
	ret

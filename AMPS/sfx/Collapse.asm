	sHeaderInitSFX						; Z80 offset is $F3A4
	sHeaderPrio	$78
	sHeaderCh	$04
	sHeaderSFX	$80, ctFM3, .FM3, $10, $00
	sHeaderSFX	$80, ctFM4, .FM4, $00, $00
	sHeaderSFX	$80, ctFM5, .FM5, $10, $00
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.FM3
	sPan		spRight
	dc.b nRst, $02
	sJump		.FM4

.FM5
	sPan		spLeft
	dc.b nRst, $01

.FM4
	sVoice		pBossHit
	ssMod68k	$02, $01, $20, $04

.Loop1
	dc.b nC0, $18
	saVol		$0A
	sLoop		$00, $06, .Loop1
	sStop

.PSG3
	ssMod68k	$00, $01, $0F, $05
	sNoisePSG	$E7

.Loop2
	dc.b nB3, $18, sHold
	saVol		$18
	sLoop		$00, $05, .Loop2
	sStop
	sHeaderInit						; Z80 offset is $FAB8
	sHeaderPrio	$60
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pGloop
	ssMod68k	$00, $01, $7F, $F1
	dc.b nF3, $0A
	sStop
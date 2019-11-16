	sHeaderInit						; Z80 offset is $F687
	sHeaderPrio	$78
	sHeaderCh	$03
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00
	sHeaderSFX	$80, ctFM4, .FM4, $00, $00
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.FM5
	sVoice		pRegister1
	dc.b nA0, $08, nRst, $02, nA0, $08
	sStop

.FM4
	sVoice		pRegister2
	dc.b nRst, $12, nA5, $55
	sStop

.PSG3
	sVolEnv		v02
	sNoisePSG	$E7
	dc.b nRst, $02, nF5, $05, nG5, $04, nF5, $05
	dc.b nG5, $04
	sStop

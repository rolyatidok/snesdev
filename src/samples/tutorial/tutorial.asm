.include "header.inc"
.include "Snes_Init.asm"
VBlank:		; Needed to satisfy interrupt definition in "header.inc"
	RTI
Start:
	;initialize
	Snes_Init
	sep 	#$20
	;
	; update the screen during vblank or hblank
	lda	#%10000000 	; Force VBlank by turning off the screen
	sta	$2100
	; set the background color
	; %0bbbbbgggggrrrrr (blue green red)
	lda	#%00001111 	; low byte (gggrrrrr)
	sta	$2122
	lda	#%01111100	; high byte (0bbbbbgg)
	sta	$2122		
	; Done updating screen
	lda #%00001111		; End VBlank
	sta	$2100
	;
	; done with main program, loop forever
Forever:
	jmp	Forever

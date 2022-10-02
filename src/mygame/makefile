all:mygame.smc

mygame.smc: mygame.asm mygame.link
	wla-65816 -o mygame.obj mygame.asm
	wlalink mygame.link mygame.smc

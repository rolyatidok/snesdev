all:tutorial.smc

tutorial.smc: tutorial.asm tutorial.link
	wla-65816 -o tutorial.obj tutorial.asm
	wlalink tutorial.link tutorial.smc

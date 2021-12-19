/*
 * A linker script for a very simple Raspberry Pi 3 bare metal program.
 *
 * Copyright © 2021 Leandro Motta Barros
 */

/*
 * With the `SECTIONS` command we define the layout of the output file, that is,
 * we define what goes into each memory address.
 */
SECTIONS {
	/*
	 * Put all our code (AKA text) starting at address 0x8000. That's the memory
	 * address where execution starts on a Raspberry Pi 3 running in 32-bit
	 * mode.
	 */
	.text 0x8000 : { *(.text) }

	/*
	 * And I think that's all we need. Our program doesn't have any static data,
	 * so we don't even need to define a `data` section.
	 */
}

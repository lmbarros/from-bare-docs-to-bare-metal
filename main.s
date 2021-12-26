/*
 * Sets the Raspberry Pi 3 GPIO 16 pin to 1 upon startup.
 *
 * This is meant to be a simple bare metal program example. This is the first
 * time ever I am using ARM assembly, so this is probaly not a good place to
 * learn the assembly itself.
 *
 * Copyright © 2021 Leandro Motta Barros
 */

/*
 * Make `_start` visible to the linker. By the way, `_start` happens to be the
 * point the linker uses by default as the entry point of the program. In other
 * other, our program will start running from `_start`.
 */
.global _start

_start:

/* Store on r0 the base address of the GPIO */
ldr r0, =0x3f200000

/*
 * Store on r1 a number with only the bit 18 set. This is what we need to store
 * in the GPFSEL1 register to configure the GPIO pin 16 to work as an output
 * pin.
 */
ldr r1, =0x00040000

/*
 * So, store it. GPFSEL1 is located at 0x3F20_0004, or 4 bytes beyond the GPIO
 * base address. This instruction stores the value taken from r1 to the address
 * given by whatever we have on r0 plus an offset of 4 bytes.
 */
str r1, [r0, #4]

/*
 * Store on r1 a number with only the bit 16 set. This is what we need to store
 * in the GPSET0 register to set the GPIO pin 16 to a high (1, on) state.
 */
ldr r1, =0x00010000

/*
 * Store that value. GPSET0 is located at 0x3F20_001C, or 28 (or 0x1C) bytes
 * beyond the GPIO base address. This causes the GPIO pin to go high, turning on
 * our LED.
 */
str r1, [r0, #0x1C]

/*
 * Enter an infinite loop. Seems like appending a $ sign to a label is common
 * idiom to indicate that label is used only locally.
 */
again$:
b again$

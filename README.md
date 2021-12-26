# From Bare Docs to Bare Metal

Example code from my blog post From Bare Docs to Bare Metal <!-- Link! -->

This is a *very* simple program that sets the GPIO pin 16 of a Raspberry
Pi&nbsp;3 to high. I don't know assembly, much less ARM assembly, but somehow
this seems to work. 😊

The code is pretty well-commented but probably of low quality. I built it using
GNU Assembler from GNU binutils 2.37. I had to install the package
`arm-none-eabi-binutils` package to add support for the Raspberry Pi&nbsp;3 bare
metal target.

To build, just run the `build.sh` script (assuming you are running a Linux
system). To run the generated `kernel7.img`, just copy it to the root directory
of an SD card along with all the files from the `firmware` directory.

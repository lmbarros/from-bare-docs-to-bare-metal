# From Bare Docs to Bare Metal

Example code from my blog post From Bare Docs to Bare Metal <!-- Link! -->

<!-- TODO: The Zig version! -->

## Assembly version

One thing I don't mention in the post (because it was already quite long) is
that I wrote a very simple assembly program before writing to the Zig version.
That felt like a good way to check if my ideas made any sense before proceeding
with the full version.

Anyway, look into the `asm-version` directory for it. The code is pretty
well-commented but probably of low quality. I built it using GNU Assembler from
GNU binutils 2.37. I had to install the package `arm-none-eabi-binutils` package
to add support for the Raspberry Pi 3 bare metal target.

To build, just run the `build.sh` script. To run the generated `kernel.img`,
just copy it to the root directory of an SD card along with all the files from
the `firmware` directory.

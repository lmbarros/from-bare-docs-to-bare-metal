#!/bin/sh

set -e

arm-none-eabi-as main.s -o main.o
arm-none-eabi-ld main.o -o main.elf -T kernel.ld
arm-none-eabi-objcopy main.elf -O binary kernel.img

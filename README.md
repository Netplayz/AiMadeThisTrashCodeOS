# AiMadeThisTrashCodeOS

A tiny experimental operating system to see if AI can make a whole OS.

## Build locally

Install dependencies:

sudo apt install build-essential nasm grub-pc-bin xorriso

Then run:

make

This creates:

AiMadeThisTrashCodeOS.iso

Run it:

qemu-system-x86_64 -cdrom AiMadeThisTrashCodeOS.iso

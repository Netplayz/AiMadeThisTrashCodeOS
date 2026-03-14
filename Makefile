CC=gcc
ASM=nasm

all:
	mkdir -p build
	$(ASM) -f elf32 boot/boot.asm -o build/boot.o
	$(CC) -m32 -ffreestanding -c kernel/kernel.c -o build/kernel.o
	ld -m elf_i386 -T linker.ld -o build/kernel.bin build/boot.o build/kernel.o

	mkdir -p iso/boot/grub
	cp build/kernel.bin iso/boot/
	cp iso/boot/grub/grub.cfg iso/boot/grub/grub.cfg

	grub-mkrescue -o AiMadeThisTrashCodeOS.iso iso

clean:
	rm -rf build iso/boot/kernel.bin AiMadeThisTrashCodeOS.iso
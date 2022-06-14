#!/bin/sh

make clean

make

if [ $? -ne 0 ]; then
	echo "make failed"
else
	echo "make succeed"
	# qemu-system-i386 -kernel output/myOS.elf -serial pty -S -s&
	git add .
	git commit -m "bot_auto_commit"
fi

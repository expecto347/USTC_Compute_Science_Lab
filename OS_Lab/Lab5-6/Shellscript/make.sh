cd ~/ustc-cs/OS_Lab/Lab5-6
git restore .
git pull

make clean

make

if [ $? -ne 0 ]; then
	echo "make failed"
else
	echo "make succeed"
	# qemu-system-i386 -kernel output/myOS.elf -serial pty -S -s&
	git add .
	git commit -m "linux_auto_commit"
	git push
fi

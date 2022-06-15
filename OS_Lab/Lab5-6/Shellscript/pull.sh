g=0  #调试

git pull

if [ $g -eq 1 ]
then
    qemu-system-i386 -kernel output/myOS.elf -serial pty -s -S&
else
    qemu-system-i386 -kernel output/myOS.elf -serial pty&
fi
g=1 #是否调试

git pull

if [$g == $1]
then
    echo $g
    qemu-system-i386 -kernel output/myOS.elf -serial pty -s -S&
else
    qemu-system-i386 -kernel output/myOS.elf -serial pty&
fi
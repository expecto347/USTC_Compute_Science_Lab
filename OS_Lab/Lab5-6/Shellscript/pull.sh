g=1

# git pull

if [$g -eq 1]
then
    echo $g
    # qemu-system-i386 -kernel output/myOS.elf -serial pty -s -S&
else
    # qemu-system-i386 -kernel output/myOS.elf -serial pty&
    echo "g is not 1"
fi
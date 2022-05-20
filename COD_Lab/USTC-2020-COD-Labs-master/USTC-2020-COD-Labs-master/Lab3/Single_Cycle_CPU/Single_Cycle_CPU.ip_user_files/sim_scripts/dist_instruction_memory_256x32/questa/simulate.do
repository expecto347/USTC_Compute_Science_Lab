onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dist_instruction_memory_256x32_opt

do {wave.do}

view wave
view structure
view signals

do {dist_instruction_memory_256x32.udo}

run -all

quit -force

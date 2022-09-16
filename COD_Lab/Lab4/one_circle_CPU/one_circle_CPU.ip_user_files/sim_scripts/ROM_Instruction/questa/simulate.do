onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ROM_Instruction_opt

do {wave.do}

view wave
view structure
view signals

do {ROM_Instruction.udo}

run -all

quit -force

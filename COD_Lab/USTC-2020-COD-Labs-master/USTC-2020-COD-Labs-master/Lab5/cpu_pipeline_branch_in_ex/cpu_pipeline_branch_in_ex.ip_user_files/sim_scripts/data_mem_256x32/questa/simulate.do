onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib data_mem_256x32_opt

do {wave.do}

view wave
view structure
view signals

do {data_mem_256x32.udo}

run -all

quit -force

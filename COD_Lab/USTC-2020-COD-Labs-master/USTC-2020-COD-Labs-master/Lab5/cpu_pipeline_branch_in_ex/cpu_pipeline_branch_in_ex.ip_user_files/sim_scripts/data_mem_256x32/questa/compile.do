vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/dist_mem_gen_v8_0_13
vlib questa_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_13 questa_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13 -64 \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 \
"../../../../cpu_pipeline_branch_in_ex.srcs/sources_1/ip/data_mem_256x32/sim/data_mem_256x32.v" \


vlog -work xil_defaultlib \
"glbl.v"


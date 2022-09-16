-makelib ies_lib/xpm -sv \
  "E:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_13 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Lab2_double.srcs/sources_1/ip/dist_mem_gen_16x8/sim/dist_mem_gen_16x8.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=E:/Xilinx/Vivado/2019.2/ids_lite/ISE/bin/nt64;E:/Xilinx/Vivado/2019.2/ids_lite/ISE/lib/nt64:E:/Xilinx/Vivado/2019.2/bin
else
  PATH=E:/Xilinx/Vivado/2019.2/ids_lite/ISE/bin/nt64;E:/Xilinx/Vivado/2019.2/ids_lite/ISE/lib/nt64:E:/Xilinx/Vivado/2019.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='D:/VivadoProject/COD/Lab5/cpu_pipeline_with_branch_predictor/cpu_pipeline_with_branch_predictor.runs/data_mem_256x32_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log data_mem_256x32.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source data_mem_256x32.tcl

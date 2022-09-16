# USTC-COD-Experiment

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/USTC-CS-Course-Resource/USTC-2020-COD-Labs/blob/master/LICENSE)

This repository contains my COD experiments' codes in verilog.
Projects are created with Vivado 2019.

## Lab1

This lab includes `ALU` module.

## Lab2

This lab includes `register file`, `memory`, and `FIFO queue` modules.

## Lab3

This lab includes `Single Cycle CPU`, which is made up of `ALU`, `control unit`, `instructions memory`, `data memory` and so on, as well as a `DBU`(Debug Unit).

The `Single Cycle CPU` here only contains these instructions:
1. ADD
2. ADDI
3. LW
4. SW
5. BEQ
6. J

The `DBU` can display some specific data(like `memory`, `register file`, `alu_y` .etc) through nixietubes and some `control signal` through the LEDs.

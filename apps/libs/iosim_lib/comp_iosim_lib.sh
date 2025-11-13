#!/bin/bash
$RISCV_GCC_BIN/riscv-none-embed-gcc -ggdb -march=rv32im -mabi=ilp32  \
-S    -Wextra -Wall  \
-Wno-unused-parameter -Wno-unused-variable -Wno-unused-function \
-fdata-sections -ffunction-sections -fdiagnostics-color=always \
-I$RISCV_PULP_LIBS/sys_lib/inc \
-I$RISCV_PULP_LIBS/iosim_lib/inc \
src/iosim.c -o iosim.c.noopt.s

#!/bin/bash
# gcc_root="/ourwork/prime/users/udik/pulp_RI5CY/ri5cy_gnu_toolchain-master/install/bin"
gcc_root="/ourwork/prime/users/udik/pulp_RI5CY/gdb/bin"

$gcc_root/riscv32-unknown-elf-gcc \
-S    -g   -Wa,-march=rv32im -Wextra -Wall \
-Wno-unused-parameter -Wno-unused-variable -Wno-unused-function \
-fdata-sections -ffunction-sections -fdiagnostics-color=always \
-I/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib/inc \
-I/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/iosim_lib/inc \
src/iosim.c -o iosim.s

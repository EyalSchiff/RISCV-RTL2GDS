#!/bin/bash
# Compile C source

source ../sw_utils/sw_local_setup.sh

# ==========================================================================
echo "Compiling Application $1"
echo "RISCV_GCC_BIN= $RISCV_GCC_BIN"

$RISCV_GCC_BIN/riscv-none-embed-gcc -ggdb -march=rv32im -mabi=ilp32  \
-S    -Wextra -Wall  \
-Wno-unused-parameter -Wno-unused-variable -Wno-unused-function \
-fdata-sections -ffunction-sections -fdiagnostics-color=always \
-I$RISCV_PULP_LIBS/sys_lib/inc \
-I$RISCV_PULP_LIBS/string_lib/inc \
-I$RISCV_PULP_LIBS/bench_lib/inc \
-I$RISCV_PULP_LIBS/iosim_lib/inc \
./$1.c -o $1.c.s

# Link 

 $RISCV_GCC_BIN/riscv-none-embed-gcc -ggdb -march=rv32im -mabi=ilp32  \
  -Wextra -Wall \
-Wno-unused-parameter -Wno-unused-variable -Wno-unused-function \
-fdata-sections -ffunction-sections -fdiagnostics-color=always  \
-I$RISCV_PULP_LIBS/sys_lib/inc \
-L$RISCV_PULP_SW_APPS_REF \
-T$RISCV_PULP_SW_APPS_REF/link.riscv.ld -nostartfiles -Wl,--gc-sections \
-D__riscv__ \
$1.c.s \
../ref/crt0.riscv.tmp_no_eret.S  \
../libs/bench_lib/bench.c.noopt.s \
../libs/string_lib/qprintf.c.noopt.s \
../libs/sys_lib/exceptions.c.noopt.s \
../libs/sys_lib/gpio.c.noopt.s \
../libs/sys_lib/i2c.c.noopt.s \
../libs/sys_lib/int.c.noopt.s \
../libs/sys_lib/spi.c.noopt.s \
../libs/sys_lib/timer.c.noopt.s \
../libs/sys_lib/uart.c.noopt.s \
../libs/sys_lib/utils.c.noopt.s \
$RISCV_PULP_LIBS/iosim_lib/iosim.c.noopt.s \
-o $1.elf
 
# dump object in text


$RISCV_GCC_BIN/riscv-none-embed-objdump  -g -d $1.elf > $1.elf_read
 
# Convert 

$RISCV_GCC_BIN/riscv-none-embed-objcopy  --srec-len 1 --output-target=srec $1.elf $1.s19

$RISCV_PULP_SW_UTILS/s19toslm.py ./$1.s19
\mkdir -p  ../../sourcecode/tb/slm_files/
\cp *.slm          ../../sourcecode/tb/slm_files/
\cp spi_stim.txt   ../../sourcecode/tb/slm_files/

 
 

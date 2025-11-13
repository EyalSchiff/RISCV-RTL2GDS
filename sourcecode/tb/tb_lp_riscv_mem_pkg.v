`ifdef GATE_LEVEL
    `define DCCM_RAM_INSTANCE dccm_ram_0_sram_sp_16384x32
    `define ICCM_RAM_INSTANCE iccm_ram_0_sram_sp_16384x32 
`else
    `define ICCM_RAM_INSTANCE iccm_ram_0
    `define DCCM_RAM_INSTANCE dccm_ram_0
`endif
  logic [31:0]     data_mem[];  // this variable holds the whole memory content
  logic [31:0]     instr_mem[]; // this variable holds the whole memory content
  event            event_mem_load;

  task mem_preload;
    integer      addr;
    integer      mem_addr;
    integer      bidx;
    integer      instr_size;
    integer      instr_width;
    integer      data_size;
    integer      data_width;
    logic [31:0] data;
    string       l2_imem_file;
    string       l2_dmem_file;
    begin
      $display("Preloading memory");

      instr_size   = tb_lp_riscv.dut.lp_riscv.iccm_ram_wrapper.`ICCM_RAM_INSTANCE.RAM_SIZE;
      instr_width  = tb_lp_riscv.dut.lp_riscv.iccm_ram_wrapper.`ICCM_RAM_INSTANCE.ram.DATA_WIDTH;

      data_size   = tb_lp_riscv.dut.lp_riscv.dccm_ram_wrapper.`DCCM_RAM_INSTANCE.RAM_SIZE;
      data_width  = tb_lp_riscv.dut.lp_riscv.dccm_ram_wrapper.`DCCM_RAM_INSTANCE.ram.DATA_WIDTH;

      instr_mem = new [instr_size/4];
      data_mem  = new [data_size/4];

      if(!$value$plusargs("l2_imem=%s", l2_imem_file))
         l2_imem_file = "../sourcecode/tb/slm_files/l2_stim.slm";

      $display("Preloading instruction memory from %0s", l2_imem_file);
      $readmemh(l2_imem_file, instr_mem);

      if(!$value$plusargs("l2_dmem=%s", l2_dmem_file))
         l2_dmem_file = "../sourcecode/tb/slm_files/tcdm_bank0.slm";

      $display("Preloading data memory from %0s", l2_dmem_file);
      $readmemh(l2_dmem_file, data_mem);


      // preload data memory
      for(addr = 0; addr < data_size/4; addr = addr) begin

        for(bidx = 0; bidx < data_width/8; bidx++) begin
          mem_addr = addr / (data_width/32);
          data = data_mem[addr];

          if (bidx%4 == 0)
            tb_lp_riscv.dut.lp_riscv.dccm_ram_wrapper.`DCCM_RAM_INSTANCE.ram.mem[mem_addr][bidx] = data[ 7: 0];
          else if (bidx%4 == 1)
            tb_lp_riscv.dut.lp_riscv.dccm_ram_wrapper.`DCCM_RAM_INSTANCE.ram.mem[mem_addr][bidx] = data[15: 8];
          else if (bidx%4 == 2)
            tb_lp_riscv.dut.lp_riscv.dccm_ram_wrapper.`DCCM_RAM_INSTANCE.ram.mem[mem_addr][bidx] = data[23:16];
          else if (bidx%4 == 3)
            tb_lp_riscv.dut.lp_riscv.dccm_ram_wrapper.`DCCM_RAM_INSTANCE.ram.mem[mem_addr][bidx] = data[31:24];

          if (bidx%4 == 3) addr++;
        end
      end

      // preload instruction memory
      for(addr = 0; addr < instr_size/4; addr = addr) begin

        for(bidx = 0; bidx < instr_width/8; bidx++) begin
          mem_addr = addr / (instr_width/32);
          data = instr_mem[addr];

          if (bidx%4 == 0)
            tb_lp_riscv.dut.lp_riscv.iccm_ram_wrapper.`ICCM_RAM_INSTANCE.ram.mem[mem_addr][bidx] = data[ 7: 0];
          else if (bidx%4 == 1)
            tb_lp_riscv.dut.lp_riscv.iccm_ram_wrapper.`ICCM_RAM_INSTANCE.ram.mem[mem_addr][bidx] = data[15: 8];
          else if (bidx%4 == 2)
            tb_lp_riscv.dut.lp_riscv.iccm_ram_wrapper.`ICCM_RAM_INSTANCE.ram.mem[mem_addr][bidx] = data[23:16];
          else if (bidx%4 == 3)
            tb_lp_riscv.dut.lp_riscv.iccm_ram_wrapper.`ICCM_RAM_INSTANCE.ram.mem[mem_addr][bidx] = data[31:24];

          if (bidx%4 == 3) addr++;
        end
      end
    end
  endtask

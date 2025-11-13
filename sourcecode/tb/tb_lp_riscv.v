`define MY_ID 123456789*10  ; // Put your ID Number here - multiplied by 10
`define MY_N 10
`ifdef GATE_LEVEL
 `define MEM_INSTANCE dccm_ram_0_sram_sp_16384x32
`else 
 `define MEM_INSTANCE dccm_ram_0
`endif

module tb_lp_riscv () ;

   parameter N_EXT_PERF_COUNTERS = 16 ;

   reg                            PAD_CLK;
   reg                            PAD_RST_N;
   wire                           PAD_CLOCK_EN = 1'b1 ;
   wire                           PAD_TEST_EN = 1'b0 ;
   wire                           PAD_FETCH_EN = 1'b1 ;
   wire [N_EXT_PERF_COUNTERS-1:0] PAD_EXT_PERF_COUNTERS = {N_EXT_PERF_COUNTERS{1'b0}} ;

   // instruction ram write interface (to prevent optimize out)
   wire [7:0] 			  PAD_IRAM_PROG_BYTE = 8'h00;
   wire [1:0] 			  PAD_IRAM_PROG_BYTE_IDX = 2'b00;
   wire 			  PAD_IRAM_PROG_DATA_BYTE = 1'b0;
   wire 			  PAD_IRAM_PROG_ADDR_BYTE = 1'b0;
   wire 			  PAD_IRAM_PROG_WR=1'b0;       
   wire 			  PAD_DONE_FLAG;  // added indication for test done

   string 			  memload;

   wire 			  PAD_EXT_PERF_COUNTERS_15;
   wire 			  PAD_EXT_PERF_COUNTERS_14;
   wire 			  PAD_EXT_PERF_COUNTERS_13;
   wire 			  PAD_EXT_PERF_COUNTERS_12;
   wire 			  PAD_EXT_PERF_COUNTERS_11;
   wire 			  PAD_EXT_PERF_COUNTERS_10;
   wire 			  PAD_EXT_PERF_COUNTERS_9;
   wire 			  PAD_EXT_PERF_COUNTERS_8;
   wire 			  PAD_EXT_PERF_COUNTERS_7;
   wire 			  PAD_EXT_PERF_COUNTERS_6;
   wire 			  PAD_EXT_PERF_COUNTERS_5;
   wire 			  PAD_EXT_PERF_COUNTERS_4;
   wire 			  PAD_EXT_PERF_COUNTERS_3;
   wire 			  PAD_EXT_PERF_COUNTERS_2;
   wire 			  PAD_EXT_PERF_COUNTERS_1;
   wire 			  PAD_EXT_PERF_COUNTERS_0;

   wire 			  PAD_IRAM_PROG_BYTE_7;
   wire 			  PAD_IRAM_PROG_BYTE_6;
   wire 			  PAD_IRAM_PROG_BYTE_5;
   wire 			  PAD_IRAM_PROG_BYTE_4;
   wire 			  PAD_IRAM_PROG_BYTE_3;
   wire 			  PAD_IRAM_PROG_BYTE_2;
   wire 			  PAD_IRAM_PROG_BYTE_1;
   wire 			  PAD_IRAM_PROG_BYTE_0;

   wire 			  PAD_IRAM_PROG_BYTE_IDX_0;
   wire 			  PAD_IRAM_PROG_BYTE_IDX_1;
   
       
   // Pack PAD_* discrete bits into PAD_* buses:
   assign PAD_EXT_PERF_COUNTERS = {
				   PAD_EXT_PERF_COUNTERS_15,
				   PAD_EXT_PERF_COUNTERS_14,
				   PAD_EXT_PERF_COUNTERS_13,
				   PAD_EXT_PERF_COUNTERS_12,
				   PAD_EXT_PERF_COUNTERS_11,
				   PAD_EXT_PERF_COUNTERS_10,
				   PAD_EXT_PERF_COUNTERS_9,
				   PAD_EXT_PERF_COUNTERS_8,
				   PAD_EXT_PERF_COUNTERS_7,
				   PAD_EXT_PERF_COUNTERS_6,
				   PAD_EXT_PERF_COUNTERS_5,
				   PAD_EXT_PERF_COUNTERS_4,
				   PAD_EXT_PERF_COUNTERS_3,
				   PAD_EXT_PERF_COUNTERS_2,
				   PAD_EXT_PERF_COUNTERS_1,
				   PAD_EXT_PERF_COUNTERS_0
				   };

   assign PAD_IRAM_PROG_BYTE = {
				PAD_IRAM_PROG_BYTE_7,
				PAD_IRAM_PROG_BYTE_6,
				PAD_IRAM_PROG_BYTE_5,
				PAD_IRAM_PROG_BYTE_4,
				PAD_IRAM_PROG_BYTE_3,
				PAD_IRAM_PROG_BYTE_2,
				PAD_IRAM_PROG_BYTE_1,
				PAD_IRAM_PROG_BYTE_0
				};

   assign PAD_IRAM_PROG_BYTE_IDX = {
				    PAD_IRAM_PROG_BYTE_IDX_1,
				    PAD_IRAM_PROG_BYTE_IDX_0
				    };

     
   
   lp_riscv_top dut (
		     .PAD_CLK			(PAD_CLK),			// input                                      
		     .PAD_RST_N			(PAD_RST_N),			// input
		     .PAD_CLOCK_EN		(PAD_CLOCK_EN),			// input 
		     .PAD_TEST_EN		(PAD_TEST_EN),			// input
		     .PAD_FETCH_EN		(PAD_FETCH_EN),			// input
		     .PAD_EXT_PERF_COUNTERS_5	(PAD_EXT_PERF_COUNTERS_5),	// input
		     .PAD_EXT_PERF_COUNTERS_6	(PAD_EXT_PERF_COUNTERS_6),	// input
		     .PAD_EXT_PERF_COUNTERS_0	(PAD_EXT_PERF_COUNTERS_0),	// input
		     .PAD_EXT_PERF_COUNTERS_1	(PAD_EXT_PERF_COUNTERS_1),	// input
		     .PAD_EXT_PERF_COUNTERS_2	(PAD_EXT_PERF_COUNTERS_2),	// input
		     .PAD_EXT_PERF_COUNTERS_3	(PAD_EXT_PERF_COUNTERS_3),	// input
		     .PAD_EXT_PERF_COUNTERS_4	(PAD_EXT_PERF_COUNTERS_4),	// input
		     .PAD_EXT_PERF_COUNTERS_7	(PAD_EXT_PERF_COUNTERS_7),	// input
		     .PAD_EXT_PERF_COUNTERS_8	(PAD_EXT_PERF_COUNTERS_8),	// input
		     .PAD_EXT_PERF_COUNTERS_9	(PAD_EXT_PERF_COUNTERS_9),	// input
		     .PAD_EXT_PERF_COUNTERS_10	(PAD_EXT_PERF_COUNTERS_10),	// input
		     .PAD_EXT_PERF_COUNTERS_11	(PAD_EXT_PERF_COUNTERS_11),	// input
		     .PAD_EXT_PERF_COUNTERS_12	(PAD_EXT_PERF_COUNTERS_12),	// input
		     .PAD_EXT_PERF_COUNTERS_13	(PAD_EXT_PERF_COUNTERS_13),	// input
		     .PAD_EXT_PERF_COUNTERS_14	(PAD_EXT_PERF_COUNTERS_14),	// input
		     .PAD_EXT_PERF_COUNTERS_15	(PAD_EXT_PERF_COUNTERS_15),	// input
      
		     // Instruction ram write interface	(to prevent optimize out)
		     .PAD_IRAM_PROG_BYTE_0	(PAD_IRAM_PROG_BYTE_0),		// input
		     .PAD_IRAM_PROG_BYTE_1	(PAD_IRAM_PROG_BYTE_1),		// input
		     .PAD_IRAM_PROG_BYTE_2	(PAD_IRAM_PROG_BYTE_2),		// input
		     .PAD_IRAM_PROG_BYTE_3	(PAD_IRAM_PROG_BYTE_3),		// input
		     .PAD_IRAM_PROG_BYTE_4	(PAD_IRAM_PROG_BYTE_4),		// input
		     .PAD_IRAM_PROG_BYTE_5	(PAD_IRAM_PROG_BYTE_5),		// input
		     .PAD_IRAM_PROG_BYTE_6	(PAD_IRAM_PROG_BYTE_6),		// input
		     .PAD_IRAM_PROG_BYTE_7	(PAD_IRAM_PROG_BYTE_7),		// input
		     .PAD_IRAM_PROG_BYTE_IDX_0	(PAD_IRAM_PROG_BYTE_IDX_0),	// input
		     .PAD_IRAM_PROG_BYTE_IDX_1	(PAD_IRAM_PROG_BYTE_IDX_1),	// input
		     .PAD_IRAM_PROG_DATA_BYTE	(PAD_IRAM_PROG_DATA_BYTE),	// input 
		     .PAD_IRAM_PROG_ADDR_BYTE	(PAD_IRAM_PROG_ADDR_BYTE),	// input 
		     .PAD_IRAM_PROG_WR		(PAD_IRAM_PROG_WR),		// input

		     .PAD_DONE_FLAG		(PAD_DONE_FLAG)			// output
		     );

   
   always #5 PAD_CLK = ~PAD_CLK;

   int 				  i,val ;
   localparam SORT_VEC = 32'h00002000 ;  
   
   initial begin
      
      // preload memories    
      if(!$value$plusargs("MEMLOAD=%s", memload)) memload = "PRELOAD";       
      $display("Using MEMLOAD method: %s\n\n", memload) ;      
      if (memload == "PRELOAD") mem_preload();
      

      $display("\n\npre-sorted Vector\n");
      dut.lp_riscv.dccm_ram_wrapper.`MEM_INSTANCE.ram.mem[SORT_VEC/4] = `MY_ID ;	
      $display("mem[h%8h] = %d" , SORT_VEC/4+i , dut.lp_riscv.dccm_ram_wrapper.`MEM_INSTANCE.ram.mem[SORT_VEC/4]);    
      for  (i=1;i<`MY_N;i=i+1)
	begin
	   val = $random() + `MY_ID; 
	   dut.lp_riscv.dccm_ram_wrapper.`MEM_INSTANCE.ram.mem[SORT_VEC/4+i] = val ;
	   $display("mem[h%8h] = %d" , SORT_VEC/4+i , dut.lp_riscv.dccm_ram_wrapper.`MEM_INSTANCE.ram.mem[SORT_VEC/4+i]);    
	end
      $display("\n");
      

      
      // Invocation and reset      
      PAD_CLK = 1'b1;
      PAD_RST_N = 1'b0; // Activate asynchronous reset
      #100 PAD_RST_N = 1'b1; // release reset
      
   end
   
   
   always @ (posedge dut.PAD_DONE_FLAG)
     begin
        $display("\n\npost-sorted Vector\n");  
        for  (i=0;i<`MY_N;i=i+1)
          $display("mem[h%8h] = %d" , SORT_VEC/4+i , dut.lp_riscv.dccm_ram_wrapper.`MEM_INSTANCE.ram.mem[SORT_VEC/4+i])  ;
        $display("\n\n");
        $display("Look, Ma! The numbers are sorted!");
        $display("And my ID is at index number: %2d\n\n", dut.lp_riscv.dccm_ram_wrapper.`MEM_INSTANCE.ram.mem[(SORT_VEC/4)-1]);


       $finish() ;
     end

   
endmodule


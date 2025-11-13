module lp_riscv_top (/*AUTOARG*/
   // Outputs
   PAD_DONE_FLAG,
   // Inputs
   PAD_TEST_EN, PAD_RST_N, PAD_IRAM_PROG_WR, PAD_IRAM_PROG_DATA_BYTE,
   PAD_IRAM_PROG_BYTE_IDX_1, PAD_IRAM_PROG_BYTE_IDX_0,
   PAD_IRAM_PROG_BYTE_7, PAD_IRAM_PROG_BYTE_6, PAD_IRAM_PROG_BYTE_5,
   PAD_IRAM_PROG_BYTE_4, PAD_IRAM_PROG_BYTE_3, PAD_IRAM_PROG_BYTE_2,
   PAD_IRAM_PROG_BYTE_1, PAD_IRAM_PROG_BYTE_0,
   PAD_IRAM_PROG_ADDR_BYTE, PAD_FETCH_EN, PAD_EXT_PERF_COUNTERS_9,
   PAD_EXT_PERF_COUNTERS_8, PAD_EXT_PERF_COUNTERS_7,
   PAD_EXT_PERF_COUNTERS_6, PAD_EXT_PERF_COUNTERS_5,
   PAD_EXT_PERF_COUNTERS_4, PAD_EXT_PERF_COUNTERS_3,
   PAD_EXT_PERF_COUNTERS_2, PAD_EXT_PERF_COUNTERS_15,
   PAD_EXT_PERF_COUNTERS_14, PAD_EXT_PERF_COUNTERS_13,
   PAD_EXT_PERF_COUNTERS_12, PAD_EXT_PERF_COUNTERS_11,
   PAD_EXT_PERF_COUNTERS_10, PAD_EXT_PERF_COUNTERS_1,
   PAD_EXT_PERF_COUNTERS_0, PAD_CLOCK_EN, PAD_CLK
   );

   parameter ADDR_W			= 32;
   parameter DATA_W			= 32;
   parameter INT_W			= 64;
   parameter N_EXT_PERF_COUNTERS	= 16;

   /*AUTOINPUT*/
   // Beginning of automatic inputs (from unused autoinst inputs)
   input		PAD_CLK;		// To ioring of ioring.v
   input		PAD_CLOCK_EN;		// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_0;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_1;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_10;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_11;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_12;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_13;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_14;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_15;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_2;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_3;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_4;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_5;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_6;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_7;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_8;// To ioring of ioring.v
   input		PAD_EXT_PERF_COUNTERS_9;// To ioring of ioring.v
   input		PAD_FETCH_EN;		// To ioring of ioring.v
   input		PAD_IRAM_PROG_ADDR_BYTE;// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_0;	// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_1;	// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_2;	// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_3;	// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_4;	// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_5;	// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_6;	// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_7;	// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_IDX_0;// To ioring of ioring.v
   input		PAD_IRAM_PROG_BYTE_IDX_1;// To ioring of ioring.v
   input		PAD_IRAM_PROG_DATA_BYTE;// To ioring of ioring.v
   input		PAD_IRAM_PROG_WR;	// To ioring of ioring.v
   input		PAD_RST_N;		// To ioring of ioring.v
   input		PAD_TEST_EN;		// To ioring of ioring.v
   // End of automatics

   /*AUTOOUTPUT*/
   // Beginning of automatic outputs (from unused autoinst outputs)
   output		PAD_DONE_FLAG;		// From ioring of ioring.v
   // End of automatics

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk_to_core;		// From ioring of ioring.v
   wire			clock_en_to_core;	// From ioring of ioring.v
   wire			done_flag_from_core;	// From lp_riscv of lp_riscv.v
   wire [15:0]		ext_perf_counters_to_core;// From ioring of ioring.v
   wire			fetch_en_to_core;	// From ioring of ioring.v
   wire			iram_prog_addr_byte_to_core;// From ioring of ioring.v
   wire [1:0]		iram_prog_byte_idx_to_core;// From ioring of ioring.v
   wire [7:0]		iram_prog_byte_to_core;	// From ioring of ioring.v
   wire			iram_prog_data_byte_to_core;// From ioring of ioring.v
   wire			iram_prog_wr_to_core;	// From ioring of ioring.v
   wire			rst_n_to_core;		// From ioring of ioring.v
   wire			test_en_to_core;	// From ioring of ioring.v

   /*ioring AUTO_TEMPLATE (
    .PAD_IO_PLACEHOLD.* (),
    ) */

   ioring i_ioring (/*AUTOINST*/
		  // Outputs
		  .PAD_DONE_FLAG	(PAD_DONE_FLAG),
		  .PAD_IO_PLACEHOLD_30	(),			 // Templated
		  .PAD_IO_PLACEHOLD_31	(),			 // Templated
		  .PAD_IO_PLACEHOLD_32	(),			 // Templated
		  .PAD_IO_PLACEHOLD_49	(),			 // Templated
		  .PAD_IO_PLACEHOLD_50	(),			 // Templated
		  .clock_en_to_core	(clock_en_to_core),
		  .test_en_to_core	(test_en_to_core),
		  .iram_prog_byte_to_core(iram_prog_byte_to_core[7:0]),
		  .fetch_en_to_core	(fetch_en_to_core),
		  .iram_prog_byte_idx_to_core(iram_prog_byte_idx_to_core[1:0]),
		  .iram_prog_data_byte_to_core(iram_prog_data_byte_to_core),
		  .clk_to_core		(clk_to_core),
		  .rst_n_to_core	(rst_n_to_core),
		  .ext_perf_counters_to_core(ext_perf_counters_to_core[15:0]),
		  .iram_prog_wr_to_core	(iram_prog_wr_to_core),
		  .iram_prog_addr_byte_to_core(iram_prog_addr_byte_to_core),
		  // Inputs
		  .PAD_CLOCK_EN		(PAD_CLOCK_EN),
		  .PAD_TEST_EN		(PAD_TEST_EN),
		  .PAD_IRAM_PROG_BYTE_0	(PAD_IRAM_PROG_BYTE_0),
		  .PAD_IRAM_PROG_BYTE_1	(PAD_IRAM_PROG_BYTE_1),
		  .PAD_IRAM_PROG_BYTE_2	(PAD_IRAM_PROG_BYTE_2),
		  .PAD_IRAM_PROG_BYTE_3	(PAD_IRAM_PROG_BYTE_3),
		  .PAD_IRAM_PROG_BYTE_4	(PAD_IRAM_PROG_BYTE_4),
		  .PAD_IRAM_PROG_BYTE_5	(PAD_IRAM_PROG_BYTE_5),
		  .PAD_IRAM_PROG_BYTE_6	(PAD_IRAM_PROG_BYTE_6),
		  .PAD_IRAM_PROG_BYTE_7	(PAD_IRAM_PROG_BYTE_7),
		  .PAD_FETCH_EN		(PAD_FETCH_EN),
		  .PAD_IRAM_PROG_BYTE_IDX_0(PAD_IRAM_PROG_BYTE_IDX_0),
		  .PAD_IRAM_PROG_BYTE_IDX_1(PAD_IRAM_PROG_BYTE_IDX_1),
		  .PAD_IRAM_PROG_DATA_BYTE(PAD_IRAM_PROG_DATA_BYTE),
		  .PAD_CLK		(PAD_CLK),
		  .PAD_RST_N		(PAD_RST_N),
		  .PAD_EXT_PERF_COUNTERS_5(PAD_EXT_PERF_COUNTERS_5),
		  .PAD_EXT_PERF_COUNTERS_6(PAD_EXT_PERF_COUNTERS_6),
		  .PAD_EXT_PERF_COUNTERS_0(PAD_EXT_PERF_COUNTERS_0),
		  .PAD_EXT_PERF_COUNTERS_1(PAD_EXT_PERF_COUNTERS_1),
		  .PAD_EXT_PERF_COUNTERS_2(PAD_EXT_PERF_COUNTERS_2),
		  .PAD_EXT_PERF_COUNTERS_3(PAD_EXT_PERF_COUNTERS_3),
		  .PAD_EXT_PERF_COUNTERS_4(PAD_EXT_PERF_COUNTERS_4),
		  .PAD_EXT_PERF_COUNTERS_7(PAD_EXT_PERF_COUNTERS_7),
		  .PAD_EXT_PERF_COUNTERS_8(PAD_EXT_PERF_COUNTERS_8),
		  .PAD_EXT_PERF_COUNTERS_9(PAD_EXT_PERF_COUNTERS_9),
		  .PAD_EXT_PERF_COUNTERS_10(PAD_EXT_PERF_COUNTERS_10),
		  .PAD_EXT_PERF_COUNTERS_11(PAD_EXT_PERF_COUNTERS_11),
		  .PAD_EXT_PERF_COUNTERS_12(PAD_EXT_PERF_COUNTERS_12),
		  .PAD_EXT_PERF_COUNTERS_13(PAD_EXT_PERF_COUNTERS_13),
		  .PAD_EXT_PERF_COUNTERS_14(PAD_EXT_PERF_COUNTERS_14),
		  .PAD_EXT_PERF_COUNTERS_15(PAD_EXT_PERF_COUNTERS_15),
		  .PAD_IRAM_PROG_WR	(PAD_IRAM_PROG_WR),
		  .PAD_IRAM_PROG_ADDR_BYTE(PAD_IRAM_PROG_ADDR_BYTE),
		  .done_flag_from_core	(done_flag_from_core));

   /*lp_riscv AUTO_TEMPLATE (
    .fetch_enable_i (fetch_en_to_core),
    .\(done_.*\)    (\1_from_core[]),
    .\([a-z_]+\)_i  (\1_to_core[]),
    .\([a-z_]+\)    (\1_to_core[]),
    ) */

   lp_riscv    #(
                 .ADDR_W(32),
                 .DATA_W(32),
                 .INT_W(64),
                 .N_EXT_PERF_COUNTERS(16)
		 )
   lp_riscv (/*AUTOINST*/
	     // Outputs
	     .done_flag			(done_flag_from_core),	 // Templated
	     // Inputs
	     .clk			(clk_to_core),		 // Templated
	     .rst_n			(rst_n_to_core),	 // Templated
	     .clock_en_i		(clock_en_to_core),	 // Templated
	     .test_en_i			(test_en_to_core),	 // Templated
	     .fetch_enable_i		(fetch_en_to_core),	 // Templated
	     .ext_perf_counters_i	(ext_perf_counters_to_core[15:0]), // Templated
	     .iram_prog_byte		(iram_prog_byte_to_core[7:0]), // Templated
	     .iram_prog_byte_idx	(iram_prog_byte_idx_to_core[1:0]), // Templated
	     .iram_prog_data_byte	(iram_prog_data_byte_to_core), // Templated
	     .iram_prog_addr_byte	(iram_prog_addr_byte_to_core), // Templated
	     .iram_prog_wr		(iram_prog_wr_to_core));	 // Templated

endmodule // lp_riscv_top

// Local Variables:
// verilog-library-directories:(".")
// verilog-auto-inst-param-value:t
// End:


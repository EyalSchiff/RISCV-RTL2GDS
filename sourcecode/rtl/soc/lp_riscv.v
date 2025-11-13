

module lp_riscv #(
                  parameter ADDR_W = 32,
                  parameter DATA_W = 32,
                  parameter INT_W = 64,
                  parameter N_EXT_PERF_COUNTERS = 16
		  ) (

		     // Clock and Reset
		     input                           clk,
		     input                           rst_n,

		     input                           clock_en_i, // enable clock, otherwise it is gated
		     input                           test_en_i, // enable all clock gates for testing

		     // Core ID, Cluster ID and boot address are considered more or less static
		     // input [31:0]                    boot_addr_i, // TMP internally hardwired
		     //input [3:0]                    core_id_i,
		     //input [5:0]                    cluster_id_i,



		     // Interrupt inputs
		     // input [31:0]                    irq_i_pre, // level sensitive IR lines // TMP EXCLUDED

		     // Debug Interface - TMP EXCLUDED

		     // input                           debug_req_i,
		     // output                          debug_gnt_o,
		     // output                          debug_rvalid_o,
		     // input [14:0]                    debug_addr_i,
		     // input                           debug_we_i,
		     // input [31:0]                    debug_wdata_i,
		     // output [31:0]                   debug_rdata_o,
		     // output                          debug_halted_o,
		     // input                           debug_halt_i,
		     // input                           debug_resume_i,

		     // CPU Control Signals
		     input                           fetch_enable_i,
		     //output                       core_busy_o,       // TMP UNCONNECTED

		     input [N_EXT_PERF_COUNTERS-1:0] ext_perf_counters_i,


		     // TMP instruction ram write interface (to prevent optimize out)
		     input [7:0] iram_prog_byte,
		     input [1:0] iram_prog_byte_idx,
		     input iram_prog_data_byte,
		     input iram_prog_addr_byte,
		     input iram_prog_wr,  

		     output reg done_flag   // TMP added indication for test done (or else without any meaningful output the entire design is mostly optimized out)


		     );
   

   // Debug Interface - TMP EXCLUDED FROM INTERFACE
   
   wire 			debug_req_i = 1'b0      ; // removed input   
   wire 			debug_gnt_o             ; // removed output  
   wire 			debug_rvalid_o          ; // removed output  
   wire [14:0] 			debug_addr_i = 15'd0    ; // removed input   
   wire 			debug_we_i  = 1'b0      ; // removed input   
   wire [31:0] 			debug_wdata_i = 32'd0   ; // removed input   
   wire [31:0] 			debug_rdata_o           ; // removed output  
   wire 			debug_halted_o          ; // removed output  
   wire 			debug_halt_i = 1'b0     ; // removed input   
   wire 			debug_resume_i  =1'b1   ; // removed input   

   // More TMP excluded/fixed
   wire [31:0] 			boot_addr_i = 32'h00000080 ; // TMP internally hardwired
   wire [31:0] 			irq_i_pre   = 32'd0        ; // level sensitive IR lines // TMP EXCLUDED
   wire 			core_busy_o_UNCONNECTED    ; // TMP UNCONNECTED
   wire [3:0] 			core_id_i = 4'b0000 ; // TMP FIXED
   wire [5:0] 			cluster_id_i = 6'b000000 ; // TMP FIXED



   parameter INSTR_RDATA_WIDTH = DATA_W;
   
   
   
   // Instruction memory interface
   wire 			instr_req_o;
   wire 			instr_gnt_i;
   wire 			instr_rvalid_i;
   wire [31:0] 			instr_addr_o;
   wire [INSTR_RDATA_WIDTH-1:0] instr_rdata_i;
   
   // Data memory interface
   wire 			data_req_o;
   wire 			data_gnt_i;
   wire 			data_rvalid_i;
   wire 			data_we_o;
   wire [3:0] 			data_be_o;
   wire [31:0] 			data_addr_o;
   wire [31:0] 			data_wdata_o;
   wire [31:0] 			data_rdata_i;
   wire 			data_err_i;
   
   reg [31:0] 			irq_i;

   reg [5:0] 			cluster_id_i_sampled ;
   

   // TMP instruction ram write sampled interface (to prevent optimize out)
   reg [3:0][7:0] 		iram_prog_addr ;
   reg [3:0][7:0] 		iram_prog_data ;  
   
   always @(posedge clk or negedge rst_n) 
     if (!rst_n)
       begin
          iram_prog_addr = 32'h00000000;
          iram_prog_data = 32'h00000000;        
       end
     else
       begin
          if (iram_prog_addr_byte) iram_prog_addr[iram_prog_byte_idx] = iram_prog_byte ;
          if (iram_prog_data_byte) iram_prog_data[iram_prog_byte_idx] = iram_prog_byte ;               
       end
   
   
   always @(posedge clk or negedge rst_n) 
     begin
        if (!rst_n)
          begin
             irq_i   <= 32'd0; 
             cluster_id_i_sampled <= 5'd0;
          end
        else
          begin
             irq_i    <= irq_i_pre;  
             cluster_id_i_sampled <= cluster_id_i ;
          end
     end 
   
   // TMP added indication for test done (or else without any meaningful output the entire design is mostly optimized out)   
   wire done_flag_d = (data_addr_o == 32'hffffffff) && data_we_o ;
   always @(posedge clk or negedge rst_n) 
     if (!rst_n) done_flag <= 1'b0 ; else done_flag <= done_flag_d ;
   

   riscv_core #(
                .N_EXT_PERF_COUNTERS(N_EXT_PERF_COUNTERS),
                .INSTR_RDATA_WIDTH(INSTR_RDATA_WIDTH),
                .SUPPORT_COMPRESS (0) // HARDWIRED DISABLE OF COMPRESS SUPORT
                )
   i_riscv_core (/*AUTOINST*/
                 // Outputs
                 .instr_req_o           (instr_req_o),
                 .instr_addr_o          (instr_addr_o[31:0]),
                 .data_req_o            (data_req_o),
                 .data_we_o             (data_we_o),
                 .data_be_o             (data_be_o[3:0]),
                 .data_addr_o           (data_addr_o[31:0]),
                 .data_wdata_o          (data_wdata_o[31:0]),
                 .debug_gnt_o           (debug_gnt_o),
                 .debug_rvalid_o        (debug_rvalid_o),
                 .debug_rdata_o         (debug_rdata_o[31:0]),
                 .debug_halted_o        (debug_halted_o),
                 .core_busy_o           (core_busy_o_UNCONNECTED),
                 // Inputs
                 .clk_i                 (clk),                   // Templated
                 .rst_ni                (rst_n),                 // Templated
                 .clock_en_i            (clock_en_i),
                 .test_en_i             (test_en_i),
                 .boot_addr_i           (boot_addr_i[31:0]),
                 .core_id_i             (core_id_i[3:0]),
                 .cluster_id_i          (cluster_id_i_sampled[5:0]),
                 .instr_gnt_i           (instr_gnt_i),
                 .instr_rvalid_i        (instr_rvalid_i),
                 .instr_rdata_i         (instr_rdata_i[INSTR_RDATA_WIDTH-1:0]),
                 .data_gnt_i            (data_gnt_i),
                 .data_rvalid_i         (data_rvalid_i),
                 .data_rdata_i          (data_rdata_i[31:0]),
                 .data_err_i            (data_err_i),
                 .irq_i                 (irq_i[31:0]),
                 .debug_req_i           (debug_req_i),
                 .debug_addr_i          (debug_addr_i[14:0]),
                 .debug_we_i            (debug_we_i),
                 .debug_wdata_i         (debug_wdata_i[31:0]),
                 .debug_halt_i          (debug_halt_i),
                 .debug_resume_i        (debug_resume_i),
                 .fetch_enable_i        (fetch_enable_i),
                 .ext_perf_counters_i   (ext_perf_counters_i[N_EXT_PERF_COUNTERS-1:0]));


   
   // IS
   //-----------------------------

   wire [31:0] instr_rdata_i_0;
   wire [31:0] instr_rdata_i_1;              
   reg 	       is_addr_sel_0;
   reg 	       is_cs_s;

   
   
   always @(posedge clk or negedge rst_n) 
     begin
        if (!rst_n)
          begin
             is_addr_sel_0 <= 1'b0;
             is_cs_s       <= 1'b0;
          end
        else
          begin
             is_addr_sel_0   <= ~instr_addr_o[16];
             is_cs_s         <= instr_req_o; 
          end
     end
   
   assign instr_gnt_i = instr_req_o;

   assign instr_rvalid_i = is_cs_s;

   wire [31:0] instr_addr_muxed = iram_prog_wr ? iram_prog_addr : instr_addr_o  ;   // TMP muxed with instr ram prog.             

   // instruction memory wrapper:
   sram_sp_instr_wrap #(
		.INSTR_RDATA_WIDTH(INSTR_RDATA_WIDTH)
   )
   iccm_ram_wrapper (
		.clk(clk),
		.instr_req_i(instr_req_o),
 		.instr_addr_i(instr_addr_o),
		.iram_prog_wr(iram_prog_wr),
		.instr_addr_muxed(instr_addr_muxed),
		.iram_prog_data(iram_prog_data),
		.is_addr_sel_0(is_addr_sel_0),
		.instr_rdata_o(instr_rdata_i)
    );

   // DS
   //-----------------------------

   wire [31:0] data_rdata_i_0;
   wire [31:0] data_rdata_i_1;              
   reg 	[1:0]  ds_addr_sel_0;
   reg 	       ds_cs_s;
   

   always @(posedge clk or negedge rst_n) 
     begin
        if (!rst_n)
          begin
             ds_addr_sel_0 <= 2'b00;
             ds_cs_s       <= 1'b0;
          end
        else
          begin
             ds_addr_sel_0   <= ~data_addr_o[16:15];
             ds_cs_s         <= data_req_o;    
          end
     end
   
   assign data_gnt_i = data_req_o;

   assign data_rvalid_i = ds_cs_s;

   assign data_err_i =1'b0;
   
   // data memory wrapper - TODO: 
   sram_sp_data_wrap dccm_ram_wrapper (
		.clk(clk),
		.data_req_i(data_req_o),
		.data_addr_i(data_addr_o),
		.data_we_i(data_we_o),
		.data_be_i(data_be_o),
		.data_wdata_i(data_wdata_o),
		.ds_addr_sel_0(ds_addr_sel_0),
		.data_rdata_o(data_rdata_i)
   );
 
endmodule

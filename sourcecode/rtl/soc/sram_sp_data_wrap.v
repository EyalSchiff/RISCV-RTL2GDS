module sram_sp_data_wrap (
		input 		clk,
		input 		data_req_i,
		input [31:0] 	data_addr_i,
		input 		data_we_i,
		input [3:0] 	data_be_i,
		input [31:0]	data_wdata_i,
		input [1:0]	ds_addr_sel_0,
		output reg [31:0] data_rdata_o
   );

   wire [31:0] data_rdata_i_0;
   wire [31:0] data_rdata_i_1;     

// Fill in your instantiations here
// You must use the name "dccm_ram_0" for the memory instantiation!!!

endmodule

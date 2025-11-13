module sram_sp_instr_wrap #( parameter INSTR_RDATA_WIDTH = 32) (
	input clk,
	input instr_req_i,
 	input [31:0] instr_addr_i,
	input iram_prog_wr,
	input [31:0] instr_addr_muxed,
	input [3:0][7:0] iram_prog_data,
	input is_addr_sel_0,
	output [INSTR_RDATA_WIDTH-1:0] instr_rdata_o
);

   wire [31:0] instr_rdata_i_0;
   wire [31:0] instr_rdata_i_1;       

   sram_sp_16384x32_m32_be_wrap 
     iccm_ram_0 (
                 .CLK(clk),     
                 .CEN(!(instr_req_i && !instr_addr_i[16])), 
                 .GWEN(!iram_prog_wr),                    
                 .BEN(4'b0000),        
                 .A(instr_addr_muxed[15:2]),      
                 .D(iram_prog_data),   
                 .Q(instr_rdata_i_0)                                 
                 );

   sram_sp_16384x32_m32_be_wrap 
     iccm_ram_1 (
                 .CLK(clk),     
                 .CEN(!(instr_req_i && instr_addr_i[16])), 
                 .GWEN(!iram_prog_wr),                    
                 .BEN(4'b0000),        
                 .A(instr_addr_muxed[15:2]),      
                 .D(32'h0000),   
                 .Q(instr_rdata_i_1)                                       
                 );

assign instr_rdata_o = is_addr_sel_0 ? instr_rdata_i_0 : instr_rdata_i_1;  

endmodule

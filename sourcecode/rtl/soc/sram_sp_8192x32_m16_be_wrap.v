module sram_sp_8192x32_m16_be_wrap (

				 output [31:0] Q,  // Read Data 
				 input  CLK,       // Clock
				 input  CEN,       // Chip Enable
				 input  [3:0] BEN, // Byte Enable
				 input  GWEN,      // Global Write Enable
				 input [12:0] A,   // Address
				 input [31:0] D    // Write Data
				 ) ;
   
   // unused sram test output pins
   wire 				      CENY_UNCONNECTED_SRAM_OUTPUT;           
   wire [31:0]				      WENY_UNCONNECTED_SRAM_OUTPUT;          
   wire [12:0] 				      AY_UNCONNECTED_SRAM_OUTPUT;
   wire [1:0] 				      SO_UNCONNECTED_SRAM_OUTPUT;
   wire 				      GWENY_UNCONNECTED_SRAM_OUTPUT; 

   sp_hde_8192_m16 sram_sp_8192x32  (
				  .Q		(Q),                     
				  .CLK		(CLK),
				  .CEN		(CEN),
				  .WEN		({ {8{BEN[3]}} , {8{BEN[2]}} , {8{BEN[1]}} , {8{BEN[0]}} }),
				  .GWEN		(GWEN),
				  .A		(A),
				  .D		(D),
      
				  // Unused or fixed configuration connections
      
				  .CENY		(CENY_UNCONNECTED_SRAM_OUTPUT),           
				  .WENY		(WENY_UNCONNECTED_SRAM_OUTPUT),
				  .GWENY	(GWENY_UNCONNECTED_SRAM_OUTPUT),
				  .AY		(AY_UNCONNECTED_SRAM_OUTPUT),  
				  .SO		(SO_UNCONNECTED_SRAM_OUTPUT),  
				  .EMA		(3'b010),
				  .EMAW		(2'b00),
				  .TEN		(1'b0),
				  .TCEN		(1'b0),
				  .TWEN		(32'b0),
				  .TGWEN	(1'b0),
				  .TA		(13'b0),
				  .TD		(32'b0),
				  .RET1N	(1'b0),
				  .SI		(2'b00),
				  .SE		(1'b0),
				  .DFTRAMBYP	(1'b0)
				  ) ;  

endmodule


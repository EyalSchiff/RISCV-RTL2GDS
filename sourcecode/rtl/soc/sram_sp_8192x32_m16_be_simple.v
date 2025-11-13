module sram_sp_8192x32_m16_be_wrap (

  output [31:0] Q,  // Read Data 
  input  CLK,       // Clock
  input  CEN,       // Chip Enable NOT
  input  [3:0] BEN, // Byte Enable NOT
  input  GWEN,      // Global Write Enable NOT
  input [12:0] A,   // Address
  input [31:0] D    // Write Data
 ) ;

 localparam  ADDR_WIDTH = 13 ;
 localparam  DATA_WIDTH = 32 ;
 localparam  NUM_WORDS = (2**ADDR_WIDTH)*(DATA_WIDTH/8) ;  // seems as actually number of Bytes (?)

 parameter RAM_SIZE = NUM_WORDS; // in bytes (?)
 
sp_ram_m16
  #(
    .ADDR_WIDTH(ADDR_WIDTH),
    .DATA_WIDTH(DATA_WIDTH),
    .NUM_WORDS(NUM_WORDS)
  ) ram (
    // Clock and Reset
    .clk(CLK),                // input  logic                                      
    .en_i((!CEN)||(!GWEN)),  // input                     
    .addr_i(A),              // input [ADDR_WIDTH-1:0]   
    .wdata_i(D),             // input [DATA_WIDTH-1:0]   
    .rdata_o(Q),             // output[DATA_WIDTH-1:0]   
    .we_i(!GWEN),            // input                    
    .be_i(~BEN)              // input [DATA_WIDTH/8-1:0] 
  );                       


endmodule

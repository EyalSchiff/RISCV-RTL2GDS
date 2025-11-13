module sp_hde_16384_m32 (CENY, WENY, AY, GWENY, Q, SO, CLK, CEN, WEN, A, D, EMA, EMAW, TEN,
    TCEN, TWEN, TA, TD, GWEN, TGWEN, RET1N, SI, SE, DFTRAMBYP);

  output  CENY;
  output [31:0] WENY;
  output [13:0] AY;
  output  GWENY;
  output [31:0] Q;
  output [1:0] SO;
  input  CLK;
  input  CEN;
  input [31:0] WEN;
  input [13:0] A;
  input [31:0] D;
  input [2:0] EMA;
  input [1:0] EMAW;
  input  TEN;
  input  TCEN;
  input [31:0] TWEN;
  input [13:0] TA;
  input [31:0] TD;
  input  GWEN;
  input  TGWEN;
  input  RET1N;
  input [1:0] SI;
  input  SE;
  input  DFTRAMBYP;

  
 localparam  ADDR_WIDTH = 14 ;
 localparam  DATA_WIDTH = 32 ;
 localparam  NUM_WORDS = (2**ADDR_WIDTH)*(DATA_WIDTH/8) ;  // seems as actually number of Bytes (?)

 parameter RAM_SIZE = NUM_WORDS; // in bytes (?)

 
  // unused sram test output pins
  assign CENY = 1'b0 ;           
  assign WENY = 32'd0 ;          
  assign AY = 14'd0 ;
  assign SO =2'b00 ;

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
    .be_i(~{&WEN[31:24],&WEN[23:16],&WEN[15:8],&WEN[7:0]})    // input [DATA_WIDTH/8-1:0] 
  );                       
  
  
  
endmodule

module sp_hde_16384_m16 (CENY, WENY, AY, GWENY, Q, SO, CLK, CEN, WEN, A, D, EMA, EMAW, TEN,
    TCEN, TWEN, TA, TD, GWEN, TGWEN, RET1N, SI, SE, DFTRAMBYP);

  output  CENY;
  output [31:0] WENY;
  output [13:0] AY;
  output  GWENY;
  output [31:0] Q;
  output [1:0] SO;
  input  CLK;
  input  CEN;
  input [31:0] WEN;
  input [13:0] A;
  input [31:0] D;
  input [2:0] EMA;
  input [1:0] EMAW;
  input  TEN;
  input  TCEN;
  input [31:0] TWEN;
  input [13:0] TA;
  input [31:0] TD;
  input  GWEN;
  input  TGWEN;
  input  RET1N;
  input [1:0] SI;
  input  SE;
  input  DFTRAMBYP;

  
 localparam  ADDR_WIDTH = 14 ;
 localparam  DATA_WIDTH = 32 ;
 localparam  NUM_WORDS = (2**ADDR_WIDTH)*(DATA_WIDTH/8) ;  // seems as actually number of Bytes (?)

 parameter RAM_SIZE = NUM_WORDS; // in bytes (?)

 
  // unused sram test output pins
  assign CENY = 1'b0 ;           
  assign WENY = 32'd0 ;          
  assign AY = 14'd0 ;
  assign SO =2'b00 ;

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
    .be_i(~{&WEN[31:24],&WEN[23:16],&WEN[15:8],&WEN[7:0]})    // input [DATA_WIDTH/8-1:0] 
  );                       
  
  
  
endmodule

module sp_hse_16384_m32 (CENY, WENY, AY, GWENY, Q, SO, CLK, CEN, WEN, A, D, EMA, EMAW, TEN,
    TCEN, TWEN, TA, TD, GWEN, TGWEN, RET1N, SI, SE, DFTRAMBYP);

  output  CENY;
  output [31:0] WENY;
  output [13:0] AY;
  output  GWENY;
  output [31:0] Q;
  output [1:0] SO;
  input  CLK;
  input  CEN;
  input [31:0] WEN;
  input [13:0] A;
  input [31:0] D;
  input [2:0] EMA;
  input [1:0] EMAW;
  input  TEN;
  input  TCEN;
  input [31:0] TWEN;
  input [13:0] TA;
  input [31:0] TD;
  input  GWEN;
  input  TGWEN;
  input  RET1N;
  input [1:0] SI;
  input  SE;
  input  DFTRAMBYP;

  
 localparam  ADDR_WIDTH = 14 ;
 localparam  DATA_WIDTH = 32 ;
 localparam  NUM_WORDS = (2**ADDR_WIDTH)*(DATA_WIDTH/8) ;  // seems as actually number of Bytes (?)

 parameter RAM_SIZE = NUM_WORDS; // in bytes (?)

 
  // unused sram test output pins
  assign CENY = 1'b0 ;           
  assign WENY = 32'd0 ;          
  assign AY = 14'd0 ;
  assign SO =2'b00 ;

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
    .be_i(~{&WEN[31:24],&WEN[23:16],&WEN[15:8],&WEN[7:0]})    // input [DATA_WIDTH/8-1:0] 
  );                       
  
  
  
endmodule

module sp_hse_16384_m16 (CENY, WENY, AY, GWENY, Q, SO, CLK, CEN, WEN, A, D, EMA, EMAW, TEN,
    TCEN, TWEN, TA, TD, GWEN, TGWEN, RET1N, SI, SE, DFTRAMBYP);

  output  CENY;
  output [31:0] WENY;
  output [13:0] AY;
  output  GWENY;
  output [31:0] Q;
  output [1:0] SO;
  input  CLK;
  input  CEN;
  input [31:0] WEN;
  input [13:0] A;
  input [31:0] D;
  input [2:0] EMA;
  input [1:0] EMAW;
  input  TEN;
  input  TCEN;
  input [31:0] TWEN;
  input [13:0] TA;
  input [31:0] TD;
  input  GWEN;
  input  TGWEN;
  input  RET1N;
  input [1:0] SI;
  input  SE;
  input  DFTRAMBYP;

  
 localparam  ADDR_WIDTH = 14 ;
 localparam  DATA_WIDTH = 32 ;
 localparam  NUM_WORDS = (2**ADDR_WIDTH)*(DATA_WIDTH/8) ;  // seems as actually number of Bytes (?)

 parameter RAM_SIZE = NUM_WORDS; // in bytes (?)

 
  // unused sram test output pins
  assign CENY = 1'b0 ;           
  assign WENY = 32'd0 ;          
  assign AY = 14'd0 ;
  assign SO =2'b00 ;

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
    .be_i(~{&WEN[31:24],&WEN[23:16],&WEN[15:8],&WEN[7:0]})    // input [DATA_WIDTH/8-1:0] 
  );                       
  
  
  
endmodule

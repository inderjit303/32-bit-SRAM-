\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/    /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/   /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  

//Your Verilog/System Verilog Code Starts Here:
module fivetothree_two_decoder_isd(d,a,enbl);
input [4:0]a;
input enbl;
output reg [31:0]d;
always @(a) 
  begin
    if(enbl==1)
      begin
        d[0] = !a[0] & !a[1] & !a[2] & !a[3] & !a[4];
        d[1] = a[0] & !a[1] & !a[2] & !a[3] & !a[4]; 
        d[2] = !a[0] & a[1] & !a[2] & !a[3] & !a[4];
        d[3] = a[0] & a[1] & !a[2] & !a[3] & !a[4];
        d[4] = !a[0] & !a[1] & a[2] & !a[3] & !a[4];
        d[5] = a[0] & !a[1] & a[2] & !a[3] & !a[4];
        d[6] = !a[0] & a[1] & a[2] & !a[3] & !a[4];
        d[7] = a[0] & a[1] & a[2] & !a[3] & !a[4];
        d[8] = !a[0] & !a[1] & !a[2] & a[3] & !a[4];
        d[9] = a[0] & !a[1] & !a[2] & a[3] & !a[4];
        d[10] = !a[0] & a[1] & !a[2] & a[3] & !a[4];
        d[11] = a[0] & a[1] & !a[2] & a[3] & !a[4]; 
        d[12] = !a[0] & !a[1] & a[2] & a[3] & !a[4];
        d[13] = a[0] & !a[1] & a[2] & a[3] & !a[4];
        d[14] = !a[0] & a[1] & a[2] & a[3] & !a[4];
        d[15] = a[0] & a[1] & a[2] & a[3] & !a[4];
        d[16] = !a[0] & !a[1] & !a[2] & !a[3] & a[4];
        d[17] = a[0] & !a[1] & !a[2] & !a[3] & a[4]; 
        d[18] = !a[0] & a[1] & !a[2] & !a[3] & a[4];
        d[19] = a[0] & a[1] & !a[2] & !a[3] & a[4];
        d[20] = !a[0] & !a[1] & a[2] & !a[3] & a[4];
        d[21] = a[0] & !a[1] & a[2] & !a[3] & a[4];
        d[22] = !a[0] & a[1] & a[2] & !a[3] & a[4];
        d[23] = a[0] & a[1] & a[2] & !a[3] & a[4];
        d[24] = !a[0] & !a[1] & !a[2] & a[3] & a[4];
        d[25] = a[0] & !a[1] & !a[2] & a[3] & a[4];
        d[26] = !a[0] & a[1] & !a[2] & a[3] & a[4];
        d[27] = a[0] & a[1] & !a[2] & a[3] & a[4]; 
        d[28] = !a[0] & !a[1] & a[2] & a[3] & a[4];
        d[29] = a[0] & !a[1] & a[2] & a[3] & a[4];
        d[30] = !a[0] & a[1] & a[2] & a[3] & a[4];
        d[31] = a[0] & a[1] & a[2] & a[3] & a[4];
      end
    else d = 8'h00000000;
  end
endmodule



//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  [4:0] a;//input
		logic  enbl;//input
		logic  [31:0] d;//output
//The $random() can be replaced if user wants to assign values
		assign a = 30;
		assign enbl = 1;
		fivetothree_two_decoder_isd fivetothree_two_decoder_isd(.a(a), .enbl(enbl), .d(d));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule


# 32-bit-SRAM-
32-bit SRAM implementation in eSim using Skywater  130nm CMOS technology 

# Mixed signal design of Digital sinewave generator using eSim:
This repository contains an attempt to mixed signal design of a 8-bit Digital Sine wave generator using eSim

- [Abstract](#abstract)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Reference circuit details](#reference-circuit-details)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
- [PRS generator block](#prs-generator-block)
- [Sine wave Look up table block](#sine-wave-look-up-table-block) 
- [Netlist](#netlist) 
- [NgSpice plots](#ngspice-plots) 
- [Steps to run generate NgVeri Model](#steps-to-run-generate-ngveri-model)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)

# Abstract
Producing and manipulating the sine wave function is a common problem encountered by circuit designers. Sine wave circuits pose a significant design challenge because they represent a constantly controlled linear oscillator. Sine wave circuitry is required in a number of diverse areas, including audio testing, calibration equipment, transducer drives, power conditioning and automatic test equipment (ATE). Control of frequency, amplitude or distortion level is often required and all three parameters must be simultaneously controlled in many applications with analog and digital approaches. This paper presents detailed design of a 8 bit digital sine wave generator with the help of pseudo-random-sequence (PRS) generator, Look-up table (LUT) and analog low pass filter. 

# Reference Circuit Diagram

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157652578-c5bfb134-c1a2-4abe-9431-2b881085eb0c.png">
</p> 
<p align="center">
Fig 1. Pseudo-random-sequence (PRS) generator
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157651325-4f1d954d-92be-4244-bfab-5194208e27d0.png">
</p> 
<p align="center">
Fig 2. Analog Block: Second order Sallen Key Low Pass Filter
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157652101-c89aec12-923b-4a05-b98c-f48f9760511a.png">
</p> 
<p align="center">
Fig 3. Digital Sine wave generator block diagram
</p>

# Reference waveform

Fig. 4 depicts desired waveforms at the output of analog Low pass filter which is digitally controlled with input clock frequency.  

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157652251-52f845f9-a6f5-4633-b26d-20374c6a3c13.png">
</p> 
<p align="center">
Fig 4.  Output of Analog filter
</p>

# Reference circuit details 
Here, the digital block consists of a 8 bit pseudo-random-sequence (PRS) generator running at clock frequency of fCLK = 1MHz. This structure is called as Fibonacci Linear feedback shift register (LFSR). The bit positions that affect the next state are called the taps. In the Fig 1, the taps are [6,5,4]. The rightmost bit of the LFSR is called the output bit. The taps are XORed sequentially with the output bit and then fed back into the leftmost bit. The sequence of bits in the rightmost position is called the Pseudo random sequence output which is finite stream of numbers in the range 1-255 equally distributed. In addition a compare function is added, which turns one digital output pin high whenever a value in the shift register (SR) is less the value of the compare input. This will create a stream of high pulses proportional to the compare value. 

Next it is fed to Sine wave look up table (LUT), which look-up table method for sine wave generation. This method, involves the synthesis of sine waves with frequencies which are multiples of the fundamental frequency for which the table elements are calculated and used to approximate a sine wave. Digital block will be implemented in Verilog, whereas analog block consisting of analog LPF will be implemented in eSim as shown in Fig 3. The digital output of the PRS generator is then driving a 2nd order low-pass filter build using standard analog components such opamp, resistors and capacitors as shown in Fig 2. Analog block is implemented using 2nd order Sallen key filter Low pass filter designed for a cutoff frequency fOUT = 1 KHz. 
 
# Software Used

## eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
For more details refer:
https://esim.fossee.in/home

## NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
http://ngspice.sourceforge.net/docs.html

## Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
https://www.makerchip.com/

## Verilator
It is a tool which converts Verilog code to C++ objects. Refer: https://www.veripool.org/verilator/

# Circuit diagram in eSim 

The following is the first version of schematic in eSim is shown in fig 5
It consists of 8 bit PRS generator, digital sine wave LUT generator, 10 bit DAC used as 8 bit DAC and 2nd order sallen key low pass filter tuned at 1KHz. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157656849-9fb3ed2e-23b5-40e9-98d4-4816fcfcca8d.png">
</p> 
<p align="center">
Fig 5.  Digital sine wave generator circuit (Attempt 1) 
</p>

First attempt was unsecuccesful, so in 2nd attempt 2nd order sallen key Low pass filter was replaced by RLC circuit tuned at 1KHz frequency as shown in fig 6

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157664044-19782a8a-0194-42e6-9f13-b9ae4c03c8b5.png">
</p> 
<p align="center">
Fig 6.  Digital sine wave generator circuit (Attempt 2) 
</p>

Second attempt was also unsecuccesful, so in 3rd attempt, number of data points for LUT were increased from 16 to 256 as shown in fig 7

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157726867-270e2832-5507-427c-bfc0-f96a87a78df4.png">
</p> 
<p align="center">
Fig 7.  Digital sine wave generator circuit (Attempt 3) 
</p>


# PRS generator block 
PRS generator block shown in fig 8, generates a finite stream of numbers in range 1 to 255 equally distributed. In addition we add a compare function, which turns one digital output pin high whenever a value in the shift register (SR) is less the value of the compare input. This will create a stream of high pulses proportional to the compare value. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157664490-5ce19e50-ff39-43f1-bd8a-bfad2ffa3002.png">
</p> 
<p align="center">
Fig 8.  PRS generator block
</p>

## Verilog code: 
```
module inderjit_prs8bit_generator (clk, rst, out);
    input clk, rst;
    reg [8:1] compare;
    output reg out;
    reg [8:1] sr;
    //reg [8:1] compare;
    always @(posedge clk)
    begin
        if (rst) begin
            sr  <= 8'b10101010;     // initial non-zero value
            out <= 0;
        end
        else begin
            sr[8:2] <= sr[7:1];
            sr[1]   <= sr[4] ^ sr[5] ^ sr[6] ^ sr[8];
	    compare = 8'h80;
            out     <= (compare >= sr);    
        end
    end
endmodule
```

## Makerchip code: 
```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/ /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/
//Your Verilog/System Verilog Code Starts Here:

module inderjit_prs8bit_generator (clk, rst, out);
    input clk, rst;
    reg [8:1] compare;
    output reg out;
    reg [8:1] sr;
    //reg [8:1] compare;
    always @(posedge clk)
    begin
        if (rst) begin
            sr  <= 8'b10101010;     // initial non-zero value
            out <= 0;
        end
        else begin
            sr[8:2] <= sr[7:1];
            sr[1]   <= sr[4] ^ sr[5] ^ sr[6] ^ sr[8];
	    compare = 8'h80;
            out     <= (compare >= sr);    
        end
    end
endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  rst;//input
		logic  out;//output
//The $random() can be replaced if user wants to assign values
		assign rst = reset;
		inderjit_prs8bit_generator inderjit_prs8bit_generator(.clk(clk), .rst(rst), .out(out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule
```

## Makerchip plots
Makerchip output plots for PRS generator block are shown in fig 9. As the sift register value range is between 1 to 255 means if compare value is  11111111, the output will be always 1. If the compare value is 0, the output will always be 0. Fig 9 shows the compressed version of the PRS generator block waveforms for compare value 11111110 which shows one low pulse in a periodic stream after 255 clock pulses with 8 bit PRS period (i.e 2^n-1, where n = 8)  

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157675138-d0c3ee30-9377-4740-b1a1-d2958eeb0f2a.png">
</p> 
<p align="center">
Fig 9.  Makerchip plots for PRS generator (Compressed version: Compare value 11111110) 
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157675162-61685b52-6ee3-4d8a-bf16-16d07941b3d7.png">
</p> 
<p align="center">
Fig 10.  Makerchip plots for PRS generator (Compare value 11111110) 
</p>

Fig 10 shows PRS generator block output waveforms for compare value 10100000 which shows output high when compare value is above or equal the value in the shift register.

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157675195-5fbe69cf-504c-4653-906b-82803f48b3b5.png">
</p> 
<p align="center">
Fig 11.  Makerchip plots for PRS generator (Compare value 10000000) 
</p>


# Sine wave Look up table block 

Fig 12 shows the digital block of sine wave lookup table. The output of PRS generator is fed to dsine0 input with a common clock. LUT contains 16 data points representing Sine wave which corresponds to the output i.e 8 bit data output from data_out0 to data_out7.

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157664502-b3234cf4-fe05-4875-9bfb-896fa147734f.png">
</p> 
<p align="center">
Fig 12.  Sine wave looktup table block 
</p>


## Verilog code: 
```
module inderjit_digi_sinewave_generator(clk, dsine, data_out);
//declare input and output
    input clk;
    input dsine; 
    output [7:0] data_out;
//8 bit Sine lookup table   
    reg [7:0] sine [0:16];
//Internal signals  
    integer i;  
    reg [7:0] data_out; 
 //Initialize the sine values with samples. 

        initial begin
        i = 0;
        sine[0] = 0;
        sine[1] = 76;
        sine[2] = 141;
        sine[3] = 185;
        sine[4] = 200;
        sine[5] = 185;
        sine[6] = 141;
        sine[7] = 76;
        sine[8] = 0;
        sine[9] = -76;
        sine[10] = -141;
        sine[11] = -185;
        sine[12] = -200;
        sine[13] = -185;
        sine[14] = -141;
        sine[15] = -76;
        sine[16] = 0;
    end

    //At every positive edge of the clock, output a sine wave sample.
    always@ (posedge clk)
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 16)
            i = 0;
    end
endmodule
```
## Verilog code (Attempt 3) 
```
module inderjit_digi_sinewave_generator(clk, dsine, data_out);
//declare input and output
    input clk;
    input dsine; 
    output [7:0] data_out;
//8 bit Sine lookup table   
    reg [7:0] sine [0:256];
//Internal signals  
    integer i;  
    reg [7:0] data_out; 
 //Initialize the sine values with samples. 

        initial begin
        i = 0;
        sine[0] = 0;
        sine[1] = 2;
        sine[2] = 5;
        sine[3] = 7;
        sine[4] = 10;
        sine[5] = 12;
        sine[6] = 15;
        sine[7] = 17;
        sine[8] = 19;
        sine[9] = 22;
        sine[10] = 24;
        sine[11] = 27;
        sine[12] = 29;
        sine[13] = 31;
        sine[14] = 34;
        sine[15] = 36;
        sine[16] = 39;
         sine[17] = 40;
        sine[18] = 43;
        sine[19] = 45;
        sine[20] = 47;
        sine[21] = 49;
        sine[22] = 51;
        sine[23] = 53;
        sine[24] = 55;
        sine[25] = 57;
        sine[26] = 59;
        sine[27] = 61;
        sine[28] = 63;
        sine[29] = 65;
        sine[30] = 67;
        sine[31] = 69;
        sine[32] = 70;
        sine[33] = 72;
         sine[34] = 74;
        sine[35] = 75;
        sine[36] = 77;
        sine[37] = 79;
        sine[38] = 80;
        sine[39] = 82;
        sine[40] = 83;
        sine[41] = 84;
        sine[42] = 86;
        sine[43] = 87;
        sine[44] = 88;
        sine[45] = 89;
        sine[46] = 90;
        sine[47] = 91;
        sine[48] = 92;
        sine[49] = 93;
        sine[50] = 94;
         sine[51] = 95;
        sine[52] = 96;
        sine[53] = 96;
        sine[54] = 97;
        sine[55] = 97;
        sine[56] = 98;
        sine[57] = 98;
        sine[58] = 99;
        sine[59] = 99;
        sine[60] = 99;
        sine[61] = 99;
        sine[62] = 100;
        sine[63] = 100;
        sine[64] = 100;
        sine[65] = 100;
        sine[66] = 100;
        sine[67] = 99;
         sine[68] = 99;
        sine[69] = 99;
        sine[70] = 99;
        sine[71] = 98;
        sine[72] = 98;
        sine[73] = 97;
        sine[74] = 97;
        sine[75] = 96;
        sine[76] = 96;
        sine[77] = 95;
        sine[78] = 94;
        sine[79] = 93;
        sine[80] = 92;
        sine[81] = 91;
        sine[82] = 90;
        sine[83] = 89;
        sine[84] = 88;
         sine[85] = 87;
        sine[86] = 86;
        sine[87] = 84;
        sine[88] = 83;
        sine[89] = 81;
        sine[90] = 80;
        sine[91] = 78;
        sine[92] = 77;
        sine[93] = 75;
        sine[94] = 74;
        sine[95] = 72;
        sine[96] = 70;
        sine[97] = 68;
        sine[98] = 67;
        sine[99] = 65;
        sine[100] = 63;
        sine[101] = 61;
         sine[102] = 59;
        sine[103] = 57;
        sine[104] = 55;
        sine[105] = 53;
        sine[106] = 51;
        sine[107] = 49;
        sine[108] = 47;
        sine[109] = 45;
        sine[110] = 42;
        sine[111] = 40;
        sine[112] = 38;
        sine[113] = 36;
        sine[114] = 34;
        sine[115] = 31;
        sine[116] = 29;
        sine[117] = 27;
        sine[118] = 24;
         sine[119] = 22;
        sine[120] = 19;
        sine[121] = 17;
        sine[122] = 15;
        sine[123] = 12;
        sine[124] = 10;
        sine[125] = 7;
        sine[126] = 5;
           sine[127] = 2;
           sine[128] = 0;
        sine[129] = -2;
        sine[130] = -5;
        sine[131] = -7;
        sine[132] = -10;
        sine[133] = -12;
        sine[134] = -15;
        sine[135] = -17;
        sine[136] = -19;
        sine[137] = -22;
        sine[138] = -24;
        sine[139] = -27;
        sine[140] = -29;
        sine[141] = -31;
        sine[142] = -34;
        sine[143] = -36;
        sine[144] = -39;
         sine[145] = -40;
        sine[146] = -43;
        sine[147] = -45;
        sine[148] = -47;
        sine[149] = -49;
        sine[150] = -51;
        sine[151] = -53;
        sine[152] = -55;
        sine[153] = -57;
        sine[154] = -59;
        sine[155] = -61;
        sine[156] = -63;
        sine[157] = -65;
        sine[158] = -67;
        sine[159] = -69;
        sine[160] = -70;
        sine[161] = -72;
         sine[162] = -74;
        sine[163] = -75;
        sine[164] = -77;
        sine[165] = -79;
        sine[166] = -80;
        sine[167] = -82;
        sine[168] = -83;
        sine[169] = -84;
        sine[170] = -86;
        sine[171] = -87;
        sine[172] = -88;
        sine[173] = -89;
        sine[174] = -90;
        sine[175] = -91;
        sine[176] = -92;
        sine[177] = -93;
        sine[178] = -94;
         sine[179] = -95;
        sine[180] = -96;
        sine[181] = -96;
        sine[182] = -97;
        sine[183] = -97;
        sine[184] = -98;
        sine[185] = -98;
        sine[186] = -99;
        sine[187] = -99;
        sine[188] = -99;
        sine[189] = -99;
        sine[190] = -100;
        sine[191] = -100;
        sine[192] = -100;
        sine[193] = -100;
        sine[194] = -100;
        sine[195] = -99;
         sine[196] = -99;
        sine[197] = -99;
        sine[198] = -99;
        sine[199] = -98;
        sine[200] = -98;
        sine[201] = -97;
        sine[202] = -97;
        sine[203] = -96;
        sine[204] = -96;
        sine[205] = -95;
        sine[206] = -94;
        sine[207] = -93;
        sine[208] = -92;
        sine[209] = -91;
        sine[210] = -90;
        sine[211] = -89;
        sine[212] = -88;
         sine[213] = -87;
        sine[214] = -86;
        sine[215] = -84;
        sine[216] = -83;
        sine[217] = -81;
        sine[218] = -80;
        sine[219] = -78;
        sine[220] = -77;
        sine[221] = -75;
        sine[222] = -74;
        sine[223] = -72;
        sine[224] = -70;
        sine[225] = -68;
        sine[226] = -67;
        sine[227] = -65;
        sine[228] = -63;
        sine[229] = -61;
         sine[230] = -59;
        sine[231] = -57;
        sine[232] = -55;
        sine[233] = -53;
        sine[234] = -51;
        sine[235] = -49;
        sine[236] = -47;
        sine[237] = -45;
        sine[238] = -42;
        sine[239] = -40;
        sine[240] = -38;
        sine[241] = -36;
        sine[242] = -34;
        sine[243] = 31;
        sine[244] = -29;
        sine[245] = -27;
        sine[246] = -24;
         sine[247] = -22;
        sine[248] = -19;
        sine[249] = -17;
        sine[250] = -15;
        sine[251] = -12;
        sine[252] = -10;
        sine[253] = -7;
        sine[254] = -5;
           sine[255] = -2;
           sine[256] = 0;
        
    end

    
    //At every positive edge of the clock, output a sine wave sample.
    always@ (posedge clk)
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 256)
            i = 0;
    end

endmodule
```


## Makerchip code: 
```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/ /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/
//Your Verilog/System Verilog Code Starts Here:

module inderjit_digi_sinewave_generator(clk, dsine, data_out);
//declare input and output
    input clk;
    input dsine; 
    output [7:0] data_out;
//8 bit Sine lookup table   
    reg [7:0] sine [0:16];
//Internal signals  
    integer i;  
    reg [7:0] data_out; 
 //Initialize the sine values with samples. 

        initial begin
        i = 0;
        sine[0] = 0;
        sine[1] = 76;
        sine[2] = 141;
        sine[3] = 185;
        sine[4] = 200;
        sine[5] = 185;
        sine[6] = 141;
        sine[7] = 76;
        sine[8] = 0;
        sine[9] = -76;
        sine[10] = -141;
        sine[11] = -185;
        sine[12] = -200;
        sine[13] = -185;
        sine[14] = -141;
        sine[15] = -76;
        sine[16] = 0;
    end

    
    //At every positive edge of the clock, output a sine wave sample.
    always@ (posedge clk)
    begin
        data_out = sine[i];
        i = i + 1;
        if(i == 16)
            i = 0;
    end

endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  dsine;//input
		logic  [7:0] data_out;//output
//The $random() can be replaced if user wants to assign values
		assign dsine = reset;
		inderjit_digi_sinewave_generator inderjit_digi_sinewave_generator(.clk(clk), .dsine(dsine), .data_out(data_out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

```

## Makerchip code (version 3):  
```


## Makerchip plots

Fig 13 shows the output plots i.e 8 bit data_out for 16 data points which make up the sine wave lookup table. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157673803-95fc1c13-526d-46d0-9ed6-d3d2b123e52f.png">
</p> 
<p align="center">
Fig 13.  Makerchip plots for Sine Wave LUT 
</p>

Fig 14 shows the output plots i.e 8 bit data_out for 256 data points which make up the sine wave lookup table.  

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157728636-6fab83ff-1876-4030-98eb-e5407aa4badd.png">
</p> 
<p align="center">
Fig 14.  Makerchip plots for Sine Wave LUT (Attempt 3) 
</p>


# Netlist 

The netlist for attempt 2 is written below which includes the following:
8 bit PRS generator, low pass filter, analog to digital and digital to analog bridge to connect the two worlds, 1.024 MHz clock and reset pulse at the beginning, and sine stimulus as 8-bit table in time with 16 data points.

```
* /home/inderjitsingh/esim_mixed_signal_marathon_2022/digital_sine_wave/digital_sine_wave.cir

.include 10bitDAC.sub
* u1  net-_u1-pad1_ net-_u1-pad2_ net-_u1-pad3_ inderjit_prs8bit_generator
* u2  net-_u2-pad1_ net-_u1-pad3_ net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ inderjit_digi_sinewave_generator
* u3  clk reset net-_u1-pad1_ net-_u1-pad2_ adc_bridge_2
* u6  net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ net-_u6-pad9_ net-_u6-pad10_ net-_u6-pad11_ net-_u6-pad12_ net-_u6-pad13_ net-_u6-pad14_ net-_u6-pad15_ net-_u6-pad16_ dac_bridge_8
v1  clk gnd pulse(0 5 500n 50n 50n 488.28n 976.56n)
v2  reset gnd pulse(0 5 0 50n 50n 2u 1000u)
r1  dac_out net-_l1-pad1_ 130
* u7  dac_out plot_v1
* u8  analog_out plot_v1
* u4  reset plot_v1
* u5  clk plot_v1
l1  net-_l1-pad1_ analog_out 10mh
c2  analog_out gnd 2.5u
x1 net-_u6-pad16_ net-_u6-pad15_ net-_u6-pad14_ net-_u6-pad13_ net-_u6-pad12_ net-_u6-pad11_ net-_u6-pad10_ net-_u6-pad9_ gnd gnd dac_out 10bitDAC
* u9  clk net-_u2-pad1_ adc_bridge_1
a1 [net-_u1-pad1_ ] [net-_u1-pad2_ ] [net-_u1-pad3_ ] u1
a2 [net-_u2-pad1_ ] [net-_u1-pad3_ ] [net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ ] u2
a3 [clk reset ] [net-_u1-pad1_ net-_u1-pad2_ ] u3
a4 [net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ ] [net-_u6-pad9_ net-_u6-pad10_ net-_u6-pad11_ net-_u6-pad12_ net-_u6-pad13_ net-_u6-pad14_ net-_u6-pad15_ net-_u6-pad16_ ] u6
a5 [clk ] [net-_u2-pad1_ ] u9
* Schematic Name:                             inderjit_prs8bit_generator, NgSpice Name: inderjit_prs8bit_generator
.model u1 inderjit_prs8bit_generator(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             inderjit_digi_sinewave_generator, NgSpice Name: inderjit_digi_sinewave_generator
.model u2 inderjit_digi_sinewave_generator(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u3 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_8, NgSpice Name: dac_bridge
.model u6 dac_bridge(out_low=0.0 out_high=5.0 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u9 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
.tran 1e-06 40e-06 0e-00

* Control Statements 
.control
option noopalter
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(dac_out)
plot v(analog_out)
plot v(reset)
plot v(clk)
.endc
.end
```

## Netlist for Attempt 3: 

The netlist for attempt 3 is written below which includes the following:
8 bit PRS generator, low pass filter, analog to digital and digital to analog bridge to connect the two worlds, 1.024 MHz clock and reset pulse at the beginning, and sine stimulus as 8-bit table in time with 256 data points.

```
* /home/inderjitsingh/esim_mixed_signal_marathon_2022/digital_sine_wave/digital_sine_wave.cir
.include 10bitDAC.sub
* u1  net-_u1-pad1_ net-_u1-pad2_ net-_u1-pad3_ inderjit_prs8bit_generator
* u3  clk reset net-_u1-pad1_ net-_u1-pad2_ adc_bridge_2
* u6  net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ net-_u6-pad9_ net-_u6-pad10_ net-_u6-pad11_ net-_u6-pad12_ net-_u6-pad13_ net-_u6-pad14_ net-_u6-pad15_ net-_u6-pad16_ dac_bridge_8
v1  clk gnd pulse(0 5 500n 50n 50n 488.28n 976.56n)
v2  reset gnd pulse(0 5 0 50n 50n 2u 10m)
r1  dac_out net-_l1-pad1_ 130
* u7  dac_out plot_v1
* u8  analog_out plot_v1
* u4  reset plot_v1
* u5  clk plot_v1
l1  net-_l1-pad1_ analog_out 10mh
c2  analog_out gnd 2.5u
x1 net-_u6-pad16_ net-_u6-pad15_ net-_u6-pad14_ net-_u6-pad13_ net-_u6-pad12_ net-_u6-pad11_ net-_u6-pad10_ net-_u6-pad9_ gnd gnd dac_out 10bitDAC
* u9  clk net-_u2-pad1_ adc_bridge_1
* u2  net-_u2-pad1_ net-_u1-pad3_ net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ inderjit_d_sine
a1 [net-_u1-pad1_ ] [net-_u1-pad2_ ] [net-_u1-pad3_ ] u1
a2 [clk reset ] [net-_u1-pad1_ net-_u1-pad2_ ] u3
a3 [net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ ] [net-_u6-pad9_ net-_u6-pad10_ net-_u6-pad11_ net-_u6-pad12_ net-_u6-pad13_ net-_u6-pad14_ net-_u6-pad15_ net-_u6-pad16_ ] u6
a4 [clk ] [net-_u2-pad1_ ] u9
a5 [net-_u2-pad1_ ] [net-_u1-pad3_ ] [net-_u2-pad3_ net-_u2-pad4_ net-_u2-pad5_ net-_u2-pad6_ net-_u2-pad7_ net-_u2-pad8_ net-_u2-pad9_ net-_u2-pad10_ ] u2
* Schematic Name:                             inderjit_prs8bit_generator, NgSpice Name: inderjit_prs8bit_generator
.model u1 inderjit_prs8bit_generator(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u3 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_8, NgSpice Name: dac_bridge
.model u6 dac_bridge(out_low=0.0 out_high=5.0 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u9 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             inderjit_d_sine, NgSpice Name: inderjit_d_sine
.model u2 inderjit_d_sine(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
.tran 0.1e-03 1e-03 0e-00

* Control Statements 
.control
option opalter
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(dac_out)
plot v(analog_out)
plot v(reset)
plot v(clk)
.endc
.end
```

# Ngspice plots 

Fig 15 shows ngspice plots for circuit schematic (attempt 1), it contains dac and analog output. Attempt 1 was clearly unsucessful. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157679214-96d23017-5146-41ef-a1f2-7be2fc25d7be.png">
</p> 
<p align="center">
Fig 15.  Output plots (Attempt 1) 
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157679518-bb499619-257d-4599-99a0-57f3afe636e4.png">
</p> 
<p align="center">
Fig 16.  Clock and reset plots (Attempt 2)
</p>

Fig 17 shows ngspice plots for circuit schematic (attempt 2), it contains dac and analog output. Attempt 2 was also unsucessful as expected output should be a sine wave of 1KHz frequency. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157679841-427e23b2-72f5-4fc1-88fb-d071345f4e32.png">
</p> 
<p align="center">
Fig 17.  Output plots (Attempt 2)
</p>

Fig 18 shows ngspice plots for circuit schematic (attempt 3), it contains dac and analog output. Attempt 3 was also unsucessful as expected output should be a sine wave of 1KHz frequency. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157727113-a3ec8362-89c2-4377-bf29-6b57805d5b72.png">
</p> 
<p align="center">
Fig 18.  Output plots (1ms) (Attempt 3)
</p>

Fig 19 shows ngspice plots for circuit schematic (attempt 3) with 10ms stop time, it contains dac and analog outputs. Attempt 3 was also partically correct as sine wave oscillations are visible but their amplitude and freqneucy is noe as dersired. Also, the expected sine wave output of 1KHz frequency was not achieved.  

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/157727267-b883bea3-e7bf-4500-909e-957c97d1d9f9.png">
</p> 
<p align="center">
Fig 19.  Output plots (10ms) (Attempt 3)
</p>


# Steps to run generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully

# Acknowlegdements
1. FOSSEE Team, IIT Bombay
2. MakerChip, Redwood EDA
3. Sumanto Kar, eSim Team, FOSSEE
4. VLSI System Design (VSD) Corp. Pvt. Ltd India

# References
[1] Wolf, R.V., Bilger, R.C. A digital noise and sine-wave generator. Behavior Research Methods & Instrumentation 9, 345–348 (1977). https://doi.org/10.3758/BF03202254 

[2] E. D. Lipson, K. W. Foster and M. P. Walsh, "A versatile pseudo-random noise generator," in IEEE Transactions on Instrumentation and Measurement, vol. IM-25, no. 2, pp. 112-116, June 1976, doi: 10.1109/TIM.1976.6312323.

[3] https://en.wikipedia.org/wiki/Linear-feedback_shift_register

[4] https://www.isotel.eu/mixedsim/intro/prssine.html

[5] https://www.analog.com/en/technical-articles/an-almost-pure-dds-sine-wave-tone-generator.html

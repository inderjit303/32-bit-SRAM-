
# 32-bit SRAM implementation in eSim using Skywater 130nm CMOS technology:

This repository contains an attempt to mixed signal design of a 32-bit SRAM using eSim and Google Skywater 130nm PDK 

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
Today, Static Random Access Memory (SRAM) has become a standard memory element of any Application Specific Integrated Circuit (ASIC), System-On-Chips (SoC), because they are fast, robust, nearly universally found on the same die with microcontrollers and microprocessors. This paper presents detailed implementation of 32 bit SRAM using eSim and SKY130 PDK. SRAM is much faster than DRAM (Dynamic RAM), so to utilize SRAM to the fullest we have the concept of caching the memory i.e we save the data in SRAMs on first load so that in the consecutive load time reduces drastically. SRAM can retain its stored information as long as power is supplied. The term random access means that in an array of SRAM cells each cell can be read or written in any order, no matter which cell was last accessed. SRAMs are majorly used in server based web applications because the servers are usually switched on all the time. 

# Reference Circuit Diagram
The structure of a 6 transistor SRAM cell, storing one bit of information, can be seen in Fig 1. The core of the cell is formed by two CMOS inverters. This feedback loop stabilizes the inverters to their respective state. The access transistors Mn3 & Mn4 the word and bit lines, wl and bl, are used to read and write from or to the cell. The project is about building a 32-bit SRAM memory array, using 130nm CMOS technology and modular design approach. First, a 8 bit SRAM cell is build using eight 1 Bit SRAM. They are accessed by 3 bit address using a 3x8 decoder which is implemented in digital domain as shown in Fig 2. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194602256-0cc2c215-91e0-4d79-bb9c-70e9178ee6d6.png">
</p> 
<p align="center">
Fig 1. Standard 6T SRAM Cell 
</p>


<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194602977-dca7491b-b578-4d20-a333-69392e5afe3c.png">
</p> 
<p align="center">
Fig 2. Digital Block: 3x8 Decoder 
</p>

1 bit RAM cell consists of data writer circuit, 6T RAM cell, pre-charge circuit and a sense amplifier all implemented in analog domain using eSim as shown in Fig 3. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194603243-135b7f27-5ea2-4242-be6f-ff23c8fe97eb.png">
</p> 
<p align="center">
Fig 3. Analog Block: 1 bit SRAM Cell 
</p>

The 3x8 decoder will be used to select the 1-bit RAM cell to which we want to perform the read/write operation. Pre-charge circuit is used to pre-charge the bit-lines to Vdd or high logic during a read operation. The function of sense amplifier is to amplify the very small analog differential voltage between the bit-lines during a read operation and provide a digital output. In read operation, the bit-lines are pre-charged to Vdd during the read operation, so if a write operation occurs, one of the bit-lines should driven back to low logic before enabling access transistors. Write drivers are used for this purpose.


<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194603328-39bbf36f-b60d-43d7-a7e8-ab6d63ed44bc.png">
</p> 
<p align="center">
Fig 4. Functional block of 32 bit SRAM 
</p>

Digital block will be implemented in Verilog, whereas analog block will be implemented in eSim as shown in Fig 4. After creation of the all the symbols using sub-circuit feature, interconnection of the Decoder and the 1-Bit SRAMs will be carried out as shown in the schematic to create the 8-Bit SRAM and then create another sub circuit symbol to interconnect address decoder and 32 bit SRAM. 


# Reference circuit waveforms

Fig. 5 depicts the Transient input and output waveforms for a 8 bit SRAM

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194603953-d528f7cc-c15c-4862-90e5-fb5bada1ad4d.png">
</p> 
<p align="center">
Fig 5. Transient input and output waveforms of 8 bit SRAM
</p>

 
# Softwares Used

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

## Google Sky Water 130nm PDK 


# 8 Bit SRAM buidling blocks: 
The components required for buidling 8 Bit SRAM cell are:
1. 3X8 SRAM Address Decoder implemented in digital domain using NgVeri
2. 1-bit SRAM cell which further consists of data writer circuit implemented in digital domain using NgVeri, 6T SRAM cell and a sense amplifier circuit all implemented in analog domain using eSim. The 3X8 SRAM Address Decoder is be used to select the 1-bit SRAM cell to which we want to perform the read/write operation to. Basic implementation of a 1-bit SRAM will be as shown in fig 6 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194603243-135b7f27-5ea2-4242-be6f-ff23c8fe97eb.png">
</p> 
<p align="center">
Fig 6. 1 bit SRAM Cell implementation
</p>

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
1. [IIT Bombay](http://iitb.ac.in/)
2. [Google](https://www.google.co.in/)
3. [FOSSEE Team, IIT Bombay](https://fossee.in/)
4. [Spoken tutorials](https://spoken-tutorial.org/)
5. [VLSI System Design (VSD) Corp. Pvt. Ltd India](https://www.vlsisystemdesign.com/)
6. [Chips to Startup](https://www.c2s.gov.in/)
7. Sumanto Kar, eSim Team, FOSSEE


# References
[1] Jesal P. Gajjar1, Aesha S. Zala2, Sandeep K. Aggarwal, Design and Analysis of 32 bit SRAM architecture in 90nm CMOS Technology, International Research Journal of Engineering and Technology (IRJET), Volume 03, Issue 04, April 2016 

[2] https://github.com/htrinath/8-bit-RAM-mixed-signal-design

[3] Kang, Sung-Mo, Leblebici and Yusuf, “CMOS Digital integrated circuits Analysis and Design”, McGraw-Hill International Editions, 2nd Edition


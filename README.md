
# 32-bit SRAM implementation in eSim using Skywater 130nm CMOS technology:

This repository discusses implmentation of mixed signal design of a 32-bit SRAM using eSim and Google Skywater 130nm PDK 

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

# Building blocks for 32 bit SRAM: 

The components required for building 32 Bit SRAM cell are:
1. 5x32 SRAM Address Decoder and 3x8 SRAM Address Decoder implemented in digital domain using NgVeri
2. 1-bit SRAM cell as shown in fig 2 which further consists of
3. Data writer circuit implemented in digital domain using NgVeri
4. 6T SRAM cell and 
5. Sense amplifier circuit implemented in analog domain using eSim. 

The project is about building a 32-bit SRAM memory array, using 130nm CMOS technology and modular design approach. The functional block diagram of 32 bit SRAM is shown in fig 1. After creation of the all the symbols using sub-circuit feature in eSim, interconnection of the Decoder and the 1-Bit SRAMs will be implemented  to create the 8-Bit SRAM and then create another sub circuit symbol for four such 8 bit SRAM to interconnect address decoder and 32 bit SRAM. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194718005-4117a875-6010-48e6-9486-85eff340662a.png">
</p> 
<p align="center">
Fig 1. Functional block for 32 bit SRAM cell
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194603243-135b7f27-5ea2-4242-be6f-ff23c8fe97eb.png">
</p> 
<p align="center">
Fig 2. 1 bit SRAM Cell implementation
</p>

1 bit RAM cell consists of data writer circuit, 6T RAM cell, pre-charge circuit and a sense amplifier all implemented in analog domain using eSim as shown in Fig 2. First, a 8 bit SRAM cell is build using eight 1 Bit SRAM. They are accessed by 3 bit address using a 3x8 decoder which is implemented in digital domain as shown in fig 3. 

# 3x8 SRAM Address Decoder 
Decoder is a digital circuit which is used to change a given code into a set of signals. Here we are using a Decoder to select one out of eight 1-bit SRAM cells to perform the read/write operations.

The 3x8 SRAM Address Decoder is be used to select the 8-bit SRAM cell to which we want to perform the read/write operation.

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194687836-528f8db3-f482-488b-9fb1-3b44ef875e47.png">
</p> 
<p align="center">
Fig 3. 3x8 SRAM Address Decoder
</p>

As shown above in fig 3, a 3X8 decoder has 4 inputs and 8 outputs. The first three inputs a0, a1, a2 are used to give the coded signal and the fourth signal enbl acts as an enable. If the en signal is low then all the ouputs d0 to d7 will remain low.

In this design, the above decoder has been implemented using the MakerChip feature in eSim . After opening the eSIM v2.3, open the MakerChip tab present on the left side and load the file with the Verilog code. We can verify the functionality of the loaded verilog code using the MakerChip EDA tool integrated with the eSim tool. Then we can switch over to the NgVeri tab and use it to convert the verilog code into NgSpice netlist. The verilog code for the above decoder is as follows:

```
module isramsd_decoder(d,a,enbl);
//this is verilog code for 3x8 SRAM address decoder 
input [2:0]a;
input enbl;
output reg [7:0]d;
always @(a) 
  begin
    if(enbl==1)
      begin
        d[0] = !a[0] & !a[1] & !a[2];
        d[1] = a[0] & !a[1] & !a[2];
        d[2] = !a[0] & a[1] & !a[2];
        d[3] = a[0] & a[1] & !a[2];
        d[4] = !a[0] & !a[1] & a[2];
        d[5] = a[0] & !a[1] & a[2];
        d[6] = !a[0] & a[1] & a[2];
        d[7] = a[0] & a[1] & a[2];
      end
    else d = 8'b00000000;
  end
endmodule
```

Makerchip plots: 

Makerchip output plot for 3x8 SRAM Address Decoder is shown in fig 4. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194688388-f6ca8061-57a9-433b-809d-b2814172a6df.png">
</p> 
<p align="center">
Fig 4.  Makerchip plots for 3x8 SRAM Address Decoder (a = 4 in decimal, d = 10 in hex and enbl = 1) 
</p>

# 5x32 SRAM Address Decoder 
The 5x32 SRAM Address Decoder is be used to select the 32-bit SRAM cell to which we want to perform the read/write operation.


<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194717815-1424ad1b-a2aa-44fd-a004-5e86822567f3.png">
</p> 
<p align="center">
Fig 5.  5x32 SRAM Address Decoder
</p>

As shown above in fig 5, a 5x32 decoder has 6 inputs and 32 outputs. The first five inputs a0, a1, a2, a3 and a4 are used to give the coded signal and the sixth signal enbl acts as an enable. If the enbl signal is low then all the ouputs d0 to d31 will remain low.

The truth table for the 5X32 Decoder is as follows:
<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194717799-2b8b3a9b-5f27-47a2-bb40-66d0849ea5ee.png">
</p> 
<p align="center">
Fig 6.  Truth table for 5x32 SRAM Address Decoder
</p>

The steps to create Ngveri model for 5x32 decoder in eSim are similar to that of 3x8 Decoder. 
The verilog code for the above decoder is as follows:

```
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
    else d = 32'b00000000000000000000000000000000;
  end
endmodule
```

Makerchip plots: 

Makerchip output plot for 5x32 SRAM Address Decoder is shown in fig 7. 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194718145-f9c5aac6-ccdb-434c-88cf-999ec25f451c.png">
</p> 
<p align="center">
Fig 7.  Makerchip plots for 5x32 SRAM Address Decoder (a = 10 in decimal, d = 00000400 in hex and enbl = 1) 
</p>


# 6T SRAM Cell: 
The structure of a 6 transistor SRAM cell, storing one bit of information, can be seen in fig 1. The core of the cell is formed by two CMOS inverters. This feedback loop stabilizes the inverters to their respective state. The access transistors Mn3 & Mn4 the word and bit lines, wl and bl, are used to read and write from or to the cell. There are 3 inputs to the 6T RAM cell which are Write line(wl), Bit line(bl) and Bit line bar(blbar). When the wl is high the N-MOSFETs on either sides of the latched inverters are switched on so that the value in the bl, blb are transferred to opposite sides of the inverter network overriding the already present value.

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194718431-9a082e3f-82ca-49e2-99b6-e68d749dfe0c.png">
</p> 
<p align="center">
Fig 7.  6T SRAM Cell 
</p>


# Data Writer circuit: 





Pre-charge circuit is used to pre-charge the bit-lines to Vdd or high logic during a read operation. The function of sense amplifier is to amplify the very small analog differential voltage between the bit-lines during a read operation and provide a digital output. In read operation, the bit-lines are pre-charged to Vdd during the read operation, so if a write operation occurs, one of the bit-lines should driven back to low logic before enabling access transistors. Write drivers are used for this purpose.



Digital block will be implemented in Verilog, whereas analog block will be implemented in eSim as shown in Fig 4. 




 
# Open Source Tools Used:

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


# 8 Bit SRAM building blocks: 
The components required for buidling 8 Bit SRAM cell are:
1. 3x8 SRAM Address Decoder implemented in digital domain using NgVeri
2. 1-bit SRAM cell which further consists of
3. Data writer circuit implemented in digital domain using NgVeri
4. 6T SRAM cell and 
5. Sense amplifier circuit implemented in analog domain using eSim. 
The 3x8 SRAM Address Decoder is be used to select the 1-bit SRAM cell to which we want to perform the read/write operation to. Basic implementation of a 1-bit SRAM will be as shown in fig 6 

<p align="center">
<img src="https://user-images.githubusercontent.com/99788755/194603243-135b7f27-5ea2-4242-be6f-ff23c8fe97eb.png">
</p> 
<p align="center">
Fig 6. 1 bit SRAM Cell implementation
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


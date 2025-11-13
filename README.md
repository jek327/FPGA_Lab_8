# FPGA_Lab_8

Project Description:
The goal of this project was to design and implement both a ROM and a RAM module on the Basys-3 FPGA board using Verilog. The ROM was created as a combinational lookup table that outputs fixed 4-bit data values based on a 3-bit address. The RAM was implemented as an 8×8 synchronous memory capable of reading and writing 8-bit data at eight different address locations. Both memory modules were synthesized, tested using a testbench, and verified on hardware through switches and LEDs on the Basys-3 board.


Instructions:

Simulation

Add your ROM and RAM Verilog files to Vivado.

Add the testbench files (they are not included in synthesis).

Go to Flow → Run Simulation → Run Behavioral Simulation.

Use the waveform window to check that:

ROM outputs correct values for each address

RAM writes on rising clock edge and reads correctly

Synthesis

Click Flow → Run Synthesis.

Fix any synthesis errors if they appear.

When done, select Open Synthesized Design to inspect resource usage.

Implementation

Click Flow → Run Implementation.

Vivado will map logic onto the FPGA fabric and perform routing.

When complete, choose Open Implemented Design to review timing.

Generate Bitstream

Click Flow → Generate Bitstream.

Vivado creates the .bit file used to program the FPGA.

Wait for the “Bitstream Generation Completed” message.

Program the Basys-3 Board

Connect the Basys-3 via USB.

Go to Program and Debug → Open Hardware Manager.

Click Auto Connect.

Select your device, choose the generated .bit file.

Click Program.

The board is now running your ROM/RAM design.

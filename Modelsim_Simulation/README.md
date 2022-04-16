# Modelsim Simulation script

## Overview:
- TCL script to determine all the input ports of a module and force clock signals on each port in increasing powers of 2. (For Example, 100 ps,200 ps, 400 ps etc.)
- Script also checks if any of the input signals are named "clk". If found, the "clk" signal will be assignment the signal with highest frequency. (ie: 100 ps) 
- Script will then run the simulation.
- Finally, after the script completes execution, it will wait for user input to exit simulation.

# Usage:
- Copy the simulate.tcl script to project folder such it in present in the same folder as the verilog source files containing the modules to be simulated.
![Copying the script](Markdown_res/User_Input_0.png "Copy the script to project folder")
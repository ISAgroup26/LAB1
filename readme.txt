The lab folder is diveded in the DF2 folder (direct form II) and the LH folder (version with Look-ahead technique)

Inside this folders there are different folders, one for each tool:
- C and Matlab are the starting point for the model of the first filter.
- src contains all the vhdl files.
- tb contains all the files needed for the testbench.
- sim contains the files used or producted by Modelsim.
- syn contains the files used or producted by synopsys.
- innovus contains the files used or producted by innovus.
- The other folders (vcd, saif and netlist) contains particular outputs files from the tools  

Files in the syn folder are divided in the following types:

-Files that finish with "0" are the output of the synthesys using T = 0;
-Files that finish with "1" are the output of the synthesys using T = 1/(fmax/4);
-Files without a numbeer are the output of the synthesys using T = 1/fmax
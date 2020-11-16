vlib work
vcom -93 -work ./work ../tb/clk_gen2.vhd
vcom -93 -work ./work ../tb/data_maker_new.vhd
vcom -93 -work ./work ../tb/data_sink2.vhd
vlog -work ./work ../netlist/IIR_LH.v
vlog -work ./work ../tb/tb_iir_lah.v
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_iir_lah/UUT=../netlist/IIR_LH.sdf work.tb_iir_lah

vcd file ../vcd/IIR_LH_syn.vcd
vcd add /tb_iir_lah/UUT/*

run 3 us


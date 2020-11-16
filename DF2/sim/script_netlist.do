vlib work
vcom -93 -work ./work ../tb/clk_gen.vhd
vcom -93 -work ./work ../tb/data_maker_new.vhd
vcom -93 -work ./work ../tb/data_sink.vhd
vlog -work ./work ../netlist/IIR_DF2_filter.v
vlog -work ./work ../tb/tb_iir.v
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_iir/UUT=../netlist/IIR_DF2_filter.sdf work.tb_iir
vcd file ../vcd/IIR_DF2_filter_syn.vcd
vcd add /tb_iir/UUT/*
run 3 us

vcd2saif -input ../vcd/IIR_DF2_filter_syn.vcd -output ../saif/IIR_DF2_filter_syn.saif

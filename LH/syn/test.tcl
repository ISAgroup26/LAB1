analyze -f vhdl -lib WORK ../src/IIR_LH.vhd
analyze -f vhdl -lib WORK ../src/myregister.vhd
analyze -f vhdl -lib WORK ../src/reg.vhd
set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.41 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH1.txt
report_area > ./report_area_LH1.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.42 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH2.txt
report_area > ./report_area_LH2.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.43 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH3.txt
report_area > ./report_area_LH3.txt


set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.44 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH4.txt
report_area > ./report_area_LH4.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.45 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH5.txt
report_area > ./report_area_LH5.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.46 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH6.txt
report_area > ./report_area_LH6.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.47 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH7.txt
report_area > ./report_area_LH7.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.48 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH8.txt
report_area > ./report_area_LH8.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.49 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH9.txt
report_area > ./report_area_LH9.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.50 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH10.txt
report_area > ./report_area_LH10.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.51 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH11.txt
report_area > ./report_area_LH11.txt

set power_preserve_rtl_hier_names true
elaborate IIR_LH -arch Behavioral -lib WORK > ./elaborate_LH.txt
create_clock -name MY_CLK -period 2.52 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set $OLOAD [all_outputs]
compile
report_timing > ./report_timing_LH12.txt
report_area > ./report_area_LH12.txt

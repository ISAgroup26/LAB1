#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Nov 16 22:02:51 2020                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/isa26/lab1/DF2/innovus/IIR_DF2_filter.enc.dat IIR_DF2_filter
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
reset_parasitics
extractRC
rcOut -setload IIR_DF2_filter.setload -rc_corner my_rc
rcOut -setres IIR_DF2_filter.setres -rc_corner my_rc
rcOut -spf IIR_DF2_filter.spf -rc_corner my_rc
rcOut -spef IIR_DF2_filter.spef -rc_corner my_rc
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0
read_activity_file -reset
read_activity_file -format VCD -scope tb_iir/UUT -start {} -end {} -block {} ../vcd/design.vcd
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile .//IIR_DF2_filter.rpt
report_power -outfile power_report.txt -sort { total }

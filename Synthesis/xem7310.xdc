set_property PACKAGE_PIN K17 [get_ports {ddr3_dqs_p[1]}]
set_property PACKAGE_PIN J17 [get_ports {ddr3_dqs_n[1]}]
set_property PACKAGE_PIN B21 [get_ports {ddr3_dqs_p[2]}]
set_property PACKAGE_PIN A21 [get_ports {ddr3_dqs_n[2]}]
set_property PACKAGE_PIN M22 [get_ports {ddr3_dqs_n[0]}]
set_property PACKAGE_PIN N22 [get_ports {ddr3_dqs_p[0]}]
set_property PACKAGE_PIN F18 [get_ports {ddr3_dqs_p[3]}]
set_property PACKAGE_PIN E18 [get_ports {ddr3_dqs_n[3]}]
############################################################################
# XEM7310 - Xilinx constraints file
#
# Pin mappings for the XEM7310.  Use this as a template and comment out
# the pins that are not used in your design.  (By default, map will fail
# if this file contains constraints for signals not in your design).
#
# Copyright (c) 2004-2016 Opal Kelly Incorporated
############################################################################

set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS True [current_design]

############################################################################
## FrontPanel Host Interface
############################################################################
set_property PACKAGE_PIN Y19 [get_ports {okHU[0]}]
set_property PACKAGE_PIN R18 [get_ports {okHU[1]}]
set_property PACKAGE_PIN R16 [get_ports {okHU[2]}]
set_property SLEW FAST [get_ports {okHU[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {okHU[*]}]

set_property PACKAGE_PIN W19 [get_ports {okUH[0]}]
set_property PACKAGE_PIN V18 [get_ports {okUH[1]}]
set_property PACKAGE_PIN U17 [get_ports {okUH[2]}]
set_property PACKAGE_PIN W17 [get_ports {okUH[3]}]
set_property PACKAGE_PIN T19 [get_ports {okUH[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {okUH[*]}]

set_property PACKAGE_PIN AB22 [get_ports {okUHU[0]}]
set_property PACKAGE_PIN AB21 [get_ports {okUHU[1]}]
set_property PACKAGE_PIN Y22 [get_ports {okUHU[2]}]
set_property PACKAGE_PIN AA21 [get_ports {okUHU[3]}]
set_property PACKAGE_PIN AA20 [get_ports {okUHU[4]}]
set_property PACKAGE_PIN W22 [get_ports {okUHU[5]}]
set_property PACKAGE_PIN W21 [get_ports {okUHU[6]}]
set_property PACKAGE_PIN T20 [get_ports {okUHU[7]}]
set_property PACKAGE_PIN R19 [get_ports {okUHU[8]}]
set_property PACKAGE_PIN P19 [get_ports {okUHU[9]}]
set_property PACKAGE_PIN U21 [get_ports {okUHU[10]}]
set_property PACKAGE_PIN T21 [get_ports {okUHU[11]}]
set_property PACKAGE_PIN R21 [get_ports {okUHU[12]}]
set_property PACKAGE_PIN P21 [get_ports {okUHU[13]}]
set_property PACKAGE_PIN R22 [get_ports {okUHU[14]}]
set_property PACKAGE_PIN P22 [get_ports {okUHU[15]}]
set_property PACKAGE_PIN R14 [get_ports {okUHU[16]}]
set_property PACKAGE_PIN W20 [get_ports {okUHU[17]}]
set_property PACKAGE_PIN Y21 [get_ports {okUHU[18]}]
set_property PACKAGE_PIN P17 [get_ports {okUHU[19]}]
set_property PACKAGE_PIN U20 [get_ports {okUHU[20]}]
set_property PACKAGE_PIN N17 [get_ports {okUHU[21]}]
set_property PACKAGE_PIN N14 [get_ports {okUHU[22]}]
set_property PACKAGE_PIN V20 [get_ports {okUHU[23]}]
set_property PACKAGE_PIN P16 [get_ports {okUHU[24]}]
set_property PACKAGE_PIN T18 [get_ports {okUHU[25]}]
set_property PACKAGE_PIN V19 [get_ports {okUHU[26]}]
set_property PACKAGE_PIN AB20 [get_ports {okUHU[27]}]
set_property PACKAGE_PIN P15 [get_ports {okUHU[28]}]
set_property PACKAGE_PIN V22 [get_ports {okUHU[29]}]
set_property PACKAGE_PIN U18 [get_ports {okUHU[30]}]
set_property PACKAGE_PIN AB18 [get_ports {okUHU[31]}]
set_property SLEW FAST [get_ports {okUHU[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {okUHU[*]}]

set_property PACKAGE_PIN N13 [get_ports okAA]
set_property IOSTANDARD LVCMOS18 [get_ports okAA]


create_clock -period 9.920 -name okUH0 [get_ports {okUH[0]}]


set_input_delay -clock [get_clocks okUH0] -max -add_delay 8.000 [get_ports {okUH[*]}]
set_input_delay -clock [get_clocks okUH0] -min -add_delay 10.000 [get_ports {okUH[*]}]
set_multicycle_path -setup -from [get_ports {okUH[*]}] 2

set_input_delay -clock [get_clocks okUH0] -max -add_delay 8.000 [get_ports {okUHU[*]}]
set_input_delay -clock [get_clocks okUH0] -min -add_delay 2.000 [get_ports {okUHU[*]}]
set_multicycle_path -setup -from [get_ports {okUHU[*]}] 2

set_output_delay -clock [get_clocks okUH0] -max -add_delay 2.000 [get_ports {okHU[*]}]
set_output_delay -clock [get_clocks okUH0] -min -add_delay -0.500 [get_ports {okHU[*]}]

set_output_delay -clock [get_clocks okUH0] -max -add_delay 2.000 [get_ports {okUHU[*]}]
set_output_delay -clock [get_clocks okUH0] -min -add_delay -0.500 [get_ports {okUHU[*]}]


############################################################################
## System Clock
############################################################################
set_property IOSTANDARD LVDS_25 [get_ports sys_clk_p]

set_property IOSTANDARD LVDS_25 [get_ports sys_clk_n]
set_property PACKAGE_PIN W11 [get_ports sys_clk_p]
set_property PACKAGE_PIN W12 [get_ports sys_clk_n]

# LEDs #####################################################################
set_property PACKAGE_PIN A13 [get_ports {led[0]}]
set_property PACKAGE_PIN B13 [get_ports {led[1]}]
set_property PACKAGE_PIN A14 [get_ports {led[2]}]
set_property PACKAGE_PIN A15 [get_ports {led[3]}]
set_property PACKAGE_PIN B15 [get_ports {led[4]}]
set_property PACKAGE_PIN A16 [get_ports {led[5]}]
set_property PACKAGE_PIN B16 [get_ports {led[6]}]
set_property PACKAGE_PIN B17 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[*]}]

# DRAM #####################################################################
set_property PACKAGE_PIN N18 [get_ports {ddr3_dq[0]}]
set_property PACKAGE_PIN L20 [get_ports {ddr3_dq[1]}]
set_property PACKAGE_PIN N20 [get_ports {ddr3_dq[2]}]
set_property PACKAGE_PIN K18 [get_ports {ddr3_dq[3]}]
set_property PACKAGE_PIN M18 [get_ports {ddr3_dq[4]}]
set_property PACKAGE_PIN K19 [get_ports {ddr3_dq[5]}]
set_property PACKAGE_PIN N19 [get_ports {ddr3_dq[6]}]
set_property PACKAGE_PIN L18 [get_ports {ddr3_dq[7]}]
set_property PACKAGE_PIN L16 [get_ports {ddr3_dq[8]}]
set_property PACKAGE_PIN L14 [get_ports {ddr3_dq[9]}]
set_property PACKAGE_PIN K14 [get_ports {ddr3_dq[10]}]
set_property PACKAGE_PIN M15 [get_ports {ddr3_dq[11]}]
set_property PACKAGE_PIN K16 [get_ports {ddr3_dq[12]}]
set_property PACKAGE_PIN M13 [get_ports {ddr3_dq[13]}]
set_property PACKAGE_PIN K13 [get_ports {ddr3_dq[14]}]
set_property PACKAGE_PIN L13 [get_ports {ddr3_dq[15]}]
set_property PACKAGE_PIN D22 [get_ports {ddr3_dq[16]}]
set_property PACKAGE_PIN C20 [get_ports {ddr3_dq[17]}]
set_property PACKAGE_PIN E21 [get_ports {ddr3_dq[18]}]
set_property PACKAGE_PIN D21 [get_ports {ddr3_dq[19]}]
set_property PACKAGE_PIN G21 [get_ports {ddr3_dq[20]}]
set_property PACKAGE_PIN C22 [get_ports {ddr3_dq[21]}]
set_property PACKAGE_PIN E22 [get_ports {ddr3_dq[22]}]
set_property PACKAGE_PIN B22 [get_ports {ddr3_dq[23]}]
set_property PACKAGE_PIN A20 [get_ports {ddr3_dq[24]}]
set_property PACKAGE_PIN D19 [get_ports {ddr3_dq[25]}]
set_property PACKAGE_PIN A19 [get_ports {ddr3_dq[26]}]
set_property PACKAGE_PIN F19 [get_ports {ddr3_dq[27]}]
set_property PACKAGE_PIN C18 [get_ports {ddr3_dq[28]}]
set_property PACKAGE_PIN E19 [get_ports {ddr3_dq[29]}]
set_property PACKAGE_PIN A18 [get_ports {ddr3_dq[30]}]
set_property PACKAGE_PIN C19 [get_ports {ddr3_dq[31]}]
set_property SLEW FAST [get_ports {ddr3_dq[*]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[*]}]

set_property PACKAGE_PIN J21 [get_ports {ddr3_addr[0]}]
set_property PACKAGE_PIN J22 [get_ports {ddr3_addr[1]}]
set_property PACKAGE_PIN K21 [get_ports {ddr3_addr[2]}]
set_property PACKAGE_PIN H22 [get_ports {ddr3_addr[3]}]
set_property PACKAGE_PIN G13 [get_ports {ddr3_addr[4]}]
set_property PACKAGE_PIN G17 [get_ports {ddr3_addr[5]}]
set_property PACKAGE_PIN H15 [get_ports {ddr3_addr[6]}]
set_property PACKAGE_PIN G16 [get_ports {ddr3_addr[7]}]
set_property PACKAGE_PIN G20 [get_ports {ddr3_addr[8]}]
set_property PACKAGE_PIN M21 [get_ports {ddr3_addr[9]}]
set_property PACKAGE_PIN J15 [get_ports {ddr3_addr[10]}]
set_property PACKAGE_PIN G15 [get_ports {ddr3_addr[11]}]
set_property PACKAGE_PIN H13 [get_ports {ddr3_addr[12]}]
set_property PACKAGE_PIN K22 [get_ports {ddr3_addr[13]}]
set_property PACKAGE_PIN L21 [get_ports {ddr3_addr[14]}]
set_property SLEW FAST [get_ports {ddr3_addr[*]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[*]}]

set_property PACKAGE_PIN H18 [get_ports {ddr3_ba[0]}]
set_property PACKAGE_PIN J19 [get_ports {ddr3_ba[1]}]
set_property PACKAGE_PIN H19 [get_ports {ddr3_ba[2]}]
set_property SLEW FAST [get_ports {ddr3_ba[*]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[*]}]

set_property PACKAGE_PIN J16 [get_ports ddr3_ras_n]
set_property SLEW FAST [get_ports ddr3_ras_n]
set_property IOSTANDARD SSTL15 [get_ports ddr3_ras_n]

set_property PACKAGE_PIN H17 [get_ports ddr3_cas_n]
set_property SLEW FAST [get_ports ddr3_cas_n]
set_property IOSTANDARD SSTL15 [get_ports ddr3_cas_n]

set_property PACKAGE_PIN J20 [get_ports ddr3_we_n]
set_property SLEW FAST [get_ports ddr3_we_n]
set_property IOSTANDARD SSTL15 [get_ports ddr3_we_n]

set_property PACKAGE_PIN F21 [get_ports ddr3_reset_n]
set_property SLEW FAST [get_ports ddr3_reset_n]
set_property IOSTANDARD LVCMOS15 [get_ports ddr3_reset_n]

set_property PACKAGE_PIN G18 [get_ports {ddr3_cke[0]}]
set_property SLEW FAST [get_ports {ddr3_cke[*]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cke[*]}]

set_property PACKAGE_PIN H20 [get_ports {ddr3_odt[0]}]
set_property SLEW FAST [get_ports {ddr3_odt[*]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_odt[*]}]

set_property PACKAGE_PIN L19 [get_ports {ddr3_dm[0]}]
set_property PACKAGE_PIN L15 [get_ports {ddr3_dm[1]}]
set_property PACKAGE_PIN D20 [get_ports {ddr3_dm[2]}]
set_property PACKAGE_PIN B20 [get_ports {ddr3_dm[3]}]
set_property SLEW FAST [get_ports {ddr3_dm[*]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[*]}]

set_property SLEW FAST [get_ports ddr3_dqs*]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr3_dqs*]

set_property PACKAGE_PIN J14 [get_ports {ddr3_ck_p[0]}]
set_property PACKAGE_PIN H14 [get_ports {ddr3_ck_n[0]}]
set_property SLEW FAST [get_ports ddr3_ck*]
set_property IOSTANDARD DIFF_SSTL15 [get_ports ddr3_ck_*]
set_property IOSTANDARD LVCMOS18 [get_ports o_ADC_Conv_n]
set_property IOSTANDARD LVCMOS18 [get_ports o_ADC_Sck]
set_property IOSTANDARD LVCMOS18 [get_ports i_ADC_SDO]

set_property PACKAGE_PIN Y9 [get_ports o_ADC_Conv_n]
set_property PACKAGE_PIN T6 [get_ports o_ADC_Sck]
set_property PACKAGE_PIN R6 [get_ports i_ADC_SDO]

set_clock_groups -asynchronous -group [get_clocks {mmcm0_clk0 okUH0}] -group [get_clocks {sys_clk_p clk_pll_i}]

#set_property IOSTANDARD LVCMOS18 [get_ports o_ADC_Conv_n_test]
#set_property IOSTANDARD LVCMOS18 [get_ports o_ADC_Sck_test]

#set_property IOSTANDARD LVCMOS18 [get_ports o_ADC_SDO_test]

#set_property SLEW FAST [get_ports o_ADC_Sck]
#set_property SLEW FAST [get_ports o_ADC_Conv_n]

#set_input_delay -clock clk_200MHz 1 [get_ports i_ADC_SDO]
#set_output_delay �clock clk_200MHz 1 [get_ports o_ADC_Sck]
#set_output_delay �clock clk_200MHz 1 [get_ports o_ADC_Conv_n]
#create_generated_clock -name clk_sdo -source [get_ports {i_ADC_SDO}]
#create_generated_clock -source [get_ports clk_200Mhz] -name myclock
#create_clock -period 10.000 -name clk_100MHz -waveform {0.000 5.000} [get_nets clock_buf/clk_100MHz]
#create_clock -period 5.000 -name clk_200MHz -waveform {0.000 2.500} [get_nets clk_200MHz]

#create_generated_clock -name clock_block/i2c_si5324/mI2C_CTRL_CLK_reg_0 -source [get_pins clock_block/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1] -divide_by 17000 [get_pins clock_block/i2c_si5324/mI2C_CTRL_CLK_reg/Q]
#set_clock_groups -asynchronous -group [get_clocks clk_out2_clk_wiz_0] -group [get_clocks clock_block/i2c_si5324/mI2C_CTRL_CLK_reg_0]
#set_clock_groups -asynchronous -group [get_clocks clock_block/i2c_si5324/mI2C_CTRL_CLK_reg_0] -group [get_clocks CL_block/CL1_ZClk_OBUF]
#set_clock_groups -asynchronous -group [get_clocks clkout0] -group [get_clocks CL_block/CL1_ZClk_OBUF]

#set_clock_groups -asynchronous -group [get_clocks clk_out2_clk_wiz_0] -group [get_clocks clock_block/i2c_si5324/mI2C_CTRL_CLK_reg_0]
#set_clock_groups -asynchronous -group [get_clocks clock_block/i2c_si5324/mI2C_CTRL_CLK_reg_0] -group [get_clocks CL_block/CL1_ZClk_OBUF]
#set_clock_groups -asynchronous -group [get_clocks clkout0] -group [get_clocks CL_block/CL1_ZClk_OBUF]






#create_generated_clock -name My_constraint_clock -source [get_pins clock_buf/inst/clk_100MHz] -multiply_by 1 [get_pins clock_buf/inst/clk_100MHz]
#set_input_delay -clock [get_clocks *100MH*] -clock_fall -fall 2.000 [get_ports -filter { NAME =~  "*SDO*" && DIRECTION == "IN" }]

set_input_delay -clock [get_clocks *ok*] -clock_fall -fall -min -add_delay 2.000 [get_ports i_ADC_SDO]
set_input_delay -clock [get_clocks okUH0] -clock_fall -fall -max -add_delay 4.000 [get_ports i_ADC_SDO]

set_property BEL B5FF [get_cells EP_inst/o_ADC_Generator_mode_reg]
set_property LOC SLICE_X8Y64 [get_cells EP_inst/o_ADC_Generator_mode_reg]
set_property BEL D5FF [get_cells {wo05/wirehold_reg[0]}]
set_property LOC SLICE_X9Y65 [get_cells {wo05/wirehold_reg[0]}]
set_input_delay -clock [get_clocks *clk_200MHz*] -clock_fall -min -add_delay 2.000 [get_ports -filter { NAME =~  "*SDO*" && DIRECTION == "IN" }]
set_input_delay -clock [get_clocks *clk_200MHz*] -clock_fall -max -add_delay 4.000 [get_ports -filter { NAME =~  "*SDO*" && DIRECTION == "IN" }]

#set_max_delay -from [get_pins {wi00/ep_dataout_reg[2]_replica_11/C}] -to [get_pins {EP_inst/SHIFT_divider/Result_reg[26]/CLR}] 5.000
#set_max_delay -from [get_pins {wi01/ep_dataout_reg[10]/C}] -to [get_pins {EP_inst/sample_gen/Time_counter_reg[25]/D}] 10.000

#set_property IOSTANDARD LVCMOS18 [get_ports CLK_SPI]

#set_property SLEW SLOW [get_ports o_CLK_SPI]
#set_property DRIVE 12 [get_ports o_CLK_SPI]





#set_property PACKAGE_PIN W7 [get_ports o_MOSI]

#set_property PACKAGE_PIN W7 [get_ports o_ADC_Sck_test]
#set_property IOSTANDARD LVCMOS18 [get_ports o_ADC_Sck_test]


##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Tue Dec 14 11:15:05 2021

##  Generated by MIG Version 4.2
##  
##################################################################################################
##  File name :       mig_7series_0.xdc
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A75T-FGG484
##                    Speedgrade:        -1
##                    Design Entry:      VHDL
##                    Frequency:         400 MHz
##                    Time Period:       2500 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41K256M16XX-125
## Data Width: 32
## Time Period: 2500
## Data Mask: 1
##################################################################################################

set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_n[*]} ]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_p[*]} ]
          
#create_clock -period 5 [get_ports sys_clk_i]
          
############## NET - IOSTANDARD ##################


# PadFunction: IO_L17P_T2_A26_15 
set_property SLEW FAST [get_ports {ddr3_dq[0]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[0]}]
set_property PACKAGE_PIN N18 [get_ports {ddr3_dq[0]}]

# PadFunction: IO_L14N_T2_SRCC_15 
set_property SLEW FAST [get_ports {ddr3_dq[1]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[1]}]
set_property PACKAGE_PIN L20 [get_ports {ddr3_dq[1]}]

# PadFunction: IO_L18P_T2_A24_15 
set_property SLEW FAST [get_ports {ddr3_dq[2]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[2]}]
set_property PACKAGE_PIN N20 [get_ports {ddr3_dq[2]}]

# PadFunction: IO_L13P_T2_MRCC_15 
set_property SLEW FAST [get_ports {ddr3_dq[3]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[3]}]
set_property PACKAGE_PIN K18 [get_ports {ddr3_dq[3]}]

# PadFunction: IO_L16P_T2_A28_15 
set_property SLEW FAST [get_ports {ddr3_dq[4]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[4]}]
set_property PACKAGE_PIN M18 [get_ports {ddr3_dq[4]}]

# PadFunction: IO_L13N_T2_MRCC_15 
set_property SLEW FAST [get_ports {ddr3_dq[5]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[5]}]
set_property PACKAGE_PIN K19 [get_ports {ddr3_dq[5]}]

# PadFunction: IO_L17N_T2_A25_15 
set_property SLEW FAST [get_ports {ddr3_dq[6]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[6]}]
set_property PACKAGE_PIN N19 [get_ports {ddr3_dq[6]}]

# PadFunction: IO_L16N_T2_A27_15 
set_property SLEW FAST [get_ports {ddr3_dq[7]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[7]}]
set_property PACKAGE_PIN L18 [get_ports {ddr3_dq[7]}]

# PadFunction: IO_L23P_T3_FOE_B_15 
set_property SLEW FAST [get_ports {ddr3_dq[8]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[8]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[8]}]
set_property PACKAGE_PIN L16 [get_ports {ddr3_dq[8]}]

# PadFunction: IO_L22P_T3_A17_15 
set_property SLEW FAST [get_ports {ddr3_dq[9]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[9]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[9]}]
set_property PACKAGE_PIN L14 [get_ports {ddr3_dq[9]}]

# PadFunction: IO_L19N_T3_A21_VREF_15 
set_property SLEW FAST [get_ports {ddr3_dq[10]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[10]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[10]}]
set_property PACKAGE_PIN K14 [get_ports {ddr3_dq[10]}]

# PadFunction: IO_L24P_T3_RS1_15 
set_property SLEW FAST [get_ports {ddr3_dq[11]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[11]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[11]}]
set_property PACKAGE_PIN M15 [get_ports {ddr3_dq[11]}]

# PadFunction: IO_L23N_T3_FWE_B_15 
set_property SLEW FAST [get_ports {ddr3_dq[12]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[12]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[12]}]
set_property PACKAGE_PIN K16 [get_ports {ddr3_dq[12]}]

# PadFunction: IO_L20P_T3_A20_15 
set_property SLEW FAST [get_ports {ddr3_dq[13]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[13]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[13]}]
set_property PACKAGE_PIN M13 [get_ports {ddr3_dq[13]}]

# PadFunction: IO_L19P_T3_A22_15 
set_property SLEW FAST [get_ports {ddr3_dq[14]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[14]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[14]}]
set_property PACKAGE_PIN K13 [get_ports {ddr3_dq[14]}]

# PadFunction: IO_L20N_T3_A19_15 
set_property SLEW FAST [get_ports {ddr3_dq[15]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[15]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[15]}]
set_property PACKAGE_PIN L13 [get_ports {ddr3_dq[15]}]

# PadFunction: IO_L22N_T3_16 
set_property SLEW FAST [get_ports {ddr3_dq[16]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[16]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[16]}]
set_property PACKAGE_PIN D22 [get_ports {ddr3_dq[16]}]

# PadFunction: IO_L19N_T3_VREF_16 
set_property SLEW FAST [get_ports {ddr3_dq[17]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[17]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[17]}]
set_property PACKAGE_PIN C20 [get_ports {ddr3_dq[17]}]

# PadFunction: IO_L23P_T3_16 
set_property SLEW FAST [get_ports {ddr3_dq[18]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[18]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[18]}]
set_property PACKAGE_PIN E21 [get_ports {ddr3_dq[18]}]

# PadFunction: IO_L23N_T3_16 
set_property SLEW FAST [get_ports {ddr3_dq[19]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[19]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[19]}]
set_property PACKAGE_PIN D21 [get_ports {ddr3_dq[19]}]

# PadFunction: IO_L24P_T3_16 
set_property SLEW FAST [get_ports {ddr3_dq[20]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[20]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[20]}]
set_property PACKAGE_PIN G21 [get_ports {ddr3_dq[20]}]

# PadFunction: IO_L20P_T3_16 
set_property SLEW FAST [get_ports {ddr3_dq[21]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[21]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[21]}]
set_property PACKAGE_PIN C22 [get_ports {ddr3_dq[21]}]

# PadFunction: IO_L22P_T3_16 
set_property SLEW FAST [get_ports {ddr3_dq[22]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[22]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[22]}]
set_property PACKAGE_PIN E22 [get_ports {ddr3_dq[22]}]

# PadFunction: IO_L20N_T3_16 
set_property SLEW FAST [get_ports {ddr3_dq[23]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[23]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[23]}]
set_property PACKAGE_PIN B22 [get_ports {ddr3_dq[23]}]

# PadFunction: IO_L16N_T2_16 
set_property SLEW FAST [get_ports {ddr3_dq[24]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[24]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[24]}]
set_property PACKAGE_PIN A20 [get_ports {ddr3_dq[24]}]

# PadFunction: IO_L14N_T2_SRCC_16 
set_property SLEW FAST [get_ports {ddr3_dq[25]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[25]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[25]}]
set_property PACKAGE_PIN D19 [get_ports {ddr3_dq[25]}]

# PadFunction: IO_L17N_T2_16 
set_property SLEW FAST [get_ports {ddr3_dq[26]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[26]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[26]}]
set_property PACKAGE_PIN A19 [get_ports {ddr3_dq[26]}]

# PadFunction: IO_L18P_T2_16 
set_property SLEW FAST [get_ports {ddr3_dq[27]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[27]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[27]}]
set_property PACKAGE_PIN F19 [get_ports {ddr3_dq[27]}]

# PadFunction: IO_L13P_T2_MRCC_16 
set_property SLEW FAST [get_ports {ddr3_dq[28]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[28]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[28]}]
set_property PACKAGE_PIN C18 [get_ports {ddr3_dq[28]}]

# PadFunction: IO_L14P_T2_SRCC_16 
set_property SLEW FAST [get_ports {ddr3_dq[29]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[29]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[29]}]
set_property PACKAGE_PIN E19 [get_ports {ddr3_dq[29]}]

# PadFunction: IO_L17P_T2_16 
set_property SLEW FAST [get_ports {ddr3_dq[30]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[30]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[30]}]
set_property PACKAGE_PIN A18 [get_ports {ddr3_dq[30]}]

# PadFunction: IO_L13N_T2_MRCC_16 
set_property SLEW FAST [get_ports {ddr3_dq[31]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dq[31]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[31]}]
set_property PACKAGE_PIN C19 [get_ports {ddr3_dq[31]}]

# PadFunction: IO_L10N_T1_AD11N_15 
set_property SLEW FAST [get_ports {ddr3_addr[14]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[14]}]
set_property PACKAGE_PIN L21 [get_ports {ddr3_addr[14]}]

# PadFunction: IO_L9N_T1_DQS_AD3N_15 
set_property SLEW FAST [get_ports {ddr3_addr[13]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[13]}]
set_property PACKAGE_PIN K22 [get_ports {ddr3_addr[13]}]

# PadFunction: IO_L1P_T0_AD0P_15 
set_property SLEW FAST [get_ports {ddr3_addr[12]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[12]}]
set_property PACKAGE_PIN H13 [get_ports {ddr3_addr[12]}]

# PadFunction: IO_L2P_T0_AD8P_15 
set_property SLEW FAST [get_ports {ddr3_addr[11]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[11]}]
set_property PACKAGE_PIN G15 [get_ports {ddr3_addr[11]}]

# PadFunction: IO_L5P_T0_AD9P_15 
set_property SLEW FAST [get_ports {ddr3_addr[10]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[10]}]
set_property PACKAGE_PIN J15 [get_ports {ddr3_addr[10]}]

# PadFunction: IO_L10P_T1_AD11P_15 
set_property SLEW FAST [get_ports {ddr3_addr[9]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[9]}]
set_property PACKAGE_PIN M21 [get_ports {ddr3_addr[9]}]

# PadFunction: IO_L8N_T1_AD10N_15 
set_property SLEW FAST [get_ports {ddr3_addr[8]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[8]}]
set_property PACKAGE_PIN G20 [get_ports {ddr3_addr[8]}]

# PadFunction: IO_L2N_T0_AD8N_15 
set_property SLEW FAST [get_ports {ddr3_addr[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[7]}]
set_property PACKAGE_PIN G16 [get_ports {ddr3_addr[7]}]

# PadFunction: IO_L5N_T0_AD9N_15 
set_property SLEW FAST [get_ports {ddr3_addr[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[6]}]
set_property PACKAGE_PIN H15 [get_ports {ddr3_addr[6]}]

# PadFunction: IO_L4P_T0_15 
set_property SLEW FAST [get_ports {ddr3_addr[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[5]}]
set_property PACKAGE_PIN G17 [get_ports {ddr3_addr[5]}]

# PadFunction: IO_L1N_T0_AD0N_15 
set_property SLEW FAST [get_ports {ddr3_addr[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[4]}]
set_property PACKAGE_PIN G13 [get_ports {ddr3_addr[4]}]

# PadFunction: IO_L7N_T1_AD2N_15 
set_property SLEW FAST [get_ports {ddr3_addr[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[3]}]
set_property PACKAGE_PIN H22 [get_ports {ddr3_addr[3]}]

# PadFunction: IO_L9P_T1_DQS_AD3P_15 
set_property SLEW FAST [get_ports {ddr3_addr[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[2]}]
set_property PACKAGE_PIN K21 [get_ports {ddr3_addr[2]}]

# PadFunction: IO_L7P_T1_AD2P_15 
set_property SLEW FAST [get_ports {ddr3_addr[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[1]}]
set_property PACKAGE_PIN J22 [get_ports {ddr3_addr[1]}]

# PadFunction: IO_L11N_T1_SRCC_15 
set_property SLEW FAST [get_ports {ddr3_addr[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[0]}]
set_property PACKAGE_PIN J21 [get_ports {ddr3_addr[0]}]

# PadFunction: IO_L12N_T1_MRCC_15 
set_property SLEW FAST [get_ports {ddr3_ba[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[2]}]
set_property PACKAGE_PIN H19 [get_ports {ddr3_ba[2]}]

# PadFunction: IO_L12P_T1_MRCC_15 
set_property SLEW FAST [get_ports {ddr3_ba[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[1]}]
set_property PACKAGE_PIN J19 [get_ports {ddr3_ba[1]}]

# PadFunction: IO_L6N_T0_VREF_15 
set_property SLEW FAST [get_ports {ddr3_ba[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[0]}]
set_property PACKAGE_PIN H18 [get_ports {ddr3_ba[0]}]

# PadFunction: IO_0_15 
set_property SLEW FAST [get_ports {ddr3_ras_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ras_n}]
set_property PACKAGE_PIN J16 [get_ports {ddr3_ras_n}]

# PadFunction: IO_L6P_T0_15 
set_property SLEW FAST [get_ports {ddr3_cas_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cas_n}]
set_property PACKAGE_PIN H17 [get_ports {ddr3_cas_n}]

# PadFunction: IO_L11P_T1_SRCC_15 
set_property SLEW FAST [get_ports {ddr3_we_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_we_n}]
set_property PACKAGE_PIN J20 [get_ports {ddr3_we_n}]

# PadFunction: IO_25_16 
set_property SLEW FAST [get_ports {ddr3_reset_n}]
set_property IOSTANDARD LVCMOS15 [get_ports {ddr3_reset_n}]
set_property PACKAGE_PIN F21 [get_ports {ddr3_reset_n}]

# PadFunction: IO_L4N_T0_15 
set_property SLEW FAST [get_ports {ddr3_cke[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cke[0]}]
set_property PACKAGE_PIN G18 [get_ports {ddr3_cke[0]}]

# PadFunction: IO_L8P_T1_AD10P_15 
set_property SLEW FAST [get_ports {ddr3_odt[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_odt[0]}]
set_property PACKAGE_PIN H20 [get_ports {ddr3_odt[0]}]

# PadFunction: IO_L14P_T2_SRCC_15 
set_property SLEW FAST [get_ports {ddr3_dm[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[0]}]
set_property PACKAGE_PIN L19 [get_ports {ddr3_dm[0]}]

# PadFunction: IO_L22N_T3_A16_15 
set_property SLEW FAST [get_ports {ddr3_dm[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[1]}]
set_property PACKAGE_PIN L15 [get_ports {ddr3_dm[1]}]

# PadFunction: IO_L19P_T3_16 
set_property SLEW FAST [get_ports {ddr3_dm[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[2]}]
set_property PACKAGE_PIN D20 [get_ports {ddr3_dm[2]}]

# PadFunction: IO_L16P_T2_16 
set_property SLEW FAST [get_ports {ddr3_dm[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[3]}]
set_property PACKAGE_PIN B20 [get_ports {ddr3_dm[3]}]

# PadFunction: IO_L15P_T2_DQS_15 
set_property SLEW FAST [get_ports {ddr3_dqs_p[0]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dqs_p[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[0]}]
set_property PACKAGE_PIN N22 [get_ports {ddr3_dqs_p[0]}]

# PadFunction: IO_L15N_T2_DQS_ADV_B_15 
set_property SLEW FAST [get_ports {ddr3_dqs_n[0]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dqs_n[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[0]}]
set_property PACKAGE_PIN M22 [get_ports {ddr3_dqs_n[0]}]

# PadFunction: IO_L21P_T3_DQS_15 
set_property SLEW FAST [get_ports {ddr3_dqs_p[1]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dqs_p[1]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[1]}]
set_property PACKAGE_PIN K17 [get_ports {ddr3_dqs_p[1]}]

# PadFunction: IO_L21N_T3_DQS_A18_15 
set_property SLEW FAST [get_ports {ddr3_dqs_n[1]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dqs_n[1]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[1]}]
set_property PACKAGE_PIN J17 [get_ports {ddr3_dqs_n[1]}]

# PadFunction: IO_L21P_T3_DQS_16 
set_property SLEW FAST [get_ports {ddr3_dqs_p[2]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dqs_p[2]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[2]}]
set_property PACKAGE_PIN B21 [get_ports {ddr3_dqs_p[2]}]

# PadFunction: IO_L21N_T3_DQS_16 
set_property SLEW FAST [get_ports {ddr3_dqs_n[2]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dqs_n[2]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[2]}]
set_property PACKAGE_PIN A21 [get_ports {ddr3_dqs_n[2]}]

# PadFunction: IO_L15P_T2_DQS_16 
set_property SLEW FAST [get_ports {ddr3_dqs_p[3]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dqs_p[3]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[3]}]
set_property PACKAGE_PIN F18 [get_ports {ddr3_dqs_p[3]}]

# PadFunction: IO_L15N_T2_DQS_16 
set_property SLEW FAST [get_ports {ddr3_dqs_n[3]}]
set_property IN_TERM UNTUNED_SPLIT_60 [get_ports {ddr3_dqs_n[3]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[3]}]
set_property PACKAGE_PIN E18 [get_ports {ddr3_dqs_n[3]}]

# PadFunction: IO_L3P_T0_DQS_AD1P_15 
set_property SLEW FAST [get_ports {ddr3_ck_p[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_p[0]}]
set_property PACKAGE_PIN J14 [get_ports {ddr3_ck_p[0]}]

# PadFunction: IO_L3N_T0_DQS_AD1N_15 
set_property SLEW FAST [get_ports {ddr3_ck_n[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_n[0]}]
set_property PACKAGE_PIN H14 [get_ports {ddr3_ck_n[0]}]


set_property INTERNAL_VREF  0.750 [get_iobanks 15]
set_property INTERNAL_VREF  0.750 [get_iobanks 16]


set_property LOC PHASER_OUT_PHY_X0Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
set_property LOC PHASER_OUT_PHY_X0Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property LOC PHASER_OUT_PHY_X0Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property LOC PHASER_OUT_PHY_X0Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]
set_property LOC PHASER_OUT_PHY_X0Y13 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property LOC PHASER_OUT_PHY_X0Y12 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]


## set_property LOC PHASER_IN_PHY_X0Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
## set_property LOC PHASER_IN_PHY_X0Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X0Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X0Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X0Y13 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X0Y12 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]





set_property LOC OUT_FIFO_X0Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
set_property LOC OUT_FIFO_X0Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property LOC OUT_FIFO_X0Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property LOC OUT_FIFO_X0Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]
set_property LOC OUT_FIFO_X0Y13 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property LOC OUT_FIFO_X0Y12 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]


set_property LOC IN_FIFO_X0Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X0Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X0Y13 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X0Y12 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/in_fifo_gen.in_fifo}]


set_property LOC PHY_CONTROL_X0Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/phy_control_i}]
set_property LOC PHY_CONTROL_X0Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phy_control_i}]


set_property LOC PHASER_REF_X0Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/phaser_ref_i}]
set_property LOC PHASER_REF_X0Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phaser_ref_i}]


set_property LOC OLOGIC_X0Y119 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X0Y107 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X0Y169 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X0Y157 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/*slave_ts}]



set_property LOC PLLE2_ADV_X0Y2 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/plle2_i}]
set_property LOC MMCME2_ADV_X0Y2 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/gen_mmcm.mmcm_i}]
          


set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] \
                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
                    -setup 6

set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] \
                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
                    -hold 5

set_false_path -through [get_pins -filter {NAME =~ */DQSFOUND} -of [get_cells -hier -filter {REF_NAME == PHASER_IN_PHY}]]

set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -setup 2 -start
set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -hold 1 -start

#set_max_delay -datapath_only -from [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/* && IS_SEQUENTIAL}] -to [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1*}] 20
set_max_delay -to [get_pins -hier -include_replicated_objects -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1_reg[*]/D}] 20
set_max_delay -from [get_cells -hier *rstdiv0_sync_r1_reg*] -to [get_pins -filter {NAME =~ */RESET} -of [get_cells -hier -filter {REF_NAME == PHY_CONTROL}]] -datapath_only 5
#set_false_path -through [get_pins -hier -filter {NAME =~ */u_iodelay_ctrl/sys_rst}]
set_false_path -through [get_nets -hier -filter {NAME =~ */u_iodelay_ctrl/sys_rst_i}]
          
set_max_delay -datapath_only -from [get_cells -hier -filter {NAME =~ *ddr3_infrastructure/rstdiv0_sync_r1_reg*}] -to [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/xadc_supplied_temperature.rst_r1*}] 20
          
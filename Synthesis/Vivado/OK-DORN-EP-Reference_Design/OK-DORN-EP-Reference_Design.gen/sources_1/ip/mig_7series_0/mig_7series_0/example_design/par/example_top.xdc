##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Tue Dec 14 13:46:29 2021

##  Generated by MIG Version 4.2
##  
##################################################################################################
##  File name :       example_top.xdc
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
############## NET - IOSTANDARD ##################



set_property INTERNAL_VREF  0.750 [get_iobanks 15]
set_property INTERNAL_VREF  0.750 [get_iobanks 16]
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 21 16:59:04 2021
-- Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top clk_wiz_0 -prefix
--               clk_wiz_0_ clk_wiz_0_stub.vhdl
-- Design      : clk_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a75tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_0 is
  Port ( 
    clk_200Mhz : out STD_LOGIC;
    clk_200Mhz_DDR3 : out STD_LOGIC;
    clk_100Mhz : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end clk_wiz_0;

architecture stub of clk_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_200Mhz,clk_200Mhz_DDR3,clk_100Mhz,clk_in1_p,clk_in1_n";
begin
end;

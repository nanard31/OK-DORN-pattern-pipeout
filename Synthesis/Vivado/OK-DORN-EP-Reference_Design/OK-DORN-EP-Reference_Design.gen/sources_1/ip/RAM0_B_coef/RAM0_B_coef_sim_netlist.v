// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 12:25:48 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM0_B_coef -prefix
//               RAM0_B_coef_ RAM0_B_coef_sim_netlist.v
// Design      : RAM0_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM0_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM0_B_coef
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0361 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM0_B_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM0_B_coef.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  RAM0_B_coef_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19104)
`pragma protect data_block
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
kiKFVSy+sSr6
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

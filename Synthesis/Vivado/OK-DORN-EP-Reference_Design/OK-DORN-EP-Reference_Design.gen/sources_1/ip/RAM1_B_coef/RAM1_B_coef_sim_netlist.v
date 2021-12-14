// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 12:26:43 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM1_B_coef -prefix
//               RAM1_B_coef_ RAM1_B_coef_sim_netlist.v
// Design      : RAM1_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM1_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM1_B_coef
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
  (* C_INIT_FILE = "RAM1_B_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM1_B_coef.mif" *) 
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
  RAM1_B_coef_blk_mem_gen_v8_4_4 U0
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
7wlv18cdA5Sv
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

// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 11:35:00 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM1_A_coef -prefix
//               RAM1_A_coef_ RAM1_A_coef_sim_netlist.v
// Design      : RAM1_A_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM1_A_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM1_A_coef
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
  (* C_INIT_FILE = "RAM1_A_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM1_A_coef.mif" *) 
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
  RAM1_A_coef_blk_mem_gen_v8_4_4 U0
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
FqjyQWxRL3R5
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

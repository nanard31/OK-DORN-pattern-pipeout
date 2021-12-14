// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 11:34:20 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM0_A_coef -prefix
//               RAM0_A_coef_ RAM0_A_coef_sim_netlist.v
// Design      : RAM0_A_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM0_A_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM0_A_coef
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
  (* C_INIT_FILE = "RAM0_A_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM0_A_coef.mif" *) 
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
  RAM0_A_coef_blk_mem_gen_v8_4_4 U0
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
h6KTftapNmBk
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

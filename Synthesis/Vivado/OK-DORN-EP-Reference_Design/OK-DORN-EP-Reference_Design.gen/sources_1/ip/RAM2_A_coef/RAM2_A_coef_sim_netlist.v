// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 11:35:31 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM2_A_coef -prefix
//               RAM2_A_coef_ RAM2_A_coef_sim_netlist.v
// Design      : RAM2_A_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM2_A_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM2_A_coef
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
  (* C_INIT_FILE = "RAM2_A_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM2_A_coef.mif" *) 
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
  RAM2_A_coef_blk_mem_gen_v8_4_4 U0
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
KTjIpZCW9PrQ
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

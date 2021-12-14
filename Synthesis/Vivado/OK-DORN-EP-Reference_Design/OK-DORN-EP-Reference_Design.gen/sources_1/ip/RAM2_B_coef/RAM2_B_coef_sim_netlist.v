// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 12:27:40 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM2_B_coef -prefix
//               RAM2_B_coef_ RAM2_B_coef_sim_netlist.v
// Design      : RAM2_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM2_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM2_B_coef
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
  (* C_INIT_FILE = "RAM2_B_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM2_B_coef.mif" *) 
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
  RAM2_B_coef_blk_mem_gen_v8_4_4 U0
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
65Au5jP8xE31
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

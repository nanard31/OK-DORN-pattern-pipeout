//------------------------------------------------------------------------
// ramtest.v
//
// This sample uses the Xilinx MIG DDR3 controller and HDL to move data
// from the PC to the DDR3 and vice-versa. Based on MIG generated example_top.v.
//
// Host Interface registers:
// WireIn 0x00
//     0 - DDR3 read enable (0=disabled, 1=enabled)
//     1 - DDR3 write enable (0=disabled, 1=enabled)
//     2 - Reset
//
// PipeIn 0x80 - DDR3 write port (U11, DDR2)
// PipeOut 0xA0 - DDR3 read port (U11, DDR2)
//
// This sample is included for reference only.  No guarantees, either
// expressed or implied, are to be drawn.
//------------------------------------------------------------------------
// tabstop 3
// Copyright (c) 2005-2016 Opal Kelly Incorporated
// $Rev$ $Date$
//------------------------------------------------------------------------
`timescale 1ns/1ps

module OctoPulse(
    input  wire [4:0]   okUH,
    output wire [2:0]   okHU,
    inout  wire [31:0]  okUHU,
    inout  wire         okAA,

    input  wire         sys_clk_p,
    input  wire         sys_clk_n,

    output wire [7:0]   led/* synthesis keep */,

    inout  wire [31:0]  ddr3_dq,
    output wire [14:0]  ddr3_addr,
    output wire [2 :0]  ddr3_ba,
    output wire [0 :0]  ddr3_ck_p,
    output wire [0 :0]  ddr3_ck_n,
    output wire [0 :0]  ddr3_cke,
    output wire         ddr3_cas_n,
    output wire         ddr3_ras_n,
    output wire         ddr3_we_n,
    output wire [0 :0]  ddr3_odt,
    output wire [3 :0]  ddr3_dm,
    inout  wire [3 :0]  ddr3_dqs_p,
    inout  wire [3 :0]  ddr3_dqs_n,
    output wire         ddr3_reset_n

	//input	wire		okClk,	
    //input  wire        	sys_rst              // for simulation
	
	//ADC PART
// ADCLTC2311 SPI Signals                          // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)
//    output  wire [7 :0]  o_ADC_SCK,              // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)
//    output  wire [7 :0]  o_ADC_CNV_n,            // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)
//    input wire   [3 :0]  i_Front_ADC_SDO,        // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)
//    input wire   [3 :0]  i_Back_ADC_SDO,         // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)
	
    //output wire o_ADC_Conv_n_test/* synthesis keep */, 
//	output wire o_ADC_Sck_test/* synthesis keep */ //pin W7
	//output wire o_ADC_SDO_test /* synthesis keep */,
	
//	input wire [15:0]  i_Data_in          ,//: in STD_LOGIC_VECTOR (15 downto 0);
//    input wire [15:0]  i_Address          ,//: in STD_LOGIC_VECTOR (15 downto 0);
//    input wire i_Write          ,//: in STD_LOGIC;    
//    input wire i_trig_start     ,//: in std_logic;
//    input wire [15:0] i_phase          //: in std_logic_vector(15 downto 0);
	
);

    // OK RAMTest Parameters
    localparam BLOCK_SIZE = 128; // 512 bytes / 4 bytes per word, 
    localparam FIFO_SIZE = 1023; // note that Xilinx does not allow use of the full 1024 words
    localparam BUFFER_HEADROOM = 20; // headroom for the FIFO count to account for latency

    // Capability bitfield, used to indicate features supported by this bitfile:
    // [0] - Supports passing calibration status through FrontPanel
    localparam CAPABILITY = 16'h0001;

    wire init_calib_complete;
 //    wire [63 :0]  chipscope_wire;
    reg           sys_rst;        // comment for simulation
  //  wire sys_clk_i;
    wire clk_200MHz;
    wire [29 :0]  app_addr;
	wire [54 :0]  buffer_new_cmd_byte_addr_wr;
	wire [54 :0]  buffer_new_cmd_byte_addr_rd;	
	wire [54 :0]  Subtraction_addr_wr_addr_rd;
    wire [2  :0]  app_cmd;
    wire          app_en;
    wire          app_rdy;
    wire [255:0]  app_rd_data;
    wire          app_rd_data_end;
    wire          app_rd_data_valid;
    wire [255:0]  app_wdf_data;
    wire                       app_wdf_end;
    wire [31 :0]  app_wdf_mask;
    wire          app_wdf_rdy;
    wire          app_wdf_wren;

    wire          clk;
    wire          rst;

    // Front Panel

    // Target interface bus:
    wire         okClk;			//comment for simulation
    wire [112:0] okHE;
    wire [64:0]  okEH;

    wire [31:0]  ep00wire;

    wire         prog_empty;
    wire         pipe_in_read/* synthesis keep */;
     wire [255:0] pipe_in_data/* synthesis keep */;
    wire [6:0]   pipe_in_rd_count/* synthesis keep */;
    wire [6:0]   pipe_in_wr_count/* synthesis keep */;
    wire         pipe_in_valid/* synthesis keep */;
    wire         pipe_in_full/* synthesis keep */;
    wire         pipe_in_empty/* synthesis keep */;
    reg          pipe_in_ready/* synthesis keep */;

    wire         pipe_out_write/* synthesis keep */;
    wire [255:0] pipe_out_data/* synthesis keep */;
    wire [15:0]   pipe_out_rd_count/* synthesis keep */;
    wire [11:0]   pipe_out_wr_count/* synthesis keep */;
    wire         pipe_out_full/* synthesis keep */;
    wire         pipe_out_empty/* synthesis keep */;
    reg          pipe_out_ready/* synthesis keep */;

    wire         po0_ep_read/* synthesis keep */;
    wire [31:0]  po0_ep_datain/* synthesis keep */;

    reg [15:0] byte_counter/* synthesis keep */;
//    reg [31:0] time_counter/* synthesis keep */;
    reg [31:0] counter_led/* synthesis keep */;
    
    function [7:0] xem7310_led;
        input [7:0] a;
        integer i;
        begin
            for(i=0; i<8; i=i+1) begin: u
                xem7310_led[i] = (a[i]==1'b1) ? (1'b0) : (1'bz);
            end
        end
    endfunction

    assign led = xem7310_led({1'h1,1'h1,ep00wire[3],counter_led[24],ep00wire[0],ep00wire[1],app_wdf_rdy,init_calib_complete});
    //assign led = xem7310_led({1'h0,pipe_in_wr_count});
    

    //MIG Infrastructure Reset        //comment for simulation
    reg [31:0] rst_cnt;
    initial rst_cnt = 32'b0;
    always @(posedge okClk) begin
        if(rst_cnt < 32'h0800_0000) begin
            rst_cnt <= rst_cnt + 1;
            sys_rst <= 1'b1;
        end
        else begin
            sys_rst <= 1'b0;
        end
    end
    
 reg [15:0] burst_counter/* synthesis keep */;
 reg Write_ddr3/* synthesis keep */;
 reg Read_ddr3/* synthesis keep */;
 reg flag_wait_end/* synthesis keep */;    

    // MIG User Interface instantiation
    mig_7series_0 u_ddr3_256_32 (
        // Memory interface ports
        .ddr3_addr                      (ddr3_addr),
        .ddr3_ba                        (ddr3_ba),
        .ddr3_cas_n                     (ddr3_cas_n),
        .ddr3_ck_n                      (ddr3_ck_n),
        .ddr3_ck_p                      (ddr3_ck_p),
        .ddr3_cke                       (ddr3_cke),
        .ddr3_ras_n                     (ddr3_ras_n),
        .ddr3_reset_n                   (ddr3_reset_n),
        .ddr3_we_n                      (ddr3_we_n),
        .ddr3_dq                        (ddr3_dq),
        .ddr3_dqs_n                     (ddr3_dqs_n),
        .ddr3_dqs_p                     (ddr3_dqs_p),
        .init_calib_complete            (init_calib_complete),

        .ddr3_dm                        (ddr3_dm),
        .ddr3_odt                       (ddr3_odt),
        // Application interface ports
        .app_addr                       (app_addr),
        .app_cmd                        (app_cmd),
        .app_en                         (app_en),
        .app_wdf_data                   (app_wdf_data),
        .app_wdf_end                    (app_wdf_end),
        .app_wdf_wren                   (app_wdf_wren),
        .app_rd_data                    (app_rd_data),
        .app_rd_data_end                (app_rd_data_end),
        .app_rd_data_valid              (app_rd_data_valid),
        .app_rdy                        (app_rdy),
        .app_wdf_rdy                    (app_wdf_rdy),
        .app_sr_req                     (1'b0),
        .app_sr_active                  (),
        .app_ref_req                    (1'b0),
        .app_ref_ack                    (),
        .app_zq_req                     (1'b0),
        .app_zq_ack                     (),
        .ui_clk                         (clk),
        .ui_clk_sync_rst                (rst),

        .app_wdf_mask                   (app_wdf_mask),

		// System Clock Ports
		.sys_clk_p                      (sys_clk_p),
		.sys_clk_n                      (sys_clk_n),
	
		.sys_rst                        (sys_rst)
    );
wire  [29:0] o_rd_byte_index/* synthesis keep */;
wire  [29:0] o_wr_byte_index/* synthesis keep */;
wire  [31:0] data_number/* synthesis keep */;
 
wire debug_write/* synthesis keep */;
wire debug_read/* synthesis keep */;


    // OK MIG DDR3 Testbench Instatiation
    drive_interface_ddr3_ctrl drive_interface_ddr3_ctrl_inst (
    
        .clk                (clk),//.clk 
        .reset              (ep00wire[2] | rst),//.reset // dont touch here for simulation
//        .reads_en           (1'b1), // fix for simulation
//        .writes_en          (1'b1), // fix for simulation
        .calib_done         (init_calib_complete),//.calib_done

        .pipe_in_read        (pipe_in_read),//.pipe_in_read 
        .pipe_in_data        (pipe_in_data),//.pipe_in_data
        .pipe_in_rd_count    (pipe_in_rd_count),//.pipe_in_rd_count
        .pipe_in_valid       (pipe_in_valid),//.pipe_in_valid  
        .pipe_in_empty       (pipe_in_empty),//.pipe_in_empty

        .pipe_out_write      (pipe_out_write),//.pipe_out_write
        .pipe_out_data       (pipe_out_data),//.pipe_out_data 
        .pipe_out_wr_count   (pipe_out_wr_count),//.pipe_out_wr_count
        .pipe_out_full       (pipe_out_full),//.pipe_out_full

        .app_rdy            (app_rdy),//.app_rdy 
        .app_en             (app_en),//.app_en
        .app_cmd            (app_cmd),//.app_cmd
        .app_addr           (app_addr),//.app_addr

        .app_rd_data        (app_rd_data),//.app_rd_data
        .app_rd_data_end    (app_rd_data_end),//.app_rd_data_end
        .app_rd_data_valid  (app_rd_data_valid),//.app_rd_data_valid 

        .app_wdf_rdy        (app_wdf_rdy),//.app_wdf_rdy
        .app_wdf_wren       (app_wdf_wren),//.app_wdf_wren
        .app_wdf_data       (app_wdf_data),//.app_wdf_data 
        .app_wdf_end        (app_wdf_end),//.app_wdf_end
        .app_wdf_mask       (app_wdf_mask),//.app_wdf_mask
		
		.prog_empty			(prog_empty),//.prog_empty	
        
        .load_ep_wire		(),//.load_ep_wire
		
		.buffer_new_cmd_byte_addr_wr	(buffer_new_cmd_byte_addr_wr),
		.buffer_new_cmd_byte_addr_rd	(buffer_new_cmd_byte_addr_rd)
        
        
    );

    ddr_stamp ddr_stamp_inst (
  		//	global
				
		.clk			(clk),
		.reset		(ep00wire[2]),		
				
		//	input	
		
		.buffer_new_cmd_byte_addr_wr		(buffer_new_cmd_byte_addr_wr),
		.buffer_new_cmd_byte_addr_rd		(buffer_new_cmd_byte_addr_rd),
		
		//	output

		.Subtraction_addr_wr_addr_rd		(Subtraction_addr_wr_addr_rd)  
    );

	assign data_number = Subtraction_addr_wr_addr_rd [54 : 23];
	
    //Block Throttle
    always @(posedge okClk) begin
        // Check for enough space in output FIFO to pipe out another block
        if(pipe_out_rd_count >= BLOCK_SIZE) begin
            pipe_out_ready <= 1'b1;
        end
        else begin
            pipe_out_ready <= 1'b0;
        end
    end
    
    always @(posedge okClk) begin //Clk_100MHz) begin
        // Check for enough space in input FIFO to pipe in another block
        // The count is compared against a reduced size to account for delays in
        // FIFO count updates.
        if(pipe_in_wr_count <= (FIFO_SIZE-BUFFER_HEADROOM-BLOCK_SIZE) ) begin
            pipe_in_ready <= 1'b1;
        end
        else begin
            pipe_in_ready <= 1'b0;
        end
    end


    // Instantiate the okHost and connect endpoints.
    wire [65*6-1:0]  okEHx;

    okHost okHI(
        .okUH(okUH),
        .okHU(okHU),
        .okUHU(okUHU),
        .okAA(okAA),
        .okClk(okClk),		//remove for simualtion okclk
        .okHE(okHE),
        .okEH(okEH)
    );
    

    wire [31:0] Time_period/* synthesis keep */;  
    wire o_ADC_Generator_mode/* synthesis keep */;

    
 
    
    okWireOR # (.N(6)) wireOR (okEH, okEHx);
    okWireIn       wi00 (.okHE(okHE), .ep_addr(8'h00), .ep_dataout(ep00wire));						//ep00wire, reset, start
    okWireIn       wi01 (.okHE(okHE), .ep_addr(8'h01), .ep_dataout(Time_period));					//set data rate
    
    //okWireIn       address_RAM_generator_wire  (.okHE(okHE), .ep_addr(8'h10), .ep_dataout(Address_generator));
    //okWireIn       Data_RAM_generator_wire  (.okHE(okHE),  .ep_addr(8'h11), .ep_dataout(Data_generator));
    //okWireIn       Delay_value_wire (.okHE(okHE),  .ep_addr(8'h12), .ep_dataout(Delay_value));
    
    okWireOut      wo00 (.okHE(okHE), .okEH(okEHx[ 0*65 +: 65 ]), .ep_addr(8'h20), .ep_datain({31'h00, init_calib_complete}));
    //okWireOut      wo01 (.okHE(okHE), .okEH(okEHx[ 1*65 +: 65 ]), .ep_addr(8'h3e), .ep_datain(CAPABILITY));
    okWireOut      wo02 (.okHE(okHE), .okEH(okEHx[ 1*65 +: 65 ]), .ep_addr(8'h30), .ep_datain({25'h000_0000,pipe_in_wr_count}));
    okWireOut      wo03 (.okHE(okHE), .okEH(okEHx[ 2*65 +: 65 ]), .ep_addr(8'h31), .ep_datain({16'h0000,pipe_out_rd_count}));
    //okWireOut      wo04 (.okHE(okHE), .okEH(okEHx[ 5*65 +: 65 ]), .ep_addr(8'h32), .ep_datain({2'd0,o_rd_byte_index}));
    okWireOut      wo04 (.okHE(okHE), .okEH(okEHx[ 3*65 +: 65 ]), .ep_addr(8'h32), .ep_datain({data_number}));
    okWireOut      wo05 (.okHE(okHE), .okEH(okEHx[ 4*65 +: 65 ]), .ep_addr(8'h33), .ep_datain({31'd0,o_ADC_Generator_mode}));
    //okWireOut      wo06 (.okHE(okHE), .okEH(okEHx[ 7*65 +: 65 ]), .ep_addr(8'h34), .ep_datain(32'd0));//.ep_datain({2'd0,o_wr_byte_index}));
    //okWireOut      wo07 (.okHE(okHE), .okEH(okEHx[ 8*65 +: 65 ]), .ep_addr(8'h35), .ep_datain(32'd0));//.ep_datain({2'd0,o_rd_byte_index}));
    
    //okTriggerIn      trig0 (.okHE(okHE), .ep_addr(8'h40),.ep_clk(Clk_100MHz),  .ep_trigger(TrigIn40));//.ep_datain({2'd0,o_rd_byte_index}));
    //okTriggerIn      trig1 (.okHE(okHE), .ep_addr(8'h41),.ep_clk(Clk_100MHz),  .ep_trigger(TrigIn41));//.ep_datain({2'd0,o_rd_byte_index}));

    okPipeOut    po0  (.okHE(okHE), .okEH(okEHx[ 5*65 +: 65 ]), .ep_addr(8'ha0), .ep_read(po0_ep_read), .ep_datain(po0_ep_datain));

	wire [255:0] BigVector/* synthesis keep */;


	assign  rst_Fifo_in=ep00wire[2];//wr_rst_busy | ep00wire[2];
	    //reset is positive or negative??
    //allow to generate 256 bit frame to write into the fifo 
	// this counter allow to generate 10 Mhz ramp signal
     //always@(posedge okClk or posedge ep00wire[2])
    //always@(posedge Clk_100MHz or posedge rst_Fifo_in)
    always@(posedge okClk or posedge rst_Fifo_in)
    begin
        //if(ep00wire[2] == 1'b1)
        if(rst_Fifo_in == 1'b1)
        begin
                byte_counter <= 16'h0000;
        end else begin
             //if(byte_counter< 16'h2710)begin
             if(byte_counter< 16'h1000)begin
                byte_counter <= byte_counter + 1'b1;
              end else begin 
                 byte_counter <= 16'h0000;
             end
        end
    end


  
//assign BigVector = {Flag_00,EP_Event_Time,Cpt_integer,Flag_69,EP_Capture_Data,Flag_0000,EP_Event_Filter_A,EP_Event_Filter_B,EP_Event_Phi,Flag_0096,EP_Event_Energy};

    //always@(posedge Clk_100MHz or posedge ep00wire[2])
    always@(posedge okClk or posedge ep00wire[2])
    begin
        if(ep00wire[2] == 1'b1)
            begin
                counter_led <= 32'h00000000;
            end else begin
				counter_led <= counter_led + 1'b1;
        end
    end

	//////////////////////////////////////////////////////////////////////
	// pipe in FIFO
	////////////////////////////////////////////////////////////////////	
          
    (* DONT_TOUCH = "TRUE" *) fifo_w32_1024_r256_128 okPipeIn_fifo (
        .rst    (ep00wire[2]),		 // fix for simulation 
        //.wr_clk(Clk_100MHz),
        .wr_clk(clk),
        .rd_clk(clk),
        .din(BigVector), // Bus [31 : 0]
        .wr_en(write_instrument),
        .rd_en(pipe_in_read),
        .dout(pipe_in_data), // Bus [255 : 0]
        .full(pipe_in_full),
        .empty(pipe_in_empty),
        .valid(pipe_in_valid),
        .rd_data_count(pipe_in_rd_count), // Bus [6 : 0]
        .wr_data_count(pipe_in_wr_count),
        .prog_empty(prog_empty),
        .wr_rst_busy(wr_rst_busy),
        .rd_rst_busy(rd_rst_busy)); // Bus [9 : 0]
    //(* DONT_TOUCH = "TRUE" *) because one input of LUT2 is not connected
	
	//////////////////////////////////////////////////////////////////////
	// pipe out FIFO
	////////////////////////////////////////////////////////////////////
	
    (* DONT_TOUCH = "TRUE" *) fifo_w256_128_r32_1024 okPipeOut_fifo (
        .rst    (ep00wire[2]), // fix for simulation 
        .wr_clk(clk),
        .rd_clk(okClk),
        .din(pipe_out_data), // Bus [255 : 0]
        .wr_en(pipe_out_write),
        .rd_en(po0_ep_read),
        .dout(po0_ep_datain), // Bus [31 : 0]
        .full(pipe_out_full), 
        .empty(pipe_out_empty),
        .valid(),
        .rd_data_count(pipe_out_rd_count), // Bus [14 : 0]
        .wr_data_count(pipe_out_wr_count)); // Bus [11 : 0]

	//////////////////////////////////////////////////////////////////////
	// Event processor
	////////////////////////////////////////////////////////////////////
        
        Event_Processor_Interfaces Event_Processor_Interfaces_inst(
        .i_Rst_n    (ep00wire[2]),                // fix for simulation 
		.init_calib_complete(init_calib_complete),
        .i_Clk(clk),//clk_200MHz),//divided_clk),//okClk)                ,//clk_100Mhz),//okClk)                ,//: -- 100 MHz
		.BigVector(BigVector),
		.write_instrument(write_instrument),

		.i_wire(ep00wire[3]),
		.o_ADC_Generator_mode(o_ADC_Generator_mode),
		.Time_period (Time_period),
		.start (ep00wire[4])
				
        );

//assign BigVector = 1'b1;

endmodule
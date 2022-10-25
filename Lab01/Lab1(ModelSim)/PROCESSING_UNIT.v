// -------------------------------------------------------------
// 
// File Name: hdlsrc\lab1\PROCESSING_UNIT.v
// Created: 2022-10-25 20:08:25
// 
// Generated by MATLAB 9.12 and HDL Coder 3.20
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 1
// Target subsystem base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// Y                             ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: PROCESSING_UNIT
// Source Path: lab1/PROCESSING_UNIT
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module PROCESSING_UNIT
          (i_CLK,
           i_RST_N,
           i_CLK_EN,
           W0,
           X0,
           W1,
           X1,
           W2,
           X2,
           W3,
           X3,
           ce_out,
           Y);


  input   i_CLK;
  input   i_RST_N;
  input   i_CLK_EN;
  input   signed [7:0] W0;  // int8
  input   signed [7:0] X0;  // int8
  input   signed [7:0] W1;  // int8
  input   signed [7:0] X1;  // int8
  input   signed [7:0] W2;  // int8
  input   signed [7:0] X2;  // int8
  input   signed [7:0] W3;  // int8
  input   signed [7:0] X3;  // int8
  output  ce_out;
  output  signed [15:0] Y;  // int16


  wire enb;
  reg signed [7:0] Unit_Delay_out1;  // int8
  reg signed [7:0] Unit_Delay2_out1;  // int8
  reg signed [7:0] Unit_Delay4_out1;  // int8
  reg signed [7:0] Unit_Delay6_out1;  // int8
  reg signed [7:0] Unit_Delay1_out1;  // int8
  wire signed [15:0] Product_mul_temp;  // sfix16
  wire [15:0] Product_out1;  // uint16
  reg signed [7:0] Unit_Delay3_out1;  // int8
  wire signed [15:0] Product1_out1;  // int16
  wire signed [31:0] Add_stage2_add_temp;  // sfix32
  wire signed [31:0] Add_stage2_1;  // sfix32
  wire signed [31:0] Add_stage2_2;  // sfix32
  wire signed [16:0] Add_op_stage1;  // sfix17
  reg signed [7:0] Unit_Delay5_out1;  // int8
  wire signed [15:0] Product2_out1;  // int16
  wire signed [31:0] Add_stage3_add_temp;  // sfix32
  wire signed [31:0] Add_stage3_1;  // sfix32
  wire signed [31:0] Add_stage3_2;  // sfix32
  wire signed [17:0] Add_op_stage2;  // sfix18
  reg signed [7:0] Unit_Delay7_out1;  // int8
  wire signed [15:0] Product3_out1;  // int16
  wire signed [31:0] Add_stage4_add_temp;  // sfix32
  wire signed [31:0] Add_stage4_1;  // sfix32
  wire signed [31:0] Add_stage4_2;  // sfix32
  wire signed [15:0] Add_out1;  // int16
  reg signed [15:0] Unit_Delay8_out1;  // int16


  assign enb = i_CLK_EN;

  always @(posedge i_CLK or negedge i_RST_N)
    begin : Unit_Delay_process
      if (i_RST_N == 1'b0) begin
        Unit_Delay_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay_out1 <= W0;
        end
      end
    end



  always @(posedge i_CLK or negedge i_RST_N)
    begin : Unit_Delay2_process
      if (i_RST_N == 1'b0) begin
        Unit_Delay2_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay2_out1 <= W1;
        end
      end
    end



  always @(posedge i_CLK or negedge i_RST_N)
    begin : Unit_Delay4_process
      if (i_RST_N == 1'b0) begin
        Unit_Delay4_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay4_out1 <= W2;
        end
      end
    end



  always @(posedge i_CLK or negedge i_RST_N)
    begin : Unit_Delay6_process
      if (i_RST_N == 1'b0) begin
        Unit_Delay6_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay6_out1 <= W3;
        end
      end
    end



  always @(posedge i_CLK or negedge i_RST_N)
    begin : Unit_Delay1_process
      if (i_RST_N == 1'b0) begin
        Unit_Delay1_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay1_out1 <= X0;
        end
      end
    end



  assign Product_mul_temp = Unit_Delay_out1 * Unit_Delay1_out1;
  assign Product_out1 = Product_mul_temp;



  always @(posedge i_CLK or negedge i_RST_N)
    begin : Unit_Delay3_process
      if (i_RST_N == 1'b0) begin
        Unit_Delay3_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay3_out1 <= X1;
        end
      end
    end



  assign Product1_out1 = Unit_Delay2_out1 * Unit_Delay3_out1;



  assign Add_stage2_1 = {16'b0, Product_out1};
  assign Add_stage2_2 = {{16{Product1_out1[15]}}, Product1_out1};
  assign Add_stage2_add_temp = Add_stage2_1 + Add_stage2_2;
  assign Add_op_stage1 = Add_stage2_add_temp[16:0];



  always @(posedge i_CLK or negedge i_RST_N)
    begin : Unit_Delay5_process
      if (i_RST_N == 1'b0) begin
        Unit_Delay5_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay5_out1 <= X2;
        end
      end
    end



  assign Product2_out1 = Unit_Delay4_out1 * Unit_Delay5_out1;



  assign Add_stage3_1 = {{15{Add_op_stage1[16]}}, Add_op_stage1};
  assign Add_stage3_2 = {{16{Product2_out1[15]}}, Product2_out1};
  assign Add_stage3_add_temp = Add_stage3_1 + Add_stage3_2;
  assign Add_op_stage2 = Add_stage3_add_temp[17:0];



  always @(posedge i_CLK or negedge i_RST_N)
    begin : Unit_Delay7_process
      if (i_RST_N == 1'b0) begin
        Unit_Delay7_out1 <= 8'sb00000000;
      end
      else begin
        if (enb) begin
          Unit_Delay7_out1 <= X3;
        end
      end
    end



  assign Product3_out1 = Unit_Delay6_out1 * Unit_Delay7_out1;



  assign Add_stage4_1 = {{14{Add_op_stage2[17]}}, Add_op_stage2};
  assign Add_stage4_2 = {{16{Product3_out1[15]}}, Product3_out1};
  assign Add_stage4_add_temp = Add_stage4_1 + Add_stage4_2;
  assign Add_out1 = Add_stage4_add_temp[15:0];



  always @(posedge i_CLK or negedge i_RST_N)
    begin : Unit_Delay8_process
      if (i_RST_N == 1'b0) begin
        Unit_Delay8_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Unit_Delay8_out1 <= Add_out1;
        end
      end
    end



  assign Y = Unit_Delay8_out1;

  assign ce_out = i_CLK_EN;

endmodule  // PROCESSING_UNIT

// -------------------------------------------------------------
// 
// File Name: hdlsrc\flatpoint\Enabled_Subsystem.v
// Created: 2023-01-13 05:10:24
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
// o_VALID                       ce_out        1
// o_MAGNITUDE                   ce_out        1
// o_PHASE                       ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Enabled_Subsystem
// Source Path: flatpoint/Enabled Subsystem
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Enabled_Subsystem
          (clk,
           reset,
           clk_enable,
           i_VALID,
           i_COMPLEX_VALUE_re,
           i_COMPLEX_VALUE_im,
           ce_out,
           o_VALID,
           o_MAGNITUDE,
           o_PHASE);


  input   clk;
  input   reset;
  input   clk_enable;
  input   [63:0] i_VALID;  // double
  input   [31:0] i_COMPLEX_VALUE_re;  // single
  input   [31:0] i_COMPLEX_VALUE_im;  // single
  output  ce_out;
  output  [63:0] o_VALID;  // double
  output  [31:0] o_MAGNITUDE;  // single
  output  [31:0] o_PHASE;  // single


  wire enb;
  reg [63:0] delayMatch_reg [0:46];  // ufix64 [47]
  wire [63:0] delayMatch_reg_next [0:46];  // ufix64 [47]
  wire [63:0] i_VALID_1;  // ufix64
  wire [31:0] Product_out1;  // ufix32
  wire [31:0] Product1_out1;  // ufix32
  wire [31:0] Add_out1;  // ufix32
  wire [31:0] Sqrt_out1;  // ufix32
  wire [31:0] Trigonometric_Function_out1;  // ufix32
  reg [31:0] delayMatch1_reg [0:4];  // ufix32 [5]
  wire [31:0] delayMatch1_reg_next [0:4];  // ufix32 [5]
  wire [31:0] Trigonometric_Function_out1_1;  // ufix32


  assign enb = clk_enable;

  always @(posedge clk or posedge reset)
    begin : delayMatch_process
      if (reset == 1'b1) begin
        delayMatch_reg[0] <= 64'h0000000000000000;
        delayMatch_reg[1] <= 64'h0000000000000000;
        delayMatch_reg[2] <= 64'h0000000000000000;
        delayMatch_reg[3] <= 64'h0000000000000000;
        delayMatch_reg[4] <= 64'h0000000000000000;
        delayMatch_reg[5] <= 64'h0000000000000000;
        delayMatch_reg[6] <= 64'h0000000000000000;
        delayMatch_reg[7] <= 64'h0000000000000000;
        delayMatch_reg[8] <= 64'h0000000000000000;
        delayMatch_reg[9] <= 64'h0000000000000000;
        delayMatch_reg[10] <= 64'h0000000000000000;
        delayMatch_reg[11] <= 64'h0000000000000000;
        delayMatch_reg[12] <= 64'h0000000000000000;
        delayMatch_reg[13] <= 64'h0000000000000000;
        delayMatch_reg[14] <= 64'h0000000000000000;
        delayMatch_reg[15] <= 64'h0000000000000000;
        delayMatch_reg[16] <= 64'h0000000000000000;
        delayMatch_reg[17] <= 64'h0000000000000000;
        delayMatch_reg[18] <= 64'h0000000000000000;
        delayMatch_reg[19] <= 64'h0000000000000000;
        delayMatch_reg[20] <= 64'h0000000000000000;
        delayMatch_reg[21] <= 64'h0000000000000000;
        delayMatch_reg[22] <= 64'h0000000000000000;
        delayMatch_reg[23] <= 64'h0000000000000000;
        delayMatch_reg[24] <= 64'h0000000000000000;
        delayMatch_reg[25] <= 64'h0000000000000000;
        delayMatch_reg[26] <= 64'h0000000000000000;
        delayMatch_reg[27] <= 64'h0000000000000000;
        delayMatch_reg[28] <= 64'h0000000000000000;
        delayMatch_reg[29] <= 64'h0000000000000000;
        delayMatch_reg[30] <= 64'h0000000000000000;
        delayMatch_reg[31] <= 64'h0000000000000000;
        delayMatch_reg[32] <= 64'h0000000000000000;
        delayMatch_reg[33] <= 64'h0000000000000000;
        delayMatch_reg[34] <= 64'h0000000000000000;
        delayMatch_reg[35] <= 64'h0000000000000000;
        delayMatch_reg[36] <= 64'h0000000000000000;
        delayMatch_reg[37] <= 64'h0000000000000000;
        delayMatch_reg[38] <= 64'h0000000000000000;
        delayMatch_reg[39] <= 64'h0000000000000000;
        delayMatch_reg[40] <= 64'h0000000000000000;
        delayMatch_reg[41] <= 64'h0000000000000000;
        delayMatch_reg[42] <= 64'h0000000000000000;
        delayMatch_reg[43] <= 64'h0000000000000000;
        delayMatch_reg[44] <= 64'h0000000000000000;
        delayMatch_reg[45] <= 64'h0000000000000000;
        delayMatch_reg[46] <= 64'h0000000000000000;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
          delayMatch_reg[2] <= delayMatch_reg_next[2];
          delayMatch_reg[3] <= delayMatch_reg_next[3];
          delayMatch_reg[4] <= delayMatch_reg_next[4];
          delayMatch_reg[5] <= delayMatch_reg_next[5];
          delayMatch_reg[6] <= delayMatch_reg_next[6];
          delayMatch_reg[7] <= delayMatch_reg_next[7];
          delayMatch_reg[8] <= delayMatch_reg_next[8];
          delayMatch_reg[9] <= delayMatch_reg_next[9];
          delayMatch_reg[10] <= delayMatch_reg_next[10];
          delayMatch_reg[11] <= delayMatch_reg_next[11];
          delayMatch_reg[12] <= delayMatch_reg_next[12];
          delayMatch_reg[13] <= delayMatch_reg_next[13];
          delayMatch_reg[14] <= delayMatch_reg_next[14];
          delayMatch_reg[15] <= delayMatch_reg_next[15];
          delayMatch_reg[16] <= delayMatch_reg_next[16];
          delayMatch_reg[17] <= delayMatch_reg_next[17];
          delayMatch_reg[18] <= delayMatch_reg_next[18];
          delayMatch_reg[19] <= delayMatch_reg_next[19];
          delayMatch_reg[20] <= delayMatch_reg_next[20];
          delayMatch_reg[21] <= delayMatch_reg_next[21];
          delayMatch_reg[22] <= delayMatch_reg_next[22];
          delayMatch_reg[23] <= delayMatch_reg_next[23];
          delayMatch_reg[24] <= delayMatch_reg_next[24];
          delayMatch_reg[25] <= delayMatch_reg_next[25];
          delayMatch_reg[26] <= delayMatch_reg_next[26];
          delayMatch_reg[27] <= delayMatch_reg_next[27];
          delayMatch_reg[28] <= delayMatch_reg_next[28];
          delayMatch_reg[29] <= delayMatch_reg_next[29];
          delayMatch_reg[30] <= delayMatch_reg_next[30];
          delayMatch_reg[31] <= delayMatch_reg_next[31];
          delayMatch_reg[32] <= delayMatch_reg_next[32];
          delayMatch_reg[33] <= delayMatch_reg_next[33];
          delayMatch_reg[34] <= delayMatch_reg_next[34];
          delayMatch_reg[35] <= delayMatch_reg_next[35];
          delayMatch_reg[36] <= delayMatch_reg_next[36];
          delayMatch_reg[37] <= delayMatch_reg_next[37];
          delayMatch_reg[38] <= delayMatch_reg_next[38];
          delayMatch_reg[39] <= delayMatch_reg_next[39];
          delayMatch_reg[40] <= delayMatch_reg_next[40];
          delayMatch_reg[41] <= delayMatch_reg_next[41];
          delayMatch_reg[42] <= delayMatch_reg_next[42];
          delayMatch_reg[43] <= delayMatch_reg_next[43];
          delayMatch_reg[44] <= delayMatch_reg_next[44];
          delayMatch_reg[45] <= delayMatch_reg_next[45];
          delayMatch_reg[46] <= delayMatch_reg_next[46];
        end
      end
    end

  assign i_VALID_1 = delayMatch_reg[46];
  assign delayMatch_reg_next[0] = i_VALID;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];
  assign delayMatch_reg_next[2] = delayMatch_reg[1];
  assign delayMatch_reg_next[3] = delayMatch_reg[2];
  assign delayMatch_reg_next[4] = delayMatch_reg[3];
  assign delayMatch_reg_next[5] = delayMatch_reg[4];
  assign delayMatch_reg_next[6] = delayMatch_reg[5];
  assign delayMatch_reg_next[7] = delayMatch_reg[6];
  assign delayMatch_reg_next[8] = delayMatch_reg[7];
  assign delayMatch_reg_next[9] = delayMatch_reg[8];
  assign delayMatch_reg_next[10] = delayMatch_reg[9];
  assign delayMatch_reg_next[11] = delayMatch_reg[10];
  assign delayMatch_reg_next[12] = delayMatch_reg[11];
  assign delayMatch_reg_next[13] = delayMatch_reg[12];
  assign delayMatch_reg_next[14] = delayMatch_reg[13];
  assign delayMatch_reg_next[15] = delayMatch_reg[14];
  assign delayMatch_reg_next[16] = delayMatch_reg[15];
  assign delayMatch_reg_next[17] = delayMatch_reg[16];
  assign delayMatch_reg_next[18] = delayMatch_reg[17];
  assign delayMatch_reg_next[19] = delayMatch_reg[18];
  assign delayMatch_reg_next[20] = delayMatch_reg[19];
  assign delayMatch_reg_next[21] = delayMatch_reg[20];
  assign delayMatch_reg_next[22] = delayMatch_reg[21];
  assign delayMatch_reg_next[23] = delayMatch_reg[22];
  assign delayMatch_reg_next[24] = delayMatch_reg[23];
  assign delayMatch_reg_next[25] = delayMatch_reg[24];
  assign delayMatch_reg_next[26] = delayMatch_reg[25];
  assign delayMatch_reg_next[27] = delayMatch_reg[26];
  assign delayMatch_reg_next[28] = delayMatch_reg[27];
  assign delayMatch_reg_next[29] = delayMatch_reg[28];
  assign delayMatch_reg_next[30] = delayMatch_reg[29];
  assign delayMatch_reg_next[31] = delayMatch_reg[30];
  assign delayMatch_reg_next[32] = delayMatch_reg[31];
  assign delayMatch_reg_next[33] = delayMatch_reg[32];
  assign delayMatch_reg_next[34] = delayMatch_reg[33];
  assign delayMatch_reg_next[35] = delayMatch_reg[34];
  assign delayMatch_reg_next[36] = delayMatch_reg[35];
  assign delayMatch_reg_next[37] = delayMatch_reg[36];
  assign delayMatch_reg_next[38] = delayMatch_reg[37];
  assign delayMatch_reg_next[39] = delayMatch_reg[38];
  assign delayMatch_reg_next[40] = delayMatch_reg[39];
  assign delayMatch_reg_next[41] = delayMatch_reg[40];
  assign delayMatch_reg_next[42] = delayMatch_reg[41];
  assign delayMatch_reg_next[43] = delayMatch_reg[42];
  assign delayMatch_reg_next[44] = delayMatch_reg[43];
  assign delayMatch_reg_next[45] = delayMatch_reg[44];
  assign delayMatch_reg_next[46] = delayMatch_reg[45];



  nfp_mul_single u_nfp_mul_comp (.clk(clk),
                                 .reset(reset),
                                 .enb(clk_enable),
                                 .nfp_in1(i_COMPLEX_VALUE_re),  // single
                                 .nfp_in2(i_COMPLEX_VALUE_re),  // single
                                 .nfp_out(Product_out1)  // single
                                 );

  nfp_mul_single u_nfp_mul_comp_1 (.clk(clk),
                                   .reset(reset),
                                   .enb(clk_enable),
                                   .nfp_in1(i_COMPLEX_VALUE_im),  // single
                                   .nfp_in2(i_COMPLEX_VALUE_im),  // single
                                   .nfp_out(Product1_out1)  // single
                                   );

  nfp_add_single u_nfp_add_comp (.clk(clk),
                                 .reset(reset),
                                 .enb(clk_enable),
                                 .nfp_in1(Product_out1),  // single
                                 .nfp_in2(Product1_out1),  // single
                                 .nfp_out(Add_out1)  // single
                                 );

  nfp_sqrt_single u_nfp_sqrt_comp (.clk(clk),
                                   .reset(reset),
                                   .enb(clk_enable),
                                   .nfp_in(Add_out1),  // single
                                   .nfp_out(Sqrt_out1)  // single
                                   );

  nfp_atan2_single u_nfp_atan2_comp (.clk(clk),
                                     .reset(reset),
                                     .enb(clk_enable),
                                     .nfp_in1(i_COMPLEX_VALUE_im),  // single
                                     .nfp_in2(i_COMPLEX_VALUE_re),  // single
                                     .nfp_out(Trigonometric_Function_out1)  // single
                                     );

  always @(posedge clk or posedge reset)
    begin : delayMatch1_process
      if (reset == 1'b1) begin
        delayMatch1_reg[0] <= 32'h00000000;
        delayMatch1_reg[1] <= 32'h00000000;
        delayMatch1_reg[2] <= 32'h00000000;
        delayMatch1_reg[3] <= 32'h00000000;
        delayMatch1_reg[4] <= 32'h00000000;
      end
      else begin
        if (enb) begin
          delayMatch1_reg[0] <= delayMatch1_reg_next[0];
          delayMatch1_reg[1] <= delayMatch1_reg_next[1];
          delayMatch1_reg[2] <= delayMatch1_reg_next[2];
          delayMatch1_reg[3] <= delayMatch1_reg_next[3];
          delayMatch1_reg[4] <= delayMatch1_reg_next[4];
        end
      end
    end

  assign Trigonometric_Function_out1_1 = delayMatch1_reg[4];
  assign delayMatch1_reg_next[0] = Trigonometric_Function_out1;
  assign delayMatch1_reg_next[1] = delayMatch1_reg[0];
  assign delayMatch1_reg_next[2] = delayMatch1_reg[1];
  assign delayMatch1_reg_next[3] = delayMatch1_reg[2];
  assign delayMatch1_reg_next[4] = delayMatch1_reg[3];



  assign ce_out = clk_enable;

  assign o_VALID = i_VALID_1;

  assign o_MAGNITUDE = Sqrt_out1;

  assign o_PHASE = Trigonometric_Function_out1_1;

endmodule  // Enabled_Subsystem


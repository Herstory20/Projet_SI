// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon May 29 22:56:15 2023
// Host        : srv-tp04 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file {/home/seta/Documents/4A/Semestre
//               8/SI/Projet_SI/processeur_si.sim/sim_1/impl/func/xsim/Test_AFC_func_impl.v}
// Design      : processor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (minusOp,
    O,
    \B_out_reg[3] ,
    \B_out_reg[7] ,
    plusOp,
    Q,
    \B_out_reg[3]_0 ,
    \B_out_reg[3]_1 ,
    DI,
    S,
    \B_out_reg[3]_2 ,
    \B_out_reg[2] ,
    \C_out_reg[2] ,
    \B_out_reg[5] ,
    \C_out_reg[3] ,
    \B_out_reg[2]_0 ,
    \B_out_reg[2]_1 ,
    \C_out_reg[3]_0 ,
    \B_out_reg[7]_0 ,
    \B_out_reg[0] ,
    \B_out_reg[1] ,
    \C_out_reg[6] ,
    D,
    E);
  output [7:0]minusOp;
  output [3:0]O;
  output [0:0]\B_out_reg[3] ;
  output [3:0]\B_out_reg[7] ;
  output [7:0]plusOp;
  output [7:0]Q;
  input [3:0]\B_out_reg[3]_0 ;
  input [3:0]\B_out_reg[3]_1 ;
  input [2:0]DI;
  input [3:0]S;
  input [2:0]\B_out_reg[3]_2 ;
  input [3:0]\B_out_reg[2] ;
  input [2:0]\C_out_reg[2] ;
  input [3:0]\B_out_reg[5] ;
  input [2:0]\C_out_reg[3] ;
  input [3:0]\B_out_reg[2]_0 ;
  input [0:0]\B_out_reg[2]_1 ;
  input [3:0]\C_out_reg[3]_0 ;
  input [3:0]\B_out_reg[7]_0 ;
  input \B_out_reg[0] ;
  input \B_out_reg[1] ;
  input \C_out_reg[6] ;
  input [7:0]D;
  input [0:0]E;

  wire \B_out_reg[0] ;
  wire \B_out_reg[1] ;
  wire [3:0]\B_out_reg[2] ;
  wire [3:0]\B_out_reg[2]_0 ;
  wire [0:0]\B_out_reg[2]_1 ;
  wire [0:0]\B_out_reg[3] ;
  wire [3:0]\B_out_reg[3]_0 ;
  wire [3:0]\B_out_reg[3]_1 ;
  wire [2:0]\B_out_reg[3]_2 ;
  wire [3:0]\B_out_reg[5] ;
  wire [3:0]\B_out_reg[7] ;
  wire [3:0]\B_out_reg[7]_0 ;
  wire [2:0]\C_out_reg[2] ;
  wire [2:0]\C_out_reg[3] ;
  wire [3:0]\C_out_reg[3]_0 ;
  wire \C_out_reg[6] ;
  wire [7:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire [7:0]minusOp;
  wire minusOp_carry_n_0;
  wire [3:3]multOp;
  wire multOp__0_carry__0_n_4;
  wire multOp__0_carry__0_n_5;
  wire multOp__0_carry__0_n_6;
  wire multOp__0_carry__0_n_7;
  wire multOp__0_carry_n_0;
  wire multOp__22_carry__0_n_7;
  wire multOp__22_carry_n_0;
  wire multOp__22_carry_n_4;
  wire multOp__22_carry_n_5;
  wire multOp__22_carry_n_6;
  wire multOp__35_carry__0_i_1_n_0;
  wire multOp__35_carry_i_1_n_0;
  wire multOp__35_carry_i_2_n_0;
  wire multOp__35_carry_i_3_n_0;
  wire multOp__35_carry_i_4_n_0;
  wire multOp__35_carry_n_0;
  wire [7:0]plusOp;
  wire plusOp_carry_n_0;
  wire [2:0]NLW_minusOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_minusOp_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_multOp__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_multOp__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_multOp__22_carry_CO_UNCONNECTED;
  wire [3:0]NLW_multOp__22_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_multOp__22_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_multOp__35_carry_CO_UNCONNECTED;
  wire [0:0]NLW_multOp__35_carry_O_UNCONNECTED;
  wire [3:0]NLW_multOp__35_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_multOp__35_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__0_CO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Temp_res_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Temp_res_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Temp_res_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Temp_res_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Temp_res_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Temp_res_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Temp_res_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Temp_res_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(Q[7]));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,NLW_minusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(\B_out_reg[3]_0 ),
        .O(minusOp[3:0]),
        .S(\B_out_reg[3]_1 ));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO(NLW_minusOp_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,DI}),
        .O(minusOp[7:4]),
        .S(S));
  CARRY4 multOp__0_carry
       (.CI(1'b0),
        .CO({multOp__0_carry_n_0,NLW_multOp__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\B_out_reg[3]_2 ,1'b0}),
        .O(O),
        .S(\B_out_reg[2] ));
  CARRY4 multOp__0_carry__0
       (.CI(multOp__0_carry_n_0),
        .CO(NLW_multOp__0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\C_out_reg[2] }),
        .O({multOp__0_carry__0_n_4,multOp__0_carry__0_n_5,multOp__0_carry__0_n_6,multOp__0_carry__0_n_7}),
        .S(\B_out_reg[5] ));
  CARRY4 multOp__22_carry
       (.CI(1'b0),
        .CO({multOp__22_carry_n_0,NLW_multOp__22_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\C_out_reg[3] ,1'b0}),
        .O({multOp__22_carry_n_4,multOp__22_carry_n_5,multOp__22_carry_n_6,\B_out_reg[3] }),
        .S(\B_out_reg[2]_0 ));
  CARRY4 multOp__22_carry__0
       (.CI(multOp__22_carry_n_0),
        .CO(NLW_multOp__22_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_multOp__22_carry__0_O_UNCONNECTED[3:1],multOp__22_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,\B_out_reg[2]_1 }));
  CARRY4 multOp__35_carry
       (.CI(1'b0),
        .CO({multOp__35_carry_n_0,NLW_multOp__35_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({multOp__35_carry_i_1_n_0,multOp__0_carry__0_n_6,multOp__0_carry__0_n_7,O[3]}),
        .O({\B_out_reg[7] [2:0],NLW_multOp__35_carry_O_UNCONNECTED[0]}),
        .S({multOp__35_carry_i_2_n_0,multOp__35_carry_i_3_n_0,multOp__35_carry_i_4_n_0,multOp}));
  CARRY4 multOp__35_carry__0
       (.CI(multOp__35_carry_n_0),
        .CO(NLW_multOp__35_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_multOp__35_carry__0_O_UNCONNECTED[3:1],\B_out_reg[7] [3]}),
        .S({1'b0,1'b0,1'b0,multOp__35_carry__0_i_1_n_0}));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    multOp__35_carry__0_i_1
       (.I0(multOp__22_carry__0_n_7),
        .I1(multOp__0_carry__0_n_4),
        .I2(\B_out_reg[0] ),
        .I3(multOp__0_carry__0_n_5),
        .I4(multOp__22_carry_n_4),
        .I5(\B_out_reg[1] ),
        .O(multOp__35_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__35_carry_i_1
       (.I0(multOp__0_carry__0_n_5),
        .I1(multOp__22_carry_n_4),
        .O(multOp__35_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9666)) 
    multOp__35_carry_i_2
       (.I0(multOp__22_carry_n_4),
        .I1(multOp__0_carry__0_n_5),
        .I2(\C_out_reg[6] ),
        .I3(\B_out_reg[3]_0 [0]),
        .O(multOp__35_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__35_carry_i_3
       (.I0(multOp__0_carry__0_n_6),
        .I1(multOp__22_carry_n_5),
        .O(multOp__35_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__35_carry_i_4
       (.I0(multOp__0_carry__0_n_7),
        .I1(multOp__22_carry_n_6),
        .O(multOp__35_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__35_carry_i_5
       (.I0(O[3]),
        .I1(\B_out_reg[3] ),
        .O(multOp));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,NLW_plusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\B_out_reg[3]_0 ),
        .O(plusOp[3:0]),
        .S(\C_out_reg[3]_0 ));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO(NLW_plusOp_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,DI}),
        .O(plusOp[7:4]),
        .S(\B_out_reg[7]_0 ));
endmodule

module BR
   (Qa_OBUF,
    Qb_OBUF,
    \B_out_reg[3] ,
    \B_out_reg[2] ,
    \B_out_reg[1] ,
    \B_out_reg[0] ,
    C_out,
    Q,
    E,
    RST_IBUF,
    \OP_out_reg[1] ,
    \OP_out_reg[1]_0 ,
    \OP_out_reg[1]_1 ,
    \OP_out_reg[1]_2 ,
    \OP_out_reg[1]_3 ,
    \OP_out_reg[1]_4 ,
    \OP_out_reg[1]_5 );
  output [7:0]Qa_OBUF;
  output [7:0]Qb_OBUF;
  input \B_out_reg[3] ;
  input \B_out_reg[2] ;
  input \B_out_reg[1] ;
  input \B_out_reg[0] ;
  input [0:0]C_out;
  input [7:0]Q;
  input [0:0]E;
  input RST_IBUF;
  input [0:0]\OP_out_reg[1] ;
  input [0:0]\OP_out_reg[1]_0 ;
  input [0:0]\OP_out_reg[1]_1 ;
  input [0:0]\OP_out_reg[1]_2 ;
  input [0:0]\OP_out_reg[1]_3 ;
  input [0:0]\OP_out_reg[1]_4 ;
  input [0:0]\OP_out_reg[1]_5 ;

  wire \B_out_reg[0] ;
  wire \B_out_reg[1] ;
  wire \B_out_reg[2] ;
  wire \B_out_reg[3] ;
  wire [0:0]C_out;
  wire [0:0]E;
  wire [0:0]\OP_out_reg[1] ;
  wire [0:0]\OP_out_reg[1]_0 ;
  wire [0:0]\OP_out_reg[1]_1 ;
  wire [0:0]\OP_out_reg[1]_2 ;
  wire [0:0]\OP_out_reg[1]_3 ;
  wire [0:0]\OP_out_reg[1]_4 ;
  wire [0:0]\OP_out_reg[1]_5 ;
  wire [7:0]Q;
  wire [7:0]Qa_OBUF;
  wire \Qa_OBUF[0]_inst_i_2_n_0 ;
  wire \Qa_OBUF[0]_inst_i_3_n_0 ;
  wire \Qa_OBUF[1]_inst_i_2_n_0 ;
  wire \Qa_OBUF[1]_inst_i_3_n_0 ;
  wire \Qa_OBUF[2]_inst_i_2_n_0 ;
  wire \Qa_OBUF[2]_inst_i_3_n_0 ;
  wire \Qa_OBUF[3]_inst_i_2_n_0 ;
  wire \Qa_OBUF[3]_inst_i_3_n_0 ;
  wire \Qa_OBUF[4]_inst_i_2_n_0 ;
  wire \Qa_OBUF[4]_inst_i_3_n_0 ;
  wire \Qa_OBUF[5]_inst_i_2_n_0 ;
  wire \Qa_OBUF[5]_inst_i_3_n_0 ;
  wire \Qa_OBUF[6]_inst_i_2_n_0 ;
  wire \Qa_OBUF[6]_inst_i_3_n_0 ;
  wire \Qa_OBUF[7]_inst_i_2_n_0 ;
  wire \Qa_OBUF[7]_inst_i_3_n_0 ;
  wire [7:0]Qb_OBUF;
  wire RST_IBUF;
  wire \bancreg_reg_n_0_[0][0] ;
  wire \bancreg_reg_n_0_[0][1] ;
  wire \bancreg_reg_n_0_[0][2] ;
  wire \bancreg_reg_n_0_[0][3] ;
  wire \bancreg_reg_n_0_[0][4] ;
  wire \bancreg_reg_n_0_[0][5] ;
  wire \bancreg_reg_n_0_[0][6] ;
  wire \bancreg_reg_n_0_[0][7] ;
  wire \bancreg_reg_n_0_[10][0] ;
  wire \bancreg_reg_n_0_[10][1] ;
  wire \bancreg_reg_n_0_[10][2] ;
  wire \bancreg_reg_n_0_[10][3] ;
  wire \bancreg_reg_n_0_[10][4] ;
  wire \bancreg_reg_n_0_[10][5] ;
  wire \bancreg_reg_n_0_[10][6] ;
  wire \bancreg_reg_n_0_[10][7] ;
  wire \bancreg_reg_n_0_[11][0] ;
  wire \bancreg_reg_n_0_[11][1] ;
  wire \bancreg_reg_n_0_[11][2] ;
  wire \bancreg_reg_n_0_[11][3] ;
  wire \bancreg_reg_n_0_[11][4] ;
  wire \bancreg_reg_n_0_[11][5] ;
  wire \bancreg_reg_n_0_[11][6] ;
  wire \bancreg_reg_n_0_[11][7] ;
  wire \bancreg_reg_n_0_[1][0] ;
  wire \bancreg_reg_n_0_[1][1] ;
  wire \bancreg_reg_n_0_[1][2] ;
  wire \bancreg_reg_n_0_[1][3] ;
  wire \bancreg_reg_n_0_[1][4] ;
  wire \bancreg_reg_n_0_[1][5] ;
  wire \bancreg_reg_n_0_[1][6] ;
  wire \bancreg_reg_n_0_[1][7] ;
  wire \bancreg_reg_n_0_[2][0] ;
  wire \bancreg_reg_n_0_[2][1] ;
  wire \bancreg_reg_n_0_[2][2] ;
  wire \bancreg_reg_n_0_[2][3] ;
  wire \bancreg_reg_n_0_[2][4] ;
  wire \bancreg_reg_n_0_[2][5] ;
  wire \bancreg_reg_n_0_[2][6] ;
  wire \bancreg_reg_n_0_[2][7] ;
  wire \bancreg_reg_n_0_[3][0] ;
  wire \bancreg_reg_n_0_[3][1] ;
  wire \bancreg_reg_n_0_[3][2] ;
  wire \bancreg_reg_n_0_[3][3] ;
  wire \bancreg_reg_n_0_[3][4] ;
  wire \bancreg_reg_n_0_[3][5] ;
  wire \bancreg_reg_n_0_[3][6] ;
  wire \bancreg_reg_n_0_[3][7] ;
  wire \bancreg_reg_n_0_[8][0] ;
  wire \bancreg_reg_n_0_[8][1] ;
  wire \bancreg_reg_n_0_[8][2] ;
  wire \bancreg_reg_n_0_[8][3] ;
  wire \bancreg_reg_n_0_[8][4] ;
  wire \bancreg_reg_n_0_[8][5] ;
  wire \bancreg_reg_n_0_[8][6] ;
  wire \bancreg_reg_n_0_[8][7] ;
  wire \bancreg_reg_n_0_[9][0] ;
  wire \bancreg_reg_n_0_[9][1] ;
  wire \bancreg_reg_n_0_[9][2] ;
  wire \bancreg_reg_n_0_[9][3] ;
  wire \bancreg_reg_n_0_[9][4] ;
  wire \bancreg_reg_n_0_[9][5] ;
  wire \bancreg_reg_n_0_[9][6] ;
  wire \bancreg_reg_n_0_[9][7] ;

  LUT4 #(
    .INIT(16'h0407)) 
    \Qa_OBUF[0]_inst_i_1 
       (.I0(\Qa_OBUF[0]_inst_i_2_n_0 ),
        .I1(\B_out_reg[3] ),
        .I2(\B_out_reg[2] ),
        .I3(\Qa_OBUF[0]_inst_i_3_n_0 ),
        .O(Qa_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[0]_inst_i_2 
       (.I0(\bancreg_reg_n_0_[11][0] ),
        .I1(\bancreg_reg_n_0_[10][0] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[9][0] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[8][0] ),
        .O(\Qa_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[0]_inst_i_3 
       (.I0(\bancreg_reg_n_0_[3][0] ),
        .I1(\bancreg_reg_n_0_[2][0] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[1][0] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[0][0] ),
        .O(\Qa_OBUF[0]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \Qa_OBUF[1]_inst_i_1 
       (.I0(\Qa_OBUF[1]_inst_i_2_n_0 ),
        .I1(\B_out_reg[3] ),
        .I2(\B_out_reg[2] ),
        .I3(\Qa_OBUF[1]_inst_i_3_n_0 ),
        .O(Qa_OBUF[1]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[1]_inst_i_2 
       (.I0(\bancreg_reg_n_0_[11][1] ),
        .I1(\bancreg_reg_n_0_[10][1] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[9][1] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[8][1] ),
        .O(\Qa_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[1]_inst_i_3 
       (.I0(\bancreg_reg_n_0_[3][1] ),
        .I1(\bancreg_reg_n_0_[2][1] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[1][1] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[0][1] ),
        .O(\Qa_OBUF[1]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \Qa_OBUF[2]_inst_i_1 
       (.I0(\Qa_OBUF[2]_inst_i_2_n_0 ),
        .I1(\B_out_reg[3] ),
        .I2(\B_out_reg[2] ),
        .I3(\Qa_OBUF[2]_inst_i_3_n_0 ),
        .O(Qa_OBUF[2]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[2]_inst_i_2 
       (.I0(\bancreg_reg_n_0_[11][2] ),
        .I1(\bancreg_reg_n_0_[10][2] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[9][2] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[8][2] ),
        .O(\Qa_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[2]_inst_i_3 
       (.I0(\bancreg_reg_n_0_[3][2] ),
        .I1(\bancreg_reg_n_0_[2][2] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[1][2] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[0][2] ),
        .O(\Qa_OBUF[2]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \Qa_OBUF[3]_inst_i_1 
       (.I0(\Qa_OBUF[3]_inst_i_2_n_0 ),
        .I1(\B_out_reg[3] ),
        .I2(\B_out_reg[2] ),
        .I3(\Qa_OBUF[3]_inst_i_3_n_0 ),
        .O(Qa_OBUF[3]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[3]_inst_i_2 
       (.I0(\bancreg_reg_n_0_[11][3] ),
        .I1(\bancreg_reg_n_0_[10][3] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[9][3] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[8][3] ),
        .O(\Qa_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[3]_inst_i_3 
       (.I0(\bancreg_reg_n_0_[3][3] ),
        .I1(\bancreg_reg_n_0_[2][3] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[1][3] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[0][3] ),
        .O(\Qa_OBUF[3]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \Qa_OBUF[4]_inst_i_1 
       (.I0(\Qa_OBUF[4]_inst_i_2_n_0 ),
        .I1(\B_out_reg[3] ),
        .I2(\B_out_reg[2] ),
        .I3(\Qa_OBUF[4]_inst_i_3_n_0 ),
        .O(Qa_OBUF[4]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[4]_inst_i_2 
       (.I0(\bancreg_reg_n_0_[11][4] ),
        .I1(\bancreg_reg_n_0_[10][4] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[9][4] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[8][4] ),
        .O(\Qa_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[4]_inst_i_3 
       (.I0(\bancreg_reg_n_0_[3][4] ),
        .I1(\bancreg_reg_n_0_[2][4] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[1][4] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[0][4] ),
        .O(\Qa_OBUF[4]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \Qa_OBUF[5]_inst_i_1 
       (.I0(\Qa_OBUF[5]_inst_i_2_n_0 ),
        .I1(\B_out_reg[3] ),
        .I2(\B_out_reg[2] ),
        .I3(\Qa_OBUF[5]_inst_i_3_n_0 ),
        .O(Qa_OBUF[5]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[5]_inst_i_2 
       (.I0(\bancreg_reg_n_0_[11][5] ),
        .I1(\bancreg_reg_n_0_[10][5] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[9][5] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[8][5] ),
        .O(\Qa_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[5]_inst_i_3 
       (.I0(\bancreg_reg_n_0_[3][5] ),
        .I1(\bancreg_reg_n_0_[2][5] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[1][5] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[0][5] ),
        .O(\Qa_OBUF[5]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \Qa_OBUF[6]_inst_i_1 
       (.I0(\Qa_OBUF[6]_inst_i_2_n_0 ),
        .I1(\B_out_reg[3] ),
        .I2(\B_out_reg[2] ),
        .I3(\Qa_OBUF[6]_inst_i_3_n_0 ),
        .O(Qa_OBUF[6]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[6]_inst_i_2 
       (.I0(\bancreg_reg_n_0_[11][6] ),
        .I1(\bancreg_reg_n_0_[10][6] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[9][6] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[8][6] ),
        .O(\Qa_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[6]_inst_i_3 
       (.I0(\bancreg_reg_n_0_[3][6] ),
        .I1(\bancreg_reg_n_0_[2][6] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[1][6] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[0][6] ),
        .O(\Qa_OBUF[6]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \Qa_OBUF[7]_inst_i_1 
       (.I0(\Qa_OBUF[7]_inst_i_2_n_0 ),
        .I1(\B_out_reg[3] ),
        .I2(\B_out_reg[2] ),
        .I3(\Qa_OBUF[7]_inst_i_3_n_0 ),
        .O(Qa_OBUF[7]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[7]_inst_i_2 
       (.I0(\bancreg_reg_n_0_[11][7] ),
        .I1(\bancreg_reg_n_0_[10][7] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[9][7] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[8][7] ),
        .O(\Qa_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Qa_OBUF[7]_inst_i_3 
       (.I0(\bancreg_reg_n_0_[3][7] ),
        .I1(\bancreg_reg_n_0_[2][7] ),
        .I2(\B_out_reg[1] ),
        .I3(\bancreg_reg_n_0_[1][7] ),
        .I4(\B_out_reg[0] ),
        .I5(\bancreg_reg_n_0_[0][7] ),
        .O(\Qa_OBUF[7]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Qb_OBUF[0]_inst_i_1 
       (.I0(\bancreg_reg_n_0_[1][0] ),
        .I1(C_out),
        .I2(\bancreg_reg_n_0_[0][0] ),
        .O(Qb_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Qb_OBUF[1]_inst_i_1 
       (.I0(\bancreg_reg_n_0_[1][1] ),
        .I1(C_out),
        .I2(\bancreg_reg_n_0_[0][1] ),
        .O(Qb_OBUF[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Qb_OBUF[2]_inst_i_1 
       (.I0(\bancreg_reg_n_0_[1][2] ),
        .I1(C_out),
        .I2(\bancreg_reg_n_0_[0][2] ),
        .O(Qb_OBUF[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Qb_OBUF[3]_inst_i_1 
       (.I0(\bancreg_reg_n_0_[1][3] ),
        .I1(C_out),
        .I2(\bancreg_reg_n_0_[0][3] ),
        .O(Qb_OBUF[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Qb_OBUF[4]_inst_i_1 
       (.I0(\bancreg_reg_n_0_[1][4] ),
        .I1(C_out),
        .I2(\bancreg_reg_n_0_[0][4] ),
        .O(Qb_OBUF[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Qb_OBUF[5]_inst_i_1 
       (.I0(\bancreg_reg_n_0_[1][5] ),
        .I1(C_out),
        .I2(\bancreg_reg_n_0_[0][5] ),
        .O(Qb_OBUF[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Qb_OBUF[6]_inst_i_1 
       (.I0(\bancreg_reg_n_0_[1][6] ),
        .I1(C_out),
        .I2(\bancreg_reg_n_0_[0][6] ),
        .O(Qb_OBUF[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Qb_OBUF[7]_inst_i_1 
       (.I0(\bancreg_reg_n_0_[1][7] ),
        .I1(C_out),
        .I2(\bancreg_reg_n_0_[0][7] ),
        .O(Qb_OBUF[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[0][0] 
       (.CLR(RST_IBUF),
        .D(Q[0]),
        .G(E),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[0][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[0][1] 
       (.CLR(RST_IBUF),
        .D(Q[1]),
        .G(E),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[0][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[0][2] 
       (.CLR(RST_IBUF),
        .D(Q[2]),
        .G(E),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[0][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[0][3] 
       (.CLR(RST_IBUF),
        .D(Q[3]),
        .G(E),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[0][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[0][4] 
       (.CLR(RST_IBUF),
        .D(Q[4]),
        .G(E),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[0][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[0][5] 
       (.CLR(RST_IBUF),
        .D(Q[5]),
        .G(E),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[0][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[0][6] 
       (.CLR(RST_IBUF),
        .D(Q[6]),
        .G(E),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[0][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[0][7] 
       (.CLR(RST_IBUF),
        .D(Q[7]),
        .G(E),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[0][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[10][0] 
       (.CLR(RST_IBUF),
        .D(Q[0]),
        .G(\OP_out_reg[1]_4 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[10][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[10][1] 
       (.CLR(RST_IBUF),
        .D(Q[1]),
        .G(\OP_out_reg[1]_4 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[10][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[10][2] 
       (.CLR(RST_IBUF),
        .D(Q[2]),
        .G(\OP_out_reg[1]_4 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[10][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[10][3] 
       (.CLR(RST_IBUF),
        .D(Q[3]),
        .G(\OP_out_reg[1]_4 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[10][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[10][4] 
       (.CLR(RST_IBUF),
        .D(Q[4]),
        .G(\OP_out_reg[1]_4 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[10][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[10][5] 
       (.CLR(RST_IBUF),
        .D(Q[5]),
        .G(\OP_out_reg[1]_4 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[10][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[10][6] 
       (.CLR(RST_IBUF),
        .D(Q[6]),
        .G(\OP_out_reg[1]_4 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[10][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[10][7] 
       (.CLR(RST_IBUF),
        .D(Q[7]),
        .G(\OP_out_reg[1]_4 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[10][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[11][0] 
       (.CLR(RST_IBUF),
        .D(Q[0]),
        .G(\OP_out_reg[1]_5 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[11][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[11][1] 
       (.CLR(RST_IBUF),
        .D(Q[1]),
        .G(\OP_out_reg[1]_5 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[11][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[11][2] 
       (.CLR(RST_IBUF),
        .D(Q[2]),
        .G(\OP_out_reg[1]_5 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[11][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[11][3] 
       (.CLR(RST_IBUF),
        .D(Q[3]),
        .G(\OP_out_reg[1]_5 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[11][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[11][4] 
       (.CLR(RST_IBUF),
        .D(Q[4]),
        .G(\OP_out_reg[1]_5 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[11][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[11][5] 
       (.CLR(RST_IBUF),
        .D(Q[5]),
        .G(\OP_out_reg[1]_5 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[11][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[11][6] 
       (.CLR(RST_IBUF),
        .D(Q[6]),
        .G(\OP_out_reg[1]_5 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[11][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[11][7] 
       (.CLR(RST_IBUF),
        .D(Q[7]),
        .G(\OP_out_reg[1]_5 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[11][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[1][0] 
       (.CLR(RST_IBUF),
        .D(Q[0]),
        .G(\OP_out_reg[1] ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[1][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[1][1] 
       (.CLR(RST_IBUF),
        .D(Q[1]),
        .G(\OP_out_reg[1] ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[1][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[1][2] 
       (.CLR(RST_IBUF),
        .D(Q[2]),
        .G(\OP_out_reg[1] ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[1][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[1][3] 
       (.CLR(RST_IBUF),
        .D(Q[3]),
        .G(\OP_out_reg[1] ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[1][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[1][4] 
       (.CLR(RST_IBUF),
        .D(Q[4]),
        .G(\OP_out_reg[1] ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[1][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[1][5] 
       (.CLR(RST_IBUF),
        .D(Q[5]),
        .G(\OP_out_reg[1] ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[1][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[1][6] 
       (.CLR(RST_IBUF),
        .D(Q[6]),
        .G(\OP_out_reg[1] ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[1][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[1][7] 
       (.CLR(RST_IBUF),
        .D(Q[7]),
        .G(\OP_out_reg[1] ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[1][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[2][0] 
       (.CLR(RST_IBUF),
        .D(Q[0]),
        .G(\OP_out_reg[1]_0 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[2][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[2][1] 
       (.CLR(RST_IBUF),
        .D(Q[1]),
        .G(\OP_out_reg[1]_0 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[2][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[2][2] 
       (.CLR(RST_IBUF),
        .D(Q[2]),
        .G(\OP_out_reg[1]_0 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[2][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[2][3] 
       (.CLR(RST_IBUF),
        .D(Q[3]),
        .G(\OP_out_reg[1]_0 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[2][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[2][4] 
       (.CLR(RST_IBUF),
        .D(Q[4]),
        .G(\OP_out_reg[1]_0 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[2][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[2][5] 
       (.CLR(RST_IBUF),
        .D(Q[5]),
        .G(\OP_out_reg[1]_0 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[2][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[2][6] 
       (.CLR(RST_IBUF),
        .D(Q[6]),
        .G(\OP_out_reg[1]_0 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[2][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[2][7] 
       (.CLR(RST_IBUF),
        .D(Q[7]),
        .G(\OP_out_reg[1]_0 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[2][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[3][0] 
       (.CLR(RST_IBUF),
        .D(Q[0]),
        .G(\OP_out_reg[1]_1 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[3][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[3][1] 
       (.CLR(RST_IBUF),
        .D(Q[1]),
        .G(\OP_out_reg[1]_1 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[3][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[3][2] 
       (.CLR(RST_IBUF),
        .D(Q[2]),
        .G(\OP_out_reg[1]_1 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[3][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[3][3] 
       (.CLR(RST_IBUF),
        .D(Q[3]),
        .G(\OP_out_reg[1]_1 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[3][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[3][4] 
       (.CLR(RST_IBUF),
        .D(Q[4]),
        .G(\OP_out_reg[1]_1 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[3][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[3][5] 
       (.CLR(RST_IBUF),
        .D(Q[5]),
        .G(\OP_out_reg[1]_1 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[3][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[3][6] 
       (.CLR(RST_IBUF),
        .D(Q[6]),
        .G(\OP_out_reg[1]_1 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[3][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[3][7] 
       (.CLR(RST_IBUF),
        .D(Q[7]),
        .G(\OP_out_reg[1]_1 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[3][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[8][0] 
       (.CLR(RST_IBUF),
        .D(Q[0]),
        .G(\OP_out_reg[1]_2 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[8][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[8][1] 
       (.CLR(RST_IBUF),
        .D(Q[1]),
        .G(\OP_out_reg[1]_2 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[8][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[8][2] 
       (.CLR(RST_IBUF),
        .D(Q[2]),
        .G(\OP_out_reg[1]_2 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[8][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[8][3] 
       (.CLR(RST_IBUF),
        .D(Q[3]),
        .G(\OP_out_reg[1]_2 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[8][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[8][4] 
       (.CLR(RST_IBUF),
        .D(Q[4]),
        .G(\OP_out_reg[1]_2 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[8][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[8][5] 
       (.CLR(RST_IBUF),
        .D(Q[5]),
        .G(\OP_out_reg[1]_2 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[8][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[8][6] 
       (.CLR(RST_IBUF),
        .D(Q[6]),
        .G(\OP_out_reg[1]_2 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[8][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[8][7] 
       (.CLR(RST_IBUF),
        .D(Q[7]),
        .G(\OP_out_reg[1]_2 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[8][7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[9][0] 
       (.CLR(RST_IBUF),
        .D(Q[0]),
        .G(\OP_out_reg[1]_3 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[9][0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[9][1] 
       (.CLR(RST_IBUF),
        .D(Q[1]),
        .G(\OP_out_reg[1]_3 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[9][1] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[9][2] 
       (.CLR(RST_IBUF),
        .D(Q[2]),
        .G(\OP_out_reg[1]_3 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[9][2] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[9][3] 
       (.CLR(RST_IBUF),
        .D(Q[3]),
        .G(\OP_out_reg[1]_3 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[9][3] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[9][4] 
       (.CLR(RST_IBUF),
        .D(Q[4]),
        .G(\OP_out_reg[1]_3 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[9][4] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[9][5] 
       (.CLR(RST_IBUF),
        .D(Q[5]),
        .G(\OP_out_reg[1]_3 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[9][5] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[9][6] 
       (.CLR(RST_IBUF),
        .D(Q[6]),
        .G(\OP_out_reg[1]_3 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[9][6] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \bancreg_reg[9][7] 
       (.CLR(RST_IBUF),
        .D(Q[7]),
        .G(\OP_out_reg[1]_3 ),
        .GE(1'b1),
        .Q(\bancreg_reg_n_0_[9][7] ));
endmodule

module MI
   (\alea_cpt_di_reg[2] ,
    Q,
    D,
    \alea_cpt_di_reg[2]_0 ,
    \alea_cpt_diex_reg[2] ,
    gestion_alea_diex_reg,
    fin_alea_diex_reg,
    A_di,
    \A_out_reg[0] ,
    \IP_reg[7] ,
    CLK_IBUF_BUFG);
  output \alea_cpt_di_reg[2] ;
  output [6:0]Q;
  output [2:0]D;
  output \alea_cpt_di_reg[2]_0 ;
  output \alea_cpt_diex_reg[2] ;
  input gestion_alea_diex_reg;
  input fin_alea_diex_reg;
  input [1:0]A_di;
  input [0:0]\A_out_reg[0] ;
  input [7:0]\IP_reg[7] ;
  input CLK_IBUF_BUFG;

  wire [1:0]A_di;
  wire [0:0]\A_out_reg[0] ;
  wire CLK_IBUF_BUFG;
  wire [2:0]D;
  wire [7:0]\IP_reg[7] ;
  wire [2:1]OP_li;
  wire [6:0]Q;
  wire \Sort[25]_i_2_n_0 ;
  wire \Sort[8]_i_1_n_0 ;
  wire \alea_cpt_di_reg[2] ;
  wire \alea_cpt_di_reg[2]_0 ;
  wire \alea_cpt_diex_reg[2] ;
  wire fin_alea_diex_reg;
  wire gestion_alea_diex_reg;
  wire [25:0]\mi[0]_0 ;

  LUT3 #(
    .INIT(8'hBE)) 
    \IP[7]_i_12 
       (.I0(Q[3]),
        .I1(\A_out_reg[0] ),
        .I2(Q[1]),
        .O(\alea_cpt_diex_reg[2] ));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \IP[7]_i_15 
       (.I0(A_di[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(A_di[0]),
        .I4(Q[1]),
        .O(\alea_cpt_di_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFEFCFEFD)) 
    \IP[7]_i_9 
       (.I0(OP_li[2]),
        .I1(gestion_alea_diex_reg),
        .I2(fin_alea_diex_reg),
        .I3(OP_li[1]),
        .I4(Q[1]),
        .O(\alea_cpt_di_reg[2] ));
  LUT3 #(
    .INIT(8'h02)) 
    \OP_out[0]_i_1 
       (.I0(Q[1]),
        .I1(gestion_alea_diex_reg),
        .I2(fin_alea_diex_reg),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \OP_out[1]_i_1 
       (.I0(OP_li[1]),
        .I1(gestion_alea_diex_reg),
        .I2(fin_alea_diex_reg),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h02)) 
    \OP_out[2]_i_1 
       (.I0(OP_li[2]),
        .I1(gestion_alea_diex_reg),
        .I2(fin_alea_diex_reg),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    \Sort[0]_i_1 
       (.I0(\IP_reg[7] [0]),
        .I1(\IP_reg[7] [2]),
        .I2(\IP_reg[7] [1]),
        .I3(\Sort[25]_i_2_n_0 ),
        .O(\mi[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \Sort[10]_i_1 
       (.I0(\IP_reg[7] [0]),
        .I1(\Sort[25]_i_2_n_0 ),
        .I2(\IP_reg[7] [1]),
        .I3(\IP_reg[7] [2]),
        .O(\mi[0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \Sort[11]_i_1 
       (.I0(\Sort[25]_i_2_n_0 ),
        .I1(\IP_reg[7] [0]),
        .I2(\IP_reg[7] [1]),
        .I3(\IP_reg[7] [2]),
        .O(\mi[0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0130)) 
    \Sort[17]_i_1 
       (.I0(\IP_reg[7] [0]),
        .I1(\Sort[25]_i_2_n_0 ),
        .I2(\IP_reg[7] [1]),
        .I3(\IP_reg[7] [2]),
        .O(\mi[0]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1030)) 
    \Sort[18]_i_1 
       (.I0(\IP_reg[7] [0]),
        .I1(\Sort[25]_i_2_n_0 ),
        .I2(\IP_reg[7] [1]),
        .I3(\IP_reg[7] [2]),
        .O(\mi[0]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0210)) 
    \Sort[24]_i_1 
       (.I0(\IP_reg[7] [0]),
        .I1(\Sort[25]_i_2_n_0 ),
        .I2(\IP_reg[7] [2]),
        .I3(\IP_reg[7] [1]),
        .O(\mi[0]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \Sort[25]_i_1 
       (.I0(\Sort[25]_i_2_n_0 ),
        .I1(\IP_reg[7] [0]),
        .I2(\IP_reg[7] [2]),
        .I3(\IP_reg[7] [1]),
        .O(\mi[0]_0 [25]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Sort[25]_i_2 
       (.I0(\IP_reg[7] [5]),
        .I1(\IP_reg[7] [4]),
        .I2(\IP_reg[7] [3]),
        .I3(\IP_reg[7] [6]),
        .I4(\IP_reg[7] [7]),
        .O(\Sort[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \Sort[8]_i_1 
       (.I0(\Sort[25]_i_2_n_0 ),
        .I1(\IP_reg[7] [1]),
        .I2(\IP_reg[7] [0]),
        .I3(\IP_reg[7] [2]),
        .O(\Sort[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \Sort[9]_i_1 
       (.I0(\IP_reg[7] [0]),
        .I1(\IP_reg[7] [2]),
        .I2(\Sort[25]_i_2_n_0 ),
        .O(\mi[0]_0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \Sort_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\mi[0]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Sort_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\mi[0]_0 [10]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Sort_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\mi[0]_0 [11]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Sort_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\mi[0]_0 [17]),
        .Q(OP_li[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Sort_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\mi[0]_0 [18]),
        .Q(OP_li[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Sort_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\mi[0]_0 [24]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Sort_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\mi[0]_0 [25]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Sort_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Sort[8]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Sort_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\mi[0]_0 [9]),
        .Q(Q[2]),
        .R(1'b0));
endmodule

module PipeLine
   (\alea_cpt_diex_reg[2] ,
    \alea_cpt_diex_reg[2]_0 ,
    \alea_cpt_diex_reg[1] ,
    \alea_cpt_diex_reg[0] ,
    fin_alea_diex_reg,
    D,
    OP_out,
    \IP_reg[1] ,
    E,
    gestion_alea_diex_reg,
    \B_out_reg[7]_0 ,
    \B_out_reg[3]_0 ,
    \B_out_reg[4]_0 ,
    \B_out_reg[5]_0 ,
    \B_out_reg[6]_0 ,
    \B_out_reg[7]_1 ,
    \A_out_reg[3]_0 ,
    A_di_alea1,
    S,
    \B_out_reg[7]_2 ,
    DI,
    \B_out_reg[3]_1 ,
    \B_out_reg[3]_2 ,
    \B_out_reg[3]_3 ,
    \B_out_reg[3]_4 ,
    \B_out_reg[7]_3 ,
    \B_out_reg[7]_4 ,
    \B_out_reg[7]_5 ,
    \B_out_reg[6]_1 ,
    \B_out_reg[7]_6 ,
    \B_out_reg[3]_5 ,
    \B_out_reg[3]_6 ,
    \alea_cpt_diex_reg[1]_0 ,
    \alea_cpt_diex_reg[0]_0 ,
    \alea_cpt_diex_reg[2]_1 ,
    gestion_alea_di_reg,
    RST_IBUF,
    fin_alea_diex_reg_0,
    \alea_cpt_diex_reg[2]_2 ,
    plusOp,
    minusOp,
    O,
    \C_out_reg[3]_0 ,
    multOp,
    Q,
    \alea_cpt_di_reg[2] ,
    gestion_alea_diex_reg_0,
    \Sort_reg[18] ,
    \Sort_reg[10] ,
    \OP_out_reg[2]_0 ,
    \Sort_reg[11] ,
    gestion_alea_di_reg_0,
    Qb_OBUF,
    CLK_IBUF_BUFG,
    \OP_out_reg[2]_1 ,
    gestion_alea_di_reg_1,
    Qa_OBUF,
    \B_out_reg[0]_0 ,
    A_di,
    \OP_out_reg[2]_2 );
  output \alea_cpt_diex_reg[2] ;
  output \alea_cpt_diex_reg[2]_0 ;
  output \alea_cpt_diex_reg[1] ;
  output \alea_cpt_diex_reg[0] ;
  output fin_alea_diex_reg;
  output [7:0]D;
  output [2:0]OP_out;
  output [0:0]\IP_reg[1] ;
  output [0:0]E;
  output gestion_alea_diex_reg;
  output [7:0]\B_out_reg[7]_0 ;
  output [3:0]\B_out_reg[3]_0 ;
  output \B_out_reg[4]_0 ;
  output \B_out_reg[5]_0 ;
  output \B_out_reg[6]_0 ;
  output [0:0]\B_out_reg[7]_1 ;
  output [2:0]\A_out_reg[3]_0 ;
  output A_di_alea1;
  output [3:0]S;
  output [3:0]\B_out_reg[7]_2 ;
  output [2:0]DI;
  output [2:0]\B_out_reg[3]_1 ;
  output [3:0]\B_out_reg[3]_2 ;
  output [2:0]\B_out_reg[3]_3 ;
  output [3:0]\B_out_reg[3]_4 ;
  output \B_out_reg[7]_3 ;
  output \B_out_reg[7]_4 ;
  output \B_out_reg[7]_5 ;
  output [3:0]\B_out_reg[6]_1 ;
  output [0:0]\B_out_reg[7]_6 ;
  output [3:0]\B_out_reg[3]_5 ;
  output [3:0]\B_out_reg[3]_6 ;
  input \alea_cpt_diex_reg[1]_0 ;
  input \alea_cpt_diex_reg[0]_0 ;
  input \alea_cpt_diex_reg[2]_1 ;
  input gestion_alea_di_reg;
  input RST_IBUF;
  input fin_alea_diex_reg_0;
  input \alea_cpt_diex_reg[2]_2 ;
  input [7:0]plusOp;
  input [7:0]minusOp;
  input [3:0]O;
  input [0:0]\C_out_reg[3]_0 ;
  input [3:0]multOp;
  input [1:0]Q;
  input \alea_cpt_di_reg[2] ;
  input gestion_alea_diex_reg_0;
  input \Sort_reg[18] ;
  input \Sort_reg[10] ;
  input [7:0]\OP_out_reg[2]_0 ;
  input [2:0]\Sort_reg[11] ;
  input gestion_alea_di_reg_0;
  input [7:0]Qb_OBUF;
  input CLK_IBUF_BUFG;
  input [3:0]\OP_out_reg[2]_1 ;
  input gestion_alea_di_reg_1;
  input [3:0]Qa_OBUF;
  input \B_out_reg[0]_0 ;
  input [1:0]A_di;
  input [2:0]\OP_out_reg[2]_2 ;

  wire [1:0]A_di;
  wire A_di_alea1;
  wire [2:0]\A_out_reg[3]_0 ;
  wire \B_out_reg[0]_0 ;
  wire [3:0]\B_out_reg[3]_0 ;
  wire [2:0]\B_out_reg[3]_1 ;
  wire [3:0]\B_out_reg[3]_2 ;
  wire [2:0]\B_out_reg[3]_3 ;
  wire [3:0]\B_out_reg[3]_4 ;
  wire [3:0]\B_out_reg[3]_5 ;
  wire [3:0]\B_out_reg[3]_6 ;
  wire \B_out_reg[4]_0 ;
  wire \B_out_reg[5]_0 ;
  wire \B_out_reg[6]_0 ;
  wire [3:0]\B_out_reg[6]_1 ;
  wire [7:0]\B_out_reg[7]_0 ;
  wire [0:0]\B_out_reg[7]_1 ;
  wire [3:0]\B_out_reg[7]_2 ;
  wire \B_out_reg[7]_3 ;
  wire \B_out_reg[7]_4 ;
  wire \B_out_reg[7]_5 ;
  wire [0:0]\B_out_reg[7]_6 ;
  wire \B_out_reg_n_0_[7] ;
  wire CLK_IBUF_BUFG;
  wire [0:0]\C_out_reg[3]_0 ;
  wire \C_out_reg_n_0_[0] ;
  wire \C_out_reg_n_0_[1] ;
  wire \C_out_reg_n_0_[2] ;
  wire \C_out_reg_n_0_[3] ;
  wire \C_out_reg_n_0_[4] ;
  wire \C_out_reg_n_0_[5] ;
  wire \C_out_reg_n_0_[7] ;
  wire [7:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire \IP[7]_i_10_n_0 ;
  wire \IP[7]_i_11_n_0 ;
  wire \IP[7]_i_13_n_0 ;
  wire [0:0]\IP_reg[1] ;
  wire [3:0]O;
  wire [2:0]OP_out;
  wire [7:0]\OP_out_reg[2]_0 ;
  wire [3:0]\OP_out_reg[2]_1 ;
  wire [2:0]\OP_out_reg[2]_2 ;
  wire [1:0]Q;
  wire [3:0]Qa_OBUF;
  wire [7:0]Qb_OBUF;
  wire RST_IBUF;
  wire [3:0]S;
  wire \Sort_reg[10] ;
  wire [2:0]\Sort_reg[11] ;
  wire \Sort_reg[18] ;
  wire \Temp_res_reg[3]_i_2_n_0 ;
  wire \Temp_res_reg[3]_i_3_n_0 ;
  wire \alea_cpt_di_reg[2] ;
  wire \alea_cpt_diex_reg[0] ;
  wire \alea_cpt_diex_reg[0]_0 ;
  wire \alea_cpt_diex_reg[1] ;
  wire \alea_cpt_diex_reg[1]_0 ;
  wire \alea_cpt_diex_reg[2] ;
  wire \alea_cpt_diex_reg[2]_0 ;
  wire \alea_cpt_diex_reg[2]_1 ;
  wire \alea_cpt_diex_reg[2]_2 ;
  wire fin_alea_diex_reg;
  wire fin_alea_diex_reg_0;
  wire gestion_alea_di_reg;
  wire gestion_alea_di_reg_0;
  wire gestion_alea_di_reg_1;
  wire gestion_alea_diex_reg;
  wire gestion_alea_diex_reg_0;
  wire [7:0]minusOp;
  wire [3:0]multOp;
  wire multOp__0_carry__0_i_10_n_0;
  wire multOp__0_carry__0_i_11_n_0;
  wire multOp__0_carry__0_i_12_n_0;
  wire multOp__0_carry__0_i_8_n_0;
  wire multOp__0_carry__0_i_9_n_0;
  wire multOp__0_carry_i_8_n_0;
  wire multOp__22_carry__0_i_2_n_0;
  wire multOp__22_carry__0_i_3_n_0;
  wire multOp__22_carry_i_8_n_0;
  wire [7:0]plusOp;

  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(A_di[0]),
        .Q(\A_out_reg[3]_0 [0]),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(A_di[1]),
        .Q(\A_out_reg[3]_0 [1]),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\B_out_reg[0]_0 ),
        .Q(\A_out_reg[3]_0 [2]),
        .R(A_di_alea1));
  LUT5 #(
    .INIT(32'hAFAEA0A2)) 
    \B_out[0]_i_1 
       (.I0(\B_out_reg[3]_0 [0]),
        .I1(OP_out[1]),
        .I2(OP_out[2]),
        .I3(OP_out[0]),
        .I4(\OP_out_reg[2]_0 [0]),
        .O(\B_out_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'hAFAEA0A2)) 
    \B_out[1]_i_1 
       (.I0(\B_out_reg[3]_0 [1]),
        .I1(OP_out[1]),
        .I2(OP_out[2]),
        .I3(OP_out[0]),
        .I4(\OP_out_reg[2]_0 [1]),
        .O(\B_out_reg[7]_0 [1]));
  LUT5 #(
    .INIT(32'hAFAEA0A2)) 
    \B_out[2]_i_1 
       (.I0(\B_out_reg[3]_0 [2]),
        .I1(OP_out[1]),
        .I2(OP_out[2]),
        .I3(OP_out[0]),
        .I4(\OP_out_reg[2]_0 [2]),
        .O(\B_out_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'hAFAEA0A2)) 
    \B_out[3]_i_1 
       (.I0(\B_out_reg[3]_0 [3]),
        .I1(OP_out[1]),
        .I2(OP_out[2]),
        .I3(OP_out[0]),
        .I4(\OP_out_reg[2]_0 [3]),
        .O(\B_out_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'hAFAEA0A2)) 
    \B_out[4]_i_1 
       (.I0(\B_out_reg[4]_0 ),
        .I1(OP_out[1]),
        .I2(OP_out[2]),
        .I3(OP_out[0]),
        .I4(\OP_out_reg[2]_0 [4]),
        .O(\B_out_reg[7]_0 [4]));
  LUT5 #(
    .INIT(32'hAFAEA0A2)) 
    \B_out[5]_i_1 
       (.I0(\B_out_reg[5]_0 ),
        .I1(OP_out[1]),
        .I2(OP_out[2]),
        .I3(OP_out[0]),
        .I4(\OP_out_reg[2]_0 [5]),
        .O(\B_out_reg[7]_0 [5]));
  LUT5 #(
    .INIT(32'hAFAEA0A2)) 
    \B_out[6]_i_1 
       (.I0(\B_out_reg[6]_0 ),
        .I1(OP_out[1]),
        .I2(OP_out[2]),
        .I3(OP_out[0]),
        .I4(\OP_out_reg[2]_0 [6]),
        .O(\B_out_reg[7]_0 [6]));
  LUT5 #(
    .INIT(32'hAFAEA0A2)) 
    \B_out[7]_i_1 
       (.I0(\B_out_reg_n_0_[7] ),
        .I1(OP_out[1]),
        .I2(OP_out[2]),
        .I3(OP_out[0]),
        .I4(\OP_out_reg[2]_0 [7]),
        .O(\B_out_reg[7]_0 [7]));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [0]),
        .Q(\B_out_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [1]),
        .Q(\B_out_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [2]),
        .Q(\B_out_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [3]),
        .Q(\B_out_reg[3]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qa_OBUF[0]),
        .Q(\B_out_reg[4]_0 ),
        .R(gestion_alea_di_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qa_OBUF[1]),
        .Q(\B_out_reg[5]_0 ),
        .R(gestion_alea_di_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qa_OBUF[2]),
        .Q(\B_out_reg[6]_0 ),
        .R(gestion_alea_di_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qa_OBUF[3]),
        .Q(\B_out_reg_n_0_[7] ),
        .R(gestion_alea_di_reg_1));
  LUT2 #(
    .INIT(4'hE)) 
    \C_out[7]_i_1 
       (.I0(gestion_alea_diex_reg_0),
        .I1(gestion_alea_di_reg_0),
        .O(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \C_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qb_OBUF[0]),
        .Q(\C_out_reg_n_0_[0] ),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \C_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qb_OBUF[1]),
        .Q(\C_out_reg_n_0_[1] ),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \C_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qb_OBUF[2]),
        .Q(\C_out_reg_n_0_[2] ),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \C_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qb_OBUF[3]),
        .Q(\C_out_reg_n_0_[3] ),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \C_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qb_OBUF[4]),
        .Q(\C_out_reg_n_0_[4] ),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \C_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qb_OBUF[5]),
        .Q(\C_out_reg_n_0_[5] ),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \C_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qb_OBUF[6]),
        .Q(\B_out_reg[7]_4 ),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \C_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Qb_OBUF[7]),
        .Q(\C_out_reg_n_0_[7] ),
        .R(A_di_alea1));
  LUT4 #(
    .INIT(16'h7887)) 
    \IP[1]_i_1 
       (.I0(\alea_cpt_diex_reg[2]_0 ),
        .I1(gestion_alea_di_reg),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\IP_reg[1] ));
  LUT5 #(
    .INIT(32'h0000FC55)) 
    \IP[7]_i_1 
       (.I0(\alea_cpt_di_reg[2] ),
        .I1(\alea_cpt_diex_reg[2]_2 ),
        .I2(\alea_cpt_diex_reg[2]_0 ),
        .I3(gestion_alea_di_reg),
        .I4(RST_IBUF),
        .O(E));
  LUT3 #(
    .INIT(8'hCD)) 
    \IP[7]_i_10 
       (.I0(OP_out[1]),
        .I1(OP_out[2]),
        .I2(OP_out[0]),
        .O(\IP[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \IP[7]_i_11 
       (.I0(\A_out_reg[3]_0 [1]),
        .I1(\A_out_reg[3]_0 [2]),
        .I2(\A_out_reg[3]_0 [0]),
        .I3(\Sort_reg[11] [0]),
        .O(\IP[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \IP[7]_i_13 
       (.I0(\A_out_reg[3]_0 [2]),
        .I1(\Sort_reg[11] [2]),
        .I2(\A_out_reg[3]_0 [1]),
        .I3(\Sort_reg[11] [1]),
        .O(\IP[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5455545554555454)) 
    \IP[7]_i_5 
       (.I0(gestion_alea_diex_reg_0),
        .I1(\Sort_reg[18] ),
        .I2(\IP[7]_i_10_n_0 ),
        .I3(\IP[7]_i_11_n_0 ),
        .I4(\Sort_reg[10] ),
        .I5(\IP[7]_i_13_n_0 ),
        .O(\alea_cpt_diex_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_2 [0]),
        .Q(OP_out[0]),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_2 [1]),
        .Q(OP_out[1]),
        .R(A_di_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_2 [2]),
        .Q(OP_out[2]),
        .R(A_di_alea1));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \Temp_res_reg[0]_i_1 
       (.I0(plusOp[0]),
        .I1(OP_out[2]),
        .I2(OP_out[1]),
        .I3(minusOp[0]),
        .I4(OP_out[0]),
        .I5(O[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \Temp_res_reg[1]_i_1 
       (.I0(plusOp[1]),
        .I1(OP_out[2]),
        .I2(OP_out[1]),
        .I3(minusOp[1]),
        .I4(OP_out[0]),
        .I5(O[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \Temp_res_reg[2]_i_1 
       (.I0(plusOp[2]),
        .I1(OP_out[2]),
        .I2(OP_out[1]),
        .I3(minusOp[2]),
        .I4(OP_out[0]),
        .I5(O[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \Temp_res_reg[3]_i_1 
       (.I0(plusOp[3]),
        .I1(\Temp_res_reg[3]_i_2_n_0 ),
        .I2(minusOp[3]),
        .I3(\Temp_res_reg[3]_i_3_n_0 ),
        .I4(O[3]),
        .I5(\C_out_reg[3]_0 ),
        .O(D[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \Temp_res_reg[3]_i_2 
       (.I0(OP_out[2]),
        .I1(OP_out[1]),
        .O(\Temp_res_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Temp_res_reg[3]_i_3 
       (.I0(OP_out[0]),
        .I1(OP_out[2]),
        .O(\Temp_res_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \Temp_res_reg[4]_i_1 
       (.I0(plusOp[4]),
        .I1(OP_out[2]),
        .I2(OP_out[1]),
        .I3(minusOp[4]),
        .I4(OP_out[0]),
        .I5(multOp[0]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \Temp_res_reg[5]_i_1 
       (.I0(plusOp[5]),
        .I1(OP_out[2]),
        .I2(OP_out[1]),
        .I3(minusOp[5]),
        .I4(OP_out[0]),
        .I5(multOp[1]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \Temp_res_reg[6]_i_1 
       (.I0(plusOp[6]),
        .I1(OP_out[2]),
        .I2(OP_out[1]),
        .I3(minusOp[6]),
        .I4(OP_out[0]),
        .I5(multOp[2]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \Temp_res_reg[7]_i_1 
       (.I0(plusOp[7]),
        .I1(OP_out[2]),
        .I2(OP_out[1]),
        .I3(minusOp[7]),
        .I4(OP_out[0]),
        .I5(multOp[3]),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h32)) 
    \Temp_res_reg[7]_i_2 
       (.I0(OP_out[0]),
        .I1(OP_out[2]),
        .I2(OP_out[1]),
        .O(\B_out_reg[7]_1 ));
  LUT4 #(
    .INIT(16'hCC9C)) 
    \alea_cpt_diex[0]_i_1 
       (.I0(\alea_cpt_diex_reg[2]_0 ),
        .I1(\alea_cpt_diex_reg[0]_0 ),
        .I2(gestion_alea_di_reg),
        .I3(RST_IBUF),
        .O(\alea_cpt_diex_reg[0] ));
  LUT6 #(
    .INIT(64'hCCCCCCCC9C8CCCCC)) 
    \alea_cpt_diex[1]_i_1 
       (.I0(\alea_cpt_diex_reg[2]_0 ),
        .I1(\alea_cpt_diex_reg[1]_0 ),
        .I2(\alea_cpt_diex_reg[0]_0 ),
        .I3(\alea_cpt_diex_reg[2]_1 ),
        .I4(gestion_alea_di_reg),
        .I5(RST_IBUF),
        .O(\alea_cpt_diex_reg[1] ));
  LUT6 #(
    .INIT(64'hFF00FF00BF40FF00)) 
    \alea_cpt_diex[2]_i_1 
       (.I0(\alea_cpt_diex_reg[2]_0 ),
        .I1(\alea_cpt_diex_reg[1]_0 ),
        .I2(\alea_cpt_diex_reg[0]_0 ),
        .I3(\alea_cpt_diex_reg[2]_1 ),
        .I4(gestion_alea_di_reg),
        .I5(RST_IBUF),
        .O(\alea_cpt_diex_reg[2] ));
  LUT5 #(
    .INIT(32'hCCCC5000)) 
    fin_alea_diex_i_1
       (.I0(\alea_cpt_diex_reg[2]_0 ),
        .I1(fin_alea_diex_reg_0),
        .I2(\alea_cpt_diex_reg[2]_2 ),
        .I3(gestion_alea_di_reg),
        .I4(RST_IBUF),
        .O(fin_alea_diex_reg));
  LUT5 #(
    .INIT(32'hAAAA8BAA)) 
    gestion_alea_diex_i_1
       (.I0(gestion_alea_diex_reg_0),
        .I1(\alea_cpt_diex_reg[2]_0 ),
        .I2(\alea_cpt_diex_reg[2]_2 ),
        .I3(gestion_alea_di_reg),
        .I4(RST_IBUF),
        .O(gestion_alea_diex_reg));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_1
       (.I0(\C_out_reg_n_0_[7] ),
        .I1(\B_out_reg_n_0_[7] ),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_2
       (.I0(\B_out_reg[6]_0 ),
        .I1(\B_out_reg[7]_4 ),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_3
       (.I0(\B_out_reg[5]_0 ),
        .I1(\C_out_reg_n_0_[5] ),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_4
       (.I0(\B_out_reg[4]_0 ),
        .I1(\C_out_reg_n_0_[4] ),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1
       (.I0(\B_out_reg[3]_0 [3]),
        .I1(\C_out_reg_n_0_[3] ),
        .O(\B_out_reg[3]_6 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2
       (.I0(\B_out_reg[3]_0 [2]),
        .I1(\C_out_reg_n_0_[2] ),
        .O(\B_out_reg[3]_6 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3
       (.I0(\B_out_reg[3]_0 [1]),
        .I1(\C_out_reg_n_0_[1] ),
        .O(\B_out_reg[3]_6 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4
       (.I0(\B_out_reg[3]_0 [0]),
        .I1(\C_out_reg_n_0_[0] ),
        .O(\B_out_reg[3]_6 [0]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    multOp__0_carry__0_i_1
       (.I0(\C_out_reg_n_0_[2] ),
        .I1(\B_out_reg[3]_0 [3]),
        .I2(\C_out_reg_n_0_[1] ),
        .I3(\B_out_reg[4]_0 ),
        .I4(\C_out_reg_n_0_[0] ),
        .I5(\B_out_reg[5]_0 ),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry__0_i_10
       (.I0(\B_out_reg[4]_0 ),
        .I1(\C_out_reg_n_0_[2] ),
        .O(multOp__0_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry__0_i_11
       (.I0(\B_out_reg[4]_0 ),
        .I1(\C_out_reg_n_0_[1] ),
        .O(multOp__0_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry__0_i_12
       (.I0(\B_out_reg[3]_0 [3]),
        .I1(\C_out_reg_n_0_[1] ),
        .O(multOp__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    multOp__0_carry__0_i_2
       (.I0(\C_out_reg_n_0_[2] ),
        .I1(\B_out_reg[3]_0 [2]),
        .I2(\C_out_reg_n_0_[1] ),
        .I3(\B_out_reg[3]_0 [3]),
        .I4(\C_out_reg_n_0_[0] ),
        .I5(\B_out_reg[4]_0 ),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    multOp__0_carry__0_i_3
       (.I0(\C_out_reg_n_0_[2] ),
        .I1(\B_out_reg[3]_0 [1]),
        .I2(\C_out_reg_n_0_[1] ),
        .I3(\B_out_reg[3]_0 [2]),
        .I4(\C_out_reg_n_0_[0] ),
        .I5(\B_out_reg[3]_0 [3]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hEA808080157F7F7F)) 
    multOp__0_carry__0_i_4
       (.I0(multOp__0_carry__0_i_8_n_0),
        .I1(\B_out_reg[5]_0 ),
        .I2(\C_out_reg_n_0_[1] ),
        .I3(\B_out_reg[4]_0 ),
        .I4(\C_out_reg_n_0_[2] ),
        .I5(multOp__0_carry__0_i_9_n_0),
        .O(\B_out_reg[6]_1 [3]));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    multOp__0_carry__0_i_5
       (.I0(DI[2]),
        .I1(multOp__0_carry__0_i_10_n_0),
        .I2(\C_out_reg_n_0_[1] ),
        .I3(\B_out_reg[5]_0 ),
        .I4(\C_out_reg_n_0_[0] ),
        .I5(\B_out_reg[6]_0 ),
        .O(\B_out_reg[6]_1 [2]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    multOp__0_carry__0_i_6
       (.I0(DI[1]),
        .I1(\C_out_reg_n_0_[2] ),
        .I2(\B_out_reg[3]_0 [3]),
        .I3(multOp__0_carry__0_i_11_n_0),
        .I4(\C_out_reg_n_0_[0] ),
        .I5(\B_out_reg[5]_0 ),
        .O(\B_out_reg[6]_1 [1]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    multOp__0_carry__0_i_7
       (.I0(DI[0]),
        .I1(\C_out_reg_n_0_[2] ),
        .I2(\B_out_reg[3]_0 [2]),
        .I3(multOp__0_carry__0_i_12_n_0),
        .I4(\C_out_reg_n_0_[0] ),
        .I5(\B_out_reg[4]_0 ),
        .O(\B_out_reg[6]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry__0_i_8
       (.I0(\C_out_reg_n_0_[0] ),
        .I1(\B_out_reg[6]_0 ),
        .O(multOp__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    multOp__0_carry__0_i_9
       (.I0(\C_out_reg_n_0_[0] ),
        .I1(\B_out_reg_n_0_[7] ),
        .I2(\B_out_reg[6]_0 ),
        .I3(\C_out_reg_n_0_[1] ),
        .I4(\B_out_reg[5]_0 ),
        .I5(\C_out_reg_n_0_[2] ),
        .O(multOp__0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_1
       (.I0(\B_out_reg[3]_0 [3]),
        .I1(\C_out_reg_n_0_[0] ),
        .I2(\B_out_reg[3]_0 [2]),
        .I3(\C_out_reg_n_0_[1] ),
        .I4(\B_out_reg[3]_0 [1]),
        .I5(\C_out_reg_n_0_[2] ),
        .O(\B_out_reg[3]_1 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_2
       (.I0(\C_out_reg_n_0_[1] ),
        .I1(\B_out_reg[3]_0 [1]),
        .I2(\C_out_reg_n_0_[2] ),
        .I3(\B_out_reg[3]_0 [0]),
        .O(\B_out_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_3
       (.I0(\B_out_reg[3]_0 [0]),
        .I1(\C_out_reg_n_0_[1] ),
        .O(\B_out_reg[3]_1 [0]));
  LUT6 #(
    .INIT(64'h6A953F3F6A6AC0C0)) 
    multOp__0_carry_i_4
       (.I0(\B_out_reg[3]_0 [2]),
        .I1(\C_out_reg_n_0_[0] ),
        .I2(\B_out_reg[3]_0 [3]),
        .I3(\B_out_reg[3]_0 [0]),
        .I4(\C_out_reg_n_0_[1] ),
        .I5(multOp__0_carry_i_8_n_0),
        .O(\B_out_reg[3]_2 [3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_5
       (.I0(\B_out_reg[3]_0 [0]),
        .I1(\C_out_reg_n_0_[2] ),
        .I2(\B_out_reg[3]_0 [1]),
        .I3(\C_out_reg_n_0_[1] ),
        .I4(\B_out_reg[3]_0 [2]),
        .I5(\C_out_reg_n_0_[0] ),
        .O(\B_out_reg[3]_2 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_6
       (.I0(\B_out_reg[3]_0 [1]),
        .I1(\C_out_reg_n_0_[0] ),
        .I2(\C_out_reg_n_0_[1] ),
        .I3(\B_out_reg[3]_0 [0]),
        .O(\B_out_reg[3]_2 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_7
       (.I0(\C_out_reg_n_0_[0] ),
        .I1(\B_out_reg[3]_0 [0]),
        .O(\B_out_reg[3]_2 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_8
       (.I0(\B_out_reg[3]_0 [1]),
        .I1(\C_out_reg_n_0_[2] ),
        .O(multOp__0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hEA808080157F7F7F)) 
    multOp__22_carry__0_i_1
       (.I0(multOp__22_carry__0_i_2_n_0),
        .I1(\B_out_reg[3]_0 [2]),
        .I2(\C_out_reg_n_0_[4] ),
        .I3(\B_out_reg[3]_0 [1]),
        .I4(\C_out_reg_n_0_[5] ),
        .I5(multOp__22_carry__0_i_3_n_0),
        .O(\B_out_reg[7]_6 ));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__22_carry__0_i_2
       (.I0(\B_out_reg[3]_0 [3]),
        .I1(\C_out_reg_n_0_[3] ),
        .O(multOp__22_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    multOp__22_carry__0_i_3
       (.I0(\C_out_reg_n_0_[3] ),
        .I1(\B_out_reg[4]_0 ),
        .I2(\B_out_reg[3]_0 [3]),
        .I3(\C_out_reg_n_0_[4] ),
        .I4(\B_out_reg[3]_0 [2]),
        .I5(\C_out_reg_n_0_[5] ),
        .O(multOp__22_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__22_carry_i_1
       (.I0(\C_out_reg_n_0_[3] ),
        .I1(\B_out_reg[3]_0 [3]),
        .I2(\B_out_reg[3]_0 [2]),
        .I3(\C_out_reg_n_0_[4] ),
        .I4(\B_out_reg[3]_0 [1]),
        .I5(\C_out_reg_n_0_[5] ),
        .O(\B_out_reg[3]_3 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__22_carry_i_2
       (.I0(\C_out_reg_n_0_[4] ),
        .I1(\B_out_reg[3]_0 [1]),
        .I2(\C_out_reg_n_0_[5] ),
        .I3(\B_out_reg[3]_0 [0]),
        .O(\B_out_reg[3]_3 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__22_carry_i_3
       (.I0(\B_out_reg[3]_0 [0]),
        .I1(\C_out_reg_n_0_[4] ),
        .O(\B_out_reg[3]_3 [0]));
  LUT6 #(
    .INIT(64'h6A953F3F6A6AC0C0)) 
    multOp__22_carry_i_4
       (.I0(\B_out_reg[3]_0 [2]),
        .I1(\B_out_reg[3]_0 [3]),
        .I2(\C_out_reg_n_0_[3] ),
        .I3(\B_out_reg[3]_0 [0]),
        .I4(\C_out_reg_n_0_[4] ),
        .I5(multOp__22_carry_i_8_n_0),
        .O(\B_out_reg[3]_4 [3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__22_carry_i_5
       (.I0(\B_out_reg[3]_0 [0]),
        .I1(\C_out_reg_n_0_[5] ),
        .I2(\B_out_reg[3]_0 [1]),
        .I3(\C_out_reg_n_0_[4] ),
        .I4(\C_out_reg_n_0_[3] ),
        .I5(\B_out_reg[3]_0 [2]),
        .O(\B_out_reg[3]_4 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__22_carry_i_6
       (.I0(\C_out_reg_n_0_[3] ),
        .I1(\B_out_reg[3]_0 [1]),
        .I2(\C_out_reg_n_0_[4] ),
        .I3(\B_out_reg[3]_0 [0]),
        .O(\B_out_reg[3]_4 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__22_carry_i_7
       (.I0(\B_out_reg[3]_0 [0]),
        .I1(\C_out_reg_n_0_[3] ),
        .O(\B_out_reg[3]_4 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__22_carry_i_8
       (.I0(\B_out_reg[3]_0 [1]),
        .I1(\C_out_reg_n_0_[5] ),
        .O(multOp__22_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__35_carry__0_i_2
       (.I0(\B_out_reg[3]_0 [0]),
        .I1(\C_out_reg_n_0_[7] ),
        .O(\B_out_reg[7]_5 ));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__35_carry__0_i_3
       (.I0(\B_out_reg[3]_0 [1]),
        .I1(\B_out_reg[7]_4 ),
        .O(\B_out_reg[7]_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_1
       (.I0(\B_out_reg_n_0_[7] ),
        .I1(\C_out_reg_n_0_[7] ),
        .O(\B_out_reg[7]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_2
       (.I0(\B_out_reg[7]_4 ),
        .I1(\B_out_reg[6]_0 ),
        .O(\B_out_reg[7]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_3
       (.I0(\C_out_reg_n_0_[5] ),
        .I1(\B_out_reg[5]_0 ),
        .O(\B_out_reg[7]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_4
       (.I0(\C_out_reg_n_0_[4] ),
        .I1(\B_out_reg[4]_0 ),
        .O(\B_out_reg[7]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_1
       (.I0(\C_out_reg_n_0_[3] ),
        .I1(\B_out_reg[3]_0 [3]),
        .O(\B_out_reg[3]_5 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_2
       (.I0(\C_out_reg_n_0_[2] ),
        .I1(\B_out_reg[3]_0 [2]),
        .O(\B_out_reg[3]_5 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_3
       (.I0(\C_out_reg_n_0_[1] ),
        .I1(\B_out_reg[3]_0 [1]),
        .O(\B_out_reg[3]_5 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_4
       (.I0(\C_out_reg_n_0_[0] ),
        .I1(\B_out_reg[3]_0 [0]),
        .O(\B_out_reg[3]_5 [0]));
endmodule

(* ORIG_REF_NAME = "PipeLine" *) 
module PipeLine_0
   (D,
    Q,
    \A_out_reg[3]_0 ,
    \A_out_reg[3]_1 ,
    CLK_IBUF_BUFG,
    \OP_out_reg[2]_0 ,
    \B_out_reg[7]_0 );
  output [7:0]D;
  output [2:0]Q;
  output [2:0]\A_out_reg[3]_0 ;
  input [2:0]\A_out_reg[3]_1 ;
  input CLK_IBUF_BUFG;
  input [2:0]\OP_out_reg[2]_0 ;
  input [7:0]\B_out_reg[7]_0 ;

  wire [2:0]\A_out_reg[3]_0 ;
  wire [2:0]\A_out_reg[3]_1 ;
  wire [7:0]B_mem;
  wire [7:0]\B_out_reg[7]_0 ;
  wire CLK_IBUF_BUFG;
  wire [7:0]D;
  wire [2:0]\OP_out_reg[2]_0 ;
  wire [2:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\A_out_reg[3]_1 [0]),
        .Q(\A_out_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\A_out_reg[3]_1 [1]),
        .Q(\A_out_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\A_out_reg[3]_1 [2]),
        .Q(\A_out_reg[3]_0 [2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \B_out[0]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(B_mem[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \B_out[1]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(B_mem[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \B_out[2]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(B_mem[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \B_out[3]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(B_mem[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \B_out[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(B_mem[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \B_out[5]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(B_mem[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \B_out[6]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(B_mem[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \B_out[7]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(B_mem[7]),
        .O(D[7]));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\B_out_reg[7]_0 [0]),
        .Q(B_mem[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\B_out_reg[7]_0 [1]),
        .Q(B_mem[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\B_out_reg[7]_0 [2]),
        .Q(B_mem[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\B_out_reg[7]_0 [3]),
        .Q(B_mem[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\B_out_reg[7]_0 [4]),
        .Q(B_mem[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\B_out_reg[7]_0 [5]),
        .Q(B_mem[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\B_out_reg[7]_0 [6]),
        .Q(B_mem[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\B_out_reg[7]_0 [7]),
        .Q(B_mem[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PipeLine" *) 
module PipeLine_1
   (C_out,
    \A_out_reg[3] ,
    \alea_cpt_di_reg[2] ,
    \alea_cpt_di_reg[2]_0 ,
    \alea_cpt_di_reg[1] ,
    \alea_cpt_di_reg[0] ,
    D,
    \B_out_reg[3]_0 ,
    \OP_out_reg[2]_0 ,
    \B_out_reg[1]_0 ,
    \B_out_reg[2]_0 ,
    \B_out_reg[3]_1 ,
    \B_out_reg[7] ,
    gestion_alea_di_reg,
    A_di,
    Q,
    CLK_IBUF_BUFG,
    \alea_cpt_di_reg[2]_1 ,
    \alea_cpt_di_reg[1]_0 ,
    \alea_cpt_di_reg[0]_0 ,
    RST_IBUF,
    \IP_reg[5] ,
    gestion_alea_diex_reg,
    \IP_reg[7] ,
    \IP_reg[2] ,
    \IP_reg[4] ,
    \IP_reg[3] ,
    \IP_reg[2]_0 ,
    Qa_OBUF,
    A_di_alea1,
    gestion_alea_di_reg_0,
    gestion_alea_diex_reg_0,
    \Sort_reg[18] ,
    \A_out_reg[1]_0 ,
    fin_alea_diex_reg,
    \Sort_reg[18]_0 );
  output [0:0]C_out;
  output \A_out_reg[3] ;
  output \alea_cpt_di_reg[2] ;
  output \alea_cpt_di_reg[2]_0 ;
  output \alea_cpt_di_reg[1] ;
  output \alea_cpt_di_reg[0] ;
  output [5:0]D;
  output [3:0]\B_out_reg[3]_0 ;
  output [2:0]\OP_out_reg[2]_0 ;
  output \B_out_reg[1]_0 ;
  output \B_out_reg[2]_0 ;
  output \B_out_reg[3]_1 ;
  output \B_out_reg[7] ;
  output gestion_alea_di_reg;
  output [1:0]A_di;
  input [6:0]Q;
  input CLK_IBUF_BUFG;
  input \alea_cpt_di_reg[2]_1 ;
  input \alea_cpt_di_reg[1]_0 ;
  input \alea_cpt_di_reg[0]_0 ;
  input RST_IBUF;
  input \IP_reg[5] ;
  input gestion_alea_diex_reg;
  input [7:0]\IP_reg[7] ;
  input \IP_reg[2] ;
  input \IP_reg[4] ;
  input \IP_reg[3] ;
  input \IP_reg[2]_0 ;
  input [3:0]Qa_OBUF;
  input A_di_alea1;
  input gestion_alea_di_reg_0;
  input gestion_alea_diex_reg_0;
  input \Sort_reg[18] ;
  input \A_out_reg[1]_0 ;
  input fin_alea_diex_reg;
  input [2:0]\Sort_reg[18]_0 ;

  wire [1:0]A_di;
  wire A_di_alea1;
  wire \A_out_reg[1]_0 ;
  wire \A_out_reg[3] ;
  wire \B_out_reg[1]_0 ;
  wire \B_out_reg[2]_0 ;
  wire [3:0]\B_out_reg[3]_0 ;
  wire \B_out_reg[3]_1 ;
  wire \B_out_reg[7] ;
  wire CLK_IBUF_BUFG;
  wire [0:0]C_out;
  wire [5:0]D;
  wire \IP[7]_i_14_n_0 ;
  wire \IP[7]_i_16_n_0 ;
  wire \IP[7]_i_17_n_0 ;
  wire \IP_reg[2] ;
  wire \IP_reg[2]_0 ;
  wire \IP_reg[3] ;
  wire \IP_reg[4] ;
  wire \IP_reg[5] ;
  wire [7:0]\IP_reg[7] ;
  wire OP_li_alea1;
  wire [2:0]\OP_out_reg[2]_0 ;
  wire [6:0]Q;
  wire [3:0]Qa_OBUF;
  wire RST_IBUF;
  wire \Sort_reg[18] ;
  wire [2:0]\Sort_reg[18]_0 ;
  wire \alea_cpt_di_reg[0] ;
  wire \alea_cpt_di_reg[0]_0 ;
  wire \alea_cpt_di_reg[1] ;
  wire \alea_cpt_di_reg[1]_0 ;
  wire \alea_cpt_di_reg[2] ;
  wire \alea_cpt_di_reg[2]_0 ;
  wire \alea_cpt_di_reg[2]_1 ;
  wire fin_alea_diex_reg;
  wire gestion_alea_di_reg;
  wire gestion_alea_di_reg_0;
  wire gestion_alea_diex_reg;
  wire gestion_alea_diex_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[5]),
        .Q(A_di[0]),
        .R(OP_li_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[6]),
        .Q(A_di[1]),
        .R(OP_li_alea1));
  LUT6 #(
    .INIT(64'h00000000EAEF2A20)) 
    \B_out[0]_i_1__0 
       (.I0(Qa_OBUF[0]),
        .I1(\OP_out_reg[2]_0 [2]),
        .I2(\OP_out_reg[2]_0 [1]),
        .I3(\OP_out_reg[2]_0 [0]),
        .I4(\A_out_reg[3] ),
        .I5(A_di_alea1),
        .O(\B_out_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h00000000EAEF2A20)) 
    \B_out[1]_i_1__0 
       (.I0(Qa_OBUF[1]),
        .I1(\OP_out_reg[2]_0 [2]),
        .I2(\OP_out_reg[2]_0 [1]),
        .I3(\OP_out_reg[2]_0 [0]),
        .I4(\B_out_reg[1]_0 ),
        .I5(A_di_alea1),
        .O(\B_out_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h00000000EAEF2A20)) 
    \B_out[2]_i_1__0 
       (.I0(Qa_OBUF[2]),
        .I1(\OP_out_reg[2]_0 [2]),
        .I2(\OP_out_reg[2]_0 [1]),
        .I3(\OP_out_reg[2]_0 [0]),
        .I4(\B_out_reg[2]_0 ),
        .I5(A_di_alea1),
        .O(\B_out_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h00000000EAEF2A20)) 
    \B_out[3]_i_1__0 
       (.I0(Qa_OBUF[3]),
        .I1(\OP_out_reg[2]_0 [2]),
        .I2(\OP_out_reg[2]_0 [1]),
        .I3(\OP_out_reg[2]_0 [0]),
        .I4(\B_out_reg[3]_1 ),
        .I5(A_di_alea1),
        .O(\B_out_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    \B_out[3]_i_1__1 
       (.I0(fin_alea_diex_reg),
        .I1(gestion_alea_diex_reg_0),
        .O(OP_li_alea1));
  LUT5 #(
    .INIT(32'hFEEEFEFF)) 
    \B_out[7]_i_1__0 
       (.I0(gestion_alea_di_reg_0),
        .I1(gestion_alea_diex_reg_0),
        .I2(\OP_out_reg[2]_0 [2]),
        .I3(\OP_out_reg[2]_0 [1]),
        .I4(\OP_out_reg[2]_0 [0]),
        .O(\B_out_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\A_out_reg[3] ),
        .R(OP_li_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\B_out_reg[1]_0 ),
        .R(OP_li_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\B_out_reg[2]_0 ),
        .R(OP_li_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\B_out_reg[3]_1 ),
        .R(OP_li_alea1));
  FDRE #(
    .INIT(1'b0)) 
    \C_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[0]),
        .Q(C_out),
        .R(OP_li_alea1));
  LUT5 #(
    .INIT(32'h78F0F087)) 
    \IP[2]_i_1 
       (.I0(\alea_cpt_di_reg[2]_0 ),
        .I1(gestion_alea_diex_reg),
        .I2(\IP_reg[7] [2]),
        .I3(\IP_reg[7] [1]),
        .I4(\IP_reg[7] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h78F0F0F0F0F0F087)) 
    \IP[3]_i_1 
       (.I0(\alea_cpt_di_reg[2]_0 ),
        .I1(gestion_alea_diex_reg),
        .I2(\IP_reg[7] [3]),
        .I3(\IP_reg[7] [0]),
        .I4(\IP_reg[7] [1]),
        .I5(\IP_reg[7] [2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBF40807F)) 
    \IP[4]_i_1 
       (.I0(\IP_reg[2]_0 ),
        .I1(\alea_cpt_di_reg[2]_0 ),
        .I2(gestion_alea_diex_reg),
        .I3(\IP_reg[7] [4]),
        .I4(\IP_reg[3] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h7F807F807F8040BF)) 
    \IP[5]_i_1 
       (.I0(\IP_reg[4] ),
        .I1(\alea_cpt_di_reg[2]_0 ),
        .I2(gestion_alea_diex_reg),
        .I3(\IP_reg[7] [5]),
        .I4(\IP_reg[3] ),
        .I5(\IP_reg[7] [4]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h40BF7F80)) 
    \IP[6]_i_1 
       (.I0(\IP_reg[5] ),
        .I1(\alea_cpt_di_reg[2]_0 ),
        .I2(gestion_alea_diex_reg),
        .I3(\IP_reg[7] [6]),
        .I4(\IP_reg[2] ),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h01)) 
    \IP[7]_i_14 
       (.I0(\OP_out_reg[2]_0 [2]),
        .I1(\OP_out_reg[2]_0 [1]),
        .I2(\OP_out_reg[2]_0 [0]),
        .O(\IP[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \IP[7]_i_16 
       (.I0(\A_out_reg[3] ),
        .I1(Q[4]),
        .O(\IP[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0041)) 
    \IP[7]_i_17 
       (.I0(\A_out_reg[3] ),
        .I1(Q[0]),
        .I2(A_di[0]),
        .I3(A_di[1]),
        .O(\IP[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h7F80C03F7F80FF00)) 
    \IP[7]_i_2 
       (.I0(\IP_reg[5] ),
        .I1(\alea_cpt_di_reg[2]_0 ),
        .I2(gestion_alea_diex_reg),
        .I3(\IP_reg[7] [7]),
        .I4(\IP_reg[7] [6]),
        .I5(\IP_reg[2] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h5454545455545555)) 
    \IP[7]_i_6 
       (.I0(gestion_alea_di_reg_0),
        .I1(\Sort_reg[18] ),
        .I2(\IP[7]_i_14_n_0 ),
        .I3(\A_out_reg[1]_0 ),
        .I4(\IP[7]_i_16_n_0 ),
        .I5(\IP[7]_i_17_n_0 ),
        .O(\alea_cpt_di_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Sort_reg[18]_0 [0]),
        .Q(\OP_out_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Sort_reg[18]_0 [1]),
        .Q(\OP_out_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Sort_reg[18]_0 [2]),
        .Q(\OP_out_reg[2]_0 [2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF0F0F00B)) 
    \alea_cpt_di[0]_i_1 
       (.I0(\alea_cpt_di_reg[2]_1 ),
        .I1(\alea_cpt_di_reg[1]_0 ),
        .I2(\alea_cpt_di_reg[0]_0 ),
        .I3(RST_IBUF),
        .I4(\alea_cpt_di_reg[2]_0 ),
        .O(\alea_cpt_di_reg[0] ));
  LUT5 #(
    .INIT(32'hCCCCCC38)) 
    \alea_cpt_di[1]_i_1 
       (.I0(\alea_cpt_di_reg[2]_1 ),
        .I1(\alea_cpt_di_reg[1]_0 ),
        .I2(\alea_cpt_di_reg[0]_0 ),
        .I3(RST_IBUF),
        .I4(\alea_cpt_di_reg[2]_0 ),
        .O(\alea_cpt_di_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hAAAAAA6A)) 
    \alea_cpt_di[2]_i_1 
       (.I0(\alea_cpt_di_reg[2]_1 ),
        .I1(\alea_cpt_di_reg[1]_0 ),
        .I2(\alea_cpt_di_reg[0]_0 ),
        .I3(RST_IBUF),
        .I4(\alea_cpt_di_reg[2]_0 ),
        .O(\alea_cpt_di_reg[2] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFFCF)) 
    gestion_alea_di_i_1
       (.I0(gestion_alea_di_reg_0),
        .I1(\alea_cpt_di_reg[2]_1 ),
        .I2(\alea_cpt_di_reg[1]_0 ),
        .I3(\alea_cpt_di_reg[0]_0 ),
        .I4(RST_IBUF),
        .I5(\alea_cpt_di_reg[2]_0 ),
        .O(gestion_alea_di_reg));
endmodule

(* ORIG_REF_NAME = "PipeLine" *) 
module PipeLine_2
   (E,
    \C_out_reg[7] ,
    \B_out_reg[7]_0 ,
    \B_out_reg[7]_1 ,
    \B_out_reg[7]_2 ,
    \B_out_reg[7]_3 ,
    \B_out_reg[7]_4 ,
    \B_out_reg[7]_5 ,
    Q,
    D,
    CLK_IBUF_BUFG,
    \OP_out_reg[2]_0 ,
    \OP_out_reg[2]_1 );
  output [0:0]E;
  output [0:0]\C_out_reg[7] ;
  output [0:0]\B_out_reg[7]_0 ;
  output [0:0]\B_out_reg[7]_1 ;
  output [0:0]\B_out_reg[7]_2 ;
  output [0:0]\B_out_reg[7]_3 ;
  output [0:0]\B_out_reg[7]_4 ;
  output [0:0]\B_out_reg[7]_5 ;
  output [7:0]Q;
  input [2:0]D;
  input CLK_IBUF_BUFG;
  input [2:0]\OP_out_reg[2]_0 ;
  input [7:0]\OP_out_reg[2]_1 ;

  wire \A_out_reg_n_0_[0] ;
  wire \A_out_reg_n_0_[1] ;
  wire \A_out_reg_n_0_[3] ;
  wire [0:0]\B_out_reg[7]_0 ;
  wire [0:0]\B_out_reg[7]_1 ;
  wire [0:0]\B_out_reg[7]_2 ;
  wire [0:0]\B_out_reg[7]_3 ;
  wire [0:0]\B_out_reg[7]_4 ;
  wire [0:0]\B_out_reg[7]_5 ;
  wire CLK_IBUF_BUFG;
  wire [0:0]\C_out_reg[7] ;
  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]\OP_out_reg[2]_0 ;
  wire [7:0]\OP_out_reg[2]_1 ;
  wire \OP_out_reg_n_0_[0] ;
  wire \OP_out_reg_n_0_[1] ;
  wire \OP_out_reg_n_0_[2] ;
  wire [7:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\A_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\A_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\A_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_1 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_0 [0]),
        .Q(\OP_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_0 [1]),
        .Q(\OP_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OP_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\OP_out_reg[2]_0 [2]),
        .Q(\OP_out_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \bancreg_reg[0][7]_i_1 
       (.I0(\OP_out_reg_n_0_[1] ),
        .I1(\OP_out_reg_n_0_[0] ),
        .I2(\OP_out_reg_n_0_[2] ),
        .I3(\A_out_reg_n_0_[1] ),
        .I4(\A_out_reg_n_0_[0] ),
        .I5(\A_out_reg_n_0_[3] ),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    \bancreg_reg[10][7]_i_1 
       (.I0(\OP_out_reg_n_0_[1] ),
        .I1(\OP_out_reg_n_0_[0] ),
        .I2(\OP_out_reg_n_0_[2] ),
        .I3(\A_out_reg_n_0_[3] ),
        .I4(\A_out_reg_n_0_[1] ),
        .I5(\A_out_reg_n_0_[0] ),
        .O(\B_out_reg[7]_4 ));
  LUT6 #(
    .INIT(64'hFE00000000000000)) 
    \bancreg_reg[11][7]_i_1 
       (.I0(\OP_out_reg_n_0_[1] ),
        .I1(\OP_out_reg_n_0_[0] ),
        .I2(\OP_out_reg_n_0_[2] ),
        .I3(\A_out_reg_n_0_[3] ),
        .I4(\A_out_reg_n_0_[1] ),
        .I5(\A_out_reg_n_0_[0] ),
        .O(\B_out_reg[7]_5 ));
  LUT6 #(
    .INIT(64'h0000000000FE0000)) 
    \bancreg_reg[1][7]_i_1 
       (.I0(\OP_out_reg_n_0_[1] ),
        .I1(\OP_out_reg_n_0_[0] ),
        .I2(\OP_out_reg_n_0_[2] ),
        .I3(\A_out_reg_n_0_[1] ),
        .I4(\A_out_reg_n_0_[0] ),
        .I5(\A_out_reg_n_0_[3] ),
        .O(\C_out_reg[7] ));
  LUT6 #(
    .INIT(64'h0000000000FE0000)) 
    \bancreg_reg[2][7]_i_1 
       (.I0(\OP_out_reg_n_0_[1] ),
        .I1(\OP_out_reg_n_0_[0] ),
        .I2(\OP_out_reg_n_0_[2] ),
        .I3(\A_out_reg_n_0_[0] ),
        .I4(\A_out_reg_n_0_[1] ),
        .I5(\A_out_reg_n_0_[3] ),
        .O(\B_out_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    \bancreg_reg[3][7]_i_1 
       (.I0(\OP_out_reg_n_0_[1] ),
        .I1(\OP_out_reg_n_0_[0] ),
        .I2(\OP_out_reg_n_0_[2] ),
        .I3(\A_out_reg_n_0_[1] ),
        .I4(\A_out_reg_n_0_[0] ),
        .I5(\A_out_reg_n_0_[3] ),
        .O(\B_out_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h0000000000FE0000)) 
    \bancreg_reg[8][7]_i_1 
       (.I0(\OP_out_reg_n_0_[1] ),
        .I1(\OP_out_reg_n_0_[0] ),
        .I2(\OP_out_reg_n_0_[2] ),
        .I3(\A_out_reg_n_0_[1] ),
        .I4(\A_out_reg_n_0_[3] ),
        .I5(\A_out_reg_n_0_[0] ),
        .O(\B_out_reg[7]_2 ));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    \bancreg_reg[9][7]_i_1 
       (.I0(\OP_out_reg_n_0_[1] ),
        .I1(\OP_out_reg_n_0_[0] ),
        .I2(\OP_out_reg_n_0_[2] ),
        .I3(\A_out_reg_n_0_[3] ),
        .I4(\A_out_reg_n_0_[0] ),
        .I5(\A_out_reg_n_0_[1] ),
        .O(\B_out_reg[7]_3 ));
endmodule

(* ECO_CHECKSUM = "fdaf1f77" *) 
(* NotValidForBitStream *)
module processor
   (Qa,
    Qb,
    RST,
    CLK);
  output [7:0]Qa;
  output [7:0]Qb;
  input RST;
  input CLK;

  wire [1:0]A_di;
  wire A_di_alea1;
  wire [1:0]A_li;
  wire [3:0]B_li;
  wire [7:0]B_re;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [0:0]C_li;
  wire [0:0]C_out;
  wire IP;
  wire \IP[0]_i_1_n_0 ;
  wire \IP[4]_i_2_n_0 ;
  wire \IP[5]_i_2_n_0 ;
  wire \IP[5]_i_3_n_0 ;
  wire \IP[7]_i_3_n_0 ;
  wire \IP[7]_i_4_n_0 ;
  wire \IP[7]_i_7_n_0 ;
  wire \IP[7]_i_8_n_0 ;
  wire [7:0]IP__0;
  wire [2:0]OP_di;
  wire [2:0]OP_li_alea;
  wire [2:0]OP_out;
  wire [7:0]Qa;
  wire [7:0]Qa_OBUF;
  wire [7:0]Qb;
  wire [7:0]Qb_OBUF;
  wire RST;
  wire RST_IBUF;
  wire [7:0]S;
  wire \alea_cpt_di_reg_n_0_[0] ;
  wire \alea_cpt_di_reg_n_0_[1] ;
  wire \alea_cpt_di_reg_n_0_[2] ;
  wire \alea_cpt_diex_reg_n_0_[0] ;
  wire \alea_cpt_diex_reg_n_0_[1] ;
  wire \alea_cpt_diex_reg_n_0_[2] ;
  wire fin_alea_diex_reg_n_0;
  wire gestion_alea_di_reg_n_0;
  wire gestion_alea_diex_reg_n_0;
  wire mem_ins_n_0;
  wire mem_ins_n_11;
  wire mem_ins_n_12;
  wire [7:0]minusOp;
  wire [7:0]multOp;
  wire pipdiex_n_0;
  wire pipdiex_n_1;
  wire pipdiex_n_10;
  wire pipdiex_n_11;
  wire pipdiex_n_12;
  wire pipdiex_n_16;
  wire pipdiex_n_18;
  wire pipdiex_n_19;
  wire pipdiex_n_2;
  wire pipdiex_n_20;
  wire pipdiex_n_21;
  wire pipdiex_n_22;
  wire pipdiex_n_23;
  wire pipdiex_n_24;
  wire pipdiex_n_25;
  wire pipdiex_n_26;
  wire pipdiex_n_27;
  wire pipdiex_n_28;
  wire pipdiex_n_29;
  wire pipdiex_n_3;
  wire pipdiex_n_30;
  wire pipdiex_n_31;
  wire pipdiex_n_32;
  wire pipdiex_n_33;
  wire pipdiex_n_34;
  wire pipdiex_n_35;
  wire pipdiex_n_36;
  wire pipdiex_n_37;
  wire pipdiex_n_39;
  wire pipdiex_n_4;
  wire pipdiex_n_40;
  wire pipdiex_n_41;
  wire pipdiex_n_42;
  wire pipdiex_n_43;
  wire pipdiex_n_44;
  wire pipdiex_n_45;
  wire pipdiex_n_46;
  wire pipdiex_n_47;
  wire pipdiex_n_48;
  wire pipdiex_n_49;
  wire pipdiex_n_5;
  wire pipdiex_n_50;
  wire pipdiex_n_51;
  wire pipdiex_n_52;
  wire pipdiex_n_53;
  wire pipdiex_n_54;
  wire pipdiex_n_55;
  wire pipdiex_n_56;
  wire pipdiex_n_57;
  wire pipdiex_n_58;
  wire pipdiex_n_59;
  wire pipdiex_n_6;
  wire pipdiex_n_60;
  wire pipdiex_n_61;
  wire pipdiex_n_62;
  wire pipdiex_n_63;
  wire pipdiex_n_64;
  wire pipdiex_n_65;
  wire pipdiex_n_66;
  wire pipdiex_n_67;
  wire pipdiex_n_68;
  wire pipdiex_n_69;
  wire pipdiex_n_7;
  wire pipdiex_n_70;
  wire pipdiex_n_71;
  wire pipdiex_n_72;
  wire pipdiex_n_73;
  wire pipdiex_n_74;
  wire pipdiex_n_75;
  wire pipdiex_n_76;
  wire pipdiex_n_77;
  wire pipdiex_n_78;
  wire pipdiex_n_79;
  wire pipdiex_n_8;
  wire pipdiex_n_9;
  wire pipexmem_n_0;
  wire pipexmem_n_1;
  wire pipexmem_n_10;
  wire pipexmem_n_11;
  wire pipexmem_n_12;
  wire pipexmem_n_13;
  wire pipexmem_n_2;
  wire pipexmem_n_3;
  wire pipexmem_n_4;
  wire pipexmem_n_5;
  wire pipexmem_n_6;
  wire pipexmem_n_7;
  wire pipexmem_n_8;
  wire pipexmem_n_9;
  wire piplidi_n_1;
  wire piplidi_n_10;
  wire piplidi_n_11;
  wire piplidi_n_12;
  wire piplidi_n_13;
  wire piplidi_n_14;
  wire piplidi_n_15;
  wire piplidi_n_19;
  wire piplidi_n_2;
  wire piplidi_n_20;
  wire piplidi_n_21;
  wire piplidi_n_22;
  wire piplidi_n_23;
  wire piplidi_n_3;
  wire piplidi_n_4;
  wire piplidi_n_5;
  wire piplidi_n_6;
  wire piplidi_n_7;
  wire piplidi_n_8;
  wire piplidi_n_9;
  wire pipmemre_n_0;
  wire pipmemre_n_1;
  wire pipmemre_n_2;
  wire pipmemre_n_3;
  wire pipmemre_n_4;
  wire pipmemre_n_5;
  wire pipmemre_n_6;
  wire pipmemre_n_7;
  wire [7:0]plusOp;
  wire ual_n_12;
  wire ual_n_8;

  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \IP[0]_i_1 
       (.I0(IP__0[0]),
        .O(\IP[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \IP[4]_i_2 
       (.I0(IP__0[2]),
        .I1(IP__0[0]),
        .I2(IP__0[1]),
        .I3(IP__0[3]),
        .O(\IP[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \IP[5]_i_2 
       (.I0(IP__0[4]),
        .I1(IP__0[3]),
        .I2(IP__0[1]),
        .I3(IP__0[0]),
        .I4(IP__0[2]),
        .O(\IP[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \IP[5]_i_3 
       (.I0(IP__0[3]),
        .I1(IP__0[0]),
        .I2(IP__0[1]),
        .I3(IP__0[2]),
        .O(\IP[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \IP[7]_i_3 
       (.I0(\alea_cpt_di_reg_n_0_[2] ),
        .I1(\alea_cpt_di_reg_n_0_[1] ),
        .I2(\alea_cpt_di_reg_n_0_[0] ),
        .O(\IP[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \IP[7]_i_4 
       (.I0(\alea_cpt_diex_reg_n_0_[2] ),
        .I1(\alea_cpt_diex_reg_n_0_[0] ),
        .I2(\alea_cpt_diex_reg_n_0_[1] ),
        .O(\IP[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \IP[7]_i_7 
       (.I0(IP__0[5]),
        .I1(IP__0[2]),
        .I2(IP__0[0]),
        .I3(IP__0[1]),
        .I4(IP__0[3]),
        .I5(IP__0[4]),
        .O(\IP[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \IP[7]_i_8 
       (.I0(IP__0[2]),
        .I1(IP__0[1]),
        .I2(IP__0[0]),
        .I3(IP__0[3]),
        .I4(IP__0[5]),
        .I5(IP__0[4]),
        .O(\IP[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(IP),
        .D(\IP[0]_i_1_n_0 ),
        .Q(IP__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(IP),
        .D(pipdiex_n_16),
        .Q(IP__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(IP),
        .D(piplidi_n_11),
        .Q(IP__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(IP),
        .D(piplidi_n_10),
        .Q(IP__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(IP),
        .D(piplidi_n_9),
        .Q(IP__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(IP),
        .D(piplidi_n_8),
        .Q(IP__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(IP),
        .D(piplidi_n_7),
        .Q(IP__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(IP),
        .D(piplidi_n_6),
        .Q(IP__0[7]),
        .R(1'b0));
  OBUF \Qa_OBUF[0]_inst 
       (.I(Qa_OBUF[0]),
        .O(Qa[0]));
  OBUF \Qa_OBUF[1]_inst 
       (.I(Qa_OBUF[1]),
        .O(Qa[1]));
  OBUF \Qa_OBUF[2]_inst 
       (.I(Qa_OBUF[2]),
        .O(Qa[2]));
  OBUF \Qa_OBUF[3]_inst 
       (.I(Qa_OBUF[3]),
        .O(Qa[3]));
  OBUF \Qa_OBUF[4]_inst 
       (.I(Qa_OBUF[4]),
        .O(Qa[4]));
  OBUF \Qa_OBUF[5]_inst 
       (.I(Qa_OBUF[5]),
        .O(Qa[5]));
  OBUF \Qa_OBUF[6]_inst 
       (.I(Qa_OBUF[6]),
        .O(Qa[6]));
  OBUF \Qa_OBUF[7]_inst 
       (.I(Qa_OBUF[7]),
        .O(Qa[7]));
  OBUF \Qb_OBUF[0]_inst 
       (.I(Qb_OBUF[0]),
        .O(Qb[0]));
  OBUF \Qb_OBUF[1]_inst 
       (.I(Qb_OBUF[1]),
        .O(Qb[1]));
  OBUF \Qb_OBUF[2]_inst 
       (.I(Qb_OBUF[2]),
        .O(Qb[2]));
  OBUF \Qb_OBUF[3]_inst 
       (.I(Qb_OBUF[3]),
        .O(Qb[3]));
  OBUF \Qb_OBUF[4]_inst 
       (.I(Qb_OBUF[4]),
        .O(Qb[4]));
  OBUF \Qb_OBUF[5]_inst 
       (.I(Qb_OBUF[5]),
        .O(Qb[5]));
  OBUF \Qb_OBUF[6]_inst 
       (.I(Qb_OBUF[6]),
        .O(Qb[6]));
  OBUF \Qb_OBUF[7]_inst 
       (.I(Qb_OBUF[7]),
        .O(Qb[7]));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \alea_cpt_di_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(piplidi_n_5),
        .Q(\alea_cpt_di_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alea_cpt_di_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(piplidi_n_4),
        .Q(\alea_cpt_di_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alea_cpt_di_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(piplidi_n_2),
        .Q(\alea_cpt_di_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alea_cpt_diex_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(pipdiex_n_3),
        .Q(\alea_cpt_diex_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alea_cpt_diex_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(pipdiex_n_2),
        .Q(\alea_cpt_diex_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alea_cpt_diex_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(pipdiex_n_0),
        .Q(\alea_cpt_diex_reg_n_0_[2] ),
        .R(1'b0));
  BR banc_registre
       (.\B_out_reg[0] (piplidi_n_1),
        .\B_out_reg[1] (piplidi_n_19),
        .\B_out_reg[2] (piplidi_n_20),
        .\B_out_reg[3] (piplidi_n_21),
        .C_out(C_out),
        .E(pipmemre_n_0),
        .\OP_out_reg[1] (pipmemre_n_1),
        .\OP_out_reg[1]_0 (pipmemre_n_2),
        .\OP_out_reg[1]_1 (pipmemre_n_3),
        .\OP_out_reg[1]_2 (pipmemre_n_4),
        .\OP_out_reg[1]_3 (pipmemre_n_5),
        .\OP_out_reg[1]_4 (pipmemre_n_6),
        .\OP_out_reg[1]_5 (pipmemre_n_7),
        .Q(B_re),
        .Qa_OBUF(Qa_OBUF),
        .Qb_OBUF(Qb_OBUF),
        .RST_IBUF(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    fin_alea_diex_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(pipdiex_n_4),
        .Q(fin_alea_diex_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    gestion_alea_di_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(piplidi_n_23),
        .Q(gestion_alea_di_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    gestion_alea_diex_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(pipdiex_n_18),
        .Q(gestion_alea_diex_reg_n_0),
        .R(1'b0));
  MI mem_ins
       (.A_di(A_di),
        .\A_out_reg[0] (pipdiex_n_37),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(OP_li_alea),
        .\IP_reg[7] (IP__0),
        .Q({A_li,B_li,C_li}),
        .\alea_cpt_di_reg[2] (mem_ins_n_0),
        .\alea_cpt_di_reg[2]_0 (mem_ins_n_11),
        .\alea_cpt_diex_reg[2] (mem_ins_n_12),
        .fin_alea_diex_reg(fin_alea_diex_reg_n_0),
        .gestion_alea_diex_reg(gestion_alea_diex_reg_n_0));
  PipeLine pipdiex
       (.A_di(A_di),
        .A_di_alea1(A_di_alea1),
        .\A_out_reg[3]_0 ({pipdiex_n_35,pipdiex_n_36,pipdiex_n_37}),
        .\B_out_reg[0]_0 (piplidi_n_1),
        .\B_out_reg[3]_0 ({pipdiex_n_27,pipdiex_n_28,pipdiex_n_29,pipdiex_n_30}),
        .\B_out_reg[3]_1 ({pipdiex_n_50,pipdiex_n_51,pipdiex_n_52}),
        .\B_out_reg[3]_2 ({pipdiex_n_53,pipdiex_n_54,pipdiex_n_55,pipdiex_n_56}),
        .\B_out_reg[3]_3 ({pipdiex_n_57,pipdiex_n_58,pipdiex_n_59}),
        .\B_out_reg[3]_4 ({pipdiex_n_60,pipdiex_n_61,pipdiex_n_62,pipdiex_n_63}),
        .\B_out_reg[3]_5 ({pipdiex_n_72,pipdiex_n_73,pipdiex_n_74,pipdiex_n_75}),
        .\B_out_reg[3]_6 ({pipdiex_n_76,pipdiex_n_77,pipdiex_n_78,pipdiex_n_79}),
        .\B_out_reg[4]_0 (pipdiex_n_31),
        .\B_out_reg[5]_0 (pipdiex_n_32),
        .\B_out_reg[6]_0 (pipdiex_n_33),
        .\B_out_reg[6]_1 ({pipdiex_n_67,pipdiex_n_68,pipdiex_n_69,pipdiex_n_70}),
        .\B_out_reg[7]_0 ({pipdiex_n_19,pipdiex_n_20,pipdiex_n_21,pipdiex_n_22,pipdiex_n_23,pipdiex_n_24,pipdiex_n_25,pipdiex_n_26}),
        .\B_out_reg[7]_1 (pipdiex_n_34),
        .\B_out_reg[7]_2 ({pipdiex_n_43,pipdiex_n_44,pipdiex_n_45,pipdiex_n_46}),
        .\B_out_reg[7]_3 (pipdiex_n_64),
        .\B_out_reg[7]_4 (pipdiex_n_65),
        .\B_out_reg[7]_5 (pipdiex_n_66),
        .\B_out_reg[7]_6 (pipdiex_n_71),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\C_out_reg[3]_0 (ual_n_12),
        .D({pipdiex_n_5,pipdiex_n_6,pipdiex_n_7,pipdiex_n_8,pipdiex_n_9,pipdiex_n_10,pipdiex_n_11,pipdiex_n_12}),
        .DI({pipdiex_n_47,pipdiex_n_48,pipdiex_n_49}),
        .E(IP),
        .\IP_reg[1] (pipdiex_n_16),
        .O({ual_n_8,multOp[2:0]}),
        .OP_out(OP_out),
        .\OP_out_reg[2]_0 (S),
        .\OP_out_reg[2]_1 ({piplidi_n_12,piplidi_n_13,piplidi_n_14,piplidi_n_15}),
        .\OP_out_reg[2]_2 (OP_di),
        .Q(IP__0[1:0]),
        .Qa_OBUF(Qa_OBUF[7:4]),
        .Qb_OBUF(Qb_OBUF),
        .RST_IBUF(RST_IBUF),
        .S({pipdiex_n_39,pipdiex_n_40,pipdiex_n_41,pipdiex_n_42}),
        .\Sort_reg[10] (mem_ins_n_12),
        .\Sort_reg[11] ({B_li[3],B_li[1],C_li}),
        .\Sort_reg[18] (mem_ins_n_0),
        .\alea_cpt_di_reg[2] (\IP[7]_i_3_n_0 ),
        .\alea_cpt_diex_reg[0] (pipdiex_n_3),
        .\alea_cpt_diex_reg[0]_0 (\alea_cpt_diex_reg_n_0_[0] ),
        .\alea_cpt_diex_reg[1] (pipdiex_n_2),
        .\alea_cpt_diex_reg[1]_0 (\alea_cpt_diex_reg_n_0_[1] ),
        .\alea_cpt_diex_reg[2] (pipdiex_n_0),
        .\alea_cpt_diex_reg[2]_0 (pipdiex_n_1),
        .\alea_cpt_diex_reg[2]_1 (\alea_cpt_diex_reg_n_0_[2] ),
        .\alea_cpt_diex_reg[2]_2 (\IP[7]_i_4_n_0 ),
        .fin_alea_diex_reg(pipdiex_n_4),
        .fin_alea_diex_reg_0(fin_alea_diex_reg_n_0),
        .gestion_alea_di_reg(piplidi_n_3),
        .gestion_alea_di_reg_0(gestion_alea_di_reg_n_0),
        .gestion_alea_di_reg_1(piplidi_n_22),
        .gestion_alea_diex_reg(pipdiex_n_18),
        .gestion_alea_diex_reg_0(gestion_alea_diex_reg_n_0),
        .minusOp(minusOp),
        .multOp(multOp[7:4]),
        .plusOp(plusOp));
  PipeLine_0 pipexmem
       (.\A_out_reg[3]_0 ({pipexmem_n_11,pipexmem_n_12,pipexmem_n_13}),
        .\A_out_reg[3]_1 ({pipdiex_n_35,pipdiex_n_36,pipdiex_n_37}),
        .\B_out_reg[7]_0 ({pipdiex_n_19,pipdiex_n_20,pipdiex_n_21,pipdiex_n_22,pipdiex_n_23,pipdiex_n_24,pipdiex_n_25,pipdiex_n_26}),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({pipexmem_n_0,pipexmem_n_1,pipexmem_n_2,pipexmem_n_3,pipexmem_n_4,pipexmem_n_5,pipexmem_n_6,pipexmem_n_7}),
        .\OP_out_reg[2]_0 (OP_out),
        .Q({pipexmem_n_8,pipexmem_n_9,pipexmem_n_10}));
  PipeLine_1 piplidi
       (.A_di(A_di),
        .A_di_alea1(A_di_alea1),
        .\A_out_reg[1]_0 (mem_ins_n_11),
        .\A_out_reg[3] (piplidi_n_1),
        .\B_out_reg[1]_0 (piplidi_n_19),
        .\B_out_reg[2]_0 (piplidi_n_20),
        .\B_out_reg[3]_0 ({piplidi_n_12,piplidi_n_13,piplidi_n_14,piplidi_n_15}),
        .\B_out_reg[3]_1 (piplidi_n_21),
        .\B_out_reg[7] (piplidi_n_22),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .C_out(C_out),
        .D({piplidi_n_6,piplidi_n_7,piplidi_n_8,piplidi_n_9,piplidi_n_10,piplidi_n_11}),
        .\IP_reg[2] (\IP[7]_i_8_n_0 ),
        .\IP_reg[2]_0 (\IP[4]_i_2_n_0 ),
        .\IP_reg[3] (\IP[5]_i_3_n_0 ),
        .\IP_reg[4] (\IP[5]_i_2_n_0 ),
        .\IP_reg[5] (\IP[7]_i_7_n_0 ),
        .\IP_reg[7] (IP__0),
        .\OP_out_reg[2]_0 (OP_di),
        .Q({A_li,B_li,C_li}),
        .Qa_OBUF(Qa_OBUF[3:0]),
        .RST_IBUF(RST_IBUF),
        .\Sort_reg[18] (mem_ins_n_0),
        .\Sort_reg[18]_0 (OP_li_alea),
        .\alea_cpt_di_reg[0] (piplidi_n_5),
        .\alea_cpt_di_reg[0]_0 (\alea_cpt_di_reg_n_0_[0] ),
        .\alea_cpt_di_reg[1] (piplidi_n_4),
        .\alea_cpt_di_reg[1]_0 (\alea_cpt_di_reg_n_0_[1] ),
        .\alea_cpt_di_reg[2] (piplidi_n_2),
        .\alea_cpt_di_reg[2]_0 (piplidi_n_3),
        .\alea_cpt_di_reg[2]_1 (\alea_cpt_di_reg_n_0_[2] ),
        .fin_alea_diex_reg(fin_alea_diex_reg_n_0),
        .gestion_alea_di_reg(piplidi_n_23),
        .gestion_alea_di_reg_0(gestion_alea_di_reg_n_0),
        .gestion_alea_diex_reg(pipdiex_n_1),
        .gestion_alea_diex_reg_0(gestion_alea_diex_reg_n_0));
  PipeLine_2 pipmemre
       (.\B_out_reg[7]_0 (pipmemre_n_2),
        .\B_out_reg[7]_1 (pipmemre_n_3),
        .\B_out_reg[7]_2 (pipmemre_n_4),
        .\B_out_reg[7]_3 (pipmemre_n_5),
        .\B_out_reg[7]_4 (pipmemre_n_6),
        .\B_out_reg[7]_5 (pipmemre_n_7),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\C_out_reg[7] (pipmemre_n_1),
        .D({pipexmem_n_11,pipexmem_n_12,pipexmem_n_13}),
        .E(pipmemre_n_0),
        .\OP_out_reg[2]_0 ({pipexmem_n_8,pipexmem_n_9,pipexmem_n_10}),
        .\OP_out_reg[2]_1 ({pipexmem_n_0,pipexmem_n_1,pipexmem_n_2,pipexmem_n_3,pipexmem_n_4,pipexmem_n_5,pipexmem_n_6,pipexmem_n_7}),
        .Q(B_re));
  ALU ual
       (.\B_out_reg[0] (pipdiex_n_66),
        .\B_out_reg[1] (pipdiex_n_64),
        .\B_out_reg[2] ({pipdiex_n_53,pipdiex_n_54,pipdiex_n_55,pipdiex_n_56}),
        .\B_out_reg[2]_0 ({pipdiex_n_60,pipdiex_n_61,pipdiex_n_62,pipdiex_n_63}),
        .\B_out_reg[2]_1 (pipdiex_n_71),
        .\B_out_reg[3] (ual_n_12),
        .\B_out_reg[3]_0 ({pipdiex_n_27,pipdiex_n_28,pipdiex_n_29,pipdiex_n_30}),
        .\B_out_reg[3]_1 ({pipdiex_n_76,pipdiex_n_77,pipdiex_n_78,pipdiex_n_79}),
        .\B_out_reg[3]_2 ({pipdiex_n_50,pipdiex_n_51,pipdiex_n_52}),
        .\B_out_reg[5] ({pipdiex_n_67,pipdiex_n_68,pipdiex_n_69,pipdiex_n_70}),
        .\B_out_reg[7] (multOp[7:4]),
        .\B_out_reg[7]_0 ({pipdiex_n_43,pipdiex_n_44,pipdiex_n_45,pipdiex_n_46}),
        .\C_out_reg[2] ({pipdiex_n_47,pipdiex_n_48,pipdiex_n_49}),
        .\C_out_reg[3] ({pipdiex_n_57,pipdiex_n_58,pipdiex_n_59}),
        .\C_out_reg[3]_0 ({pipdiex_n_72,pipdiex_n_73,pipdiex_n_74,pipdiex_n_75}),
        .\C_out_reg[6] (pipdiex_n_65),
        .D({pipdiex_n_5,pipdiex_n_6,pipdiex_n_7,pipdiex_n_8,pipdiex_n_9,pipdiex_n_10,pipdiex_n_11,pipdiex_n_12}),
        .DI({pipdiex_n_33,pipdiex_n_32,pipdiex_n_31}),
        .E(pipdiex_n_34),
        .O({ual_n_8,multOp[2:0]}),
        .Q(S),
        .S({pipdiex_n_39,pipdiex_n_40,pipdiex_n_41,pipdiex_n_42}),
        .minusOp(minusOp),
        .plusOp(plusOp));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 23 17:09:44 2020
// Host        : bs0309 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/alumno/Desktop/Practica2/Practica2/PS2/PS2.sim/sim_1/impl/func/xsim/Interfaz_ps2_TB_func_impl.v
// Design      : interfaz_ps2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Biestable_ps2_data
   (D,
    ps2_data_IBUF,
    clk_IBUF_BUFG,
    reset_IBUF);
  output [0:0]D;
  input ps2_data_IBUF;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire [0:0]D;
  wire clk_IBUF_BUFG;
  wire ps2_data_IBUF;
  wire reset_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(ps2_data_IBUF),
        .Q(D));
endmodule

module Detector_paridad
   (parity_err_ant_reg_0,
    compro_parity,
    parity_err_ant_reg_1,
    \t_q_shift_reg[6] ,
    \t_q_shift_reg[2] ,
    clk_IBUF_BUFG,
    compro_parity_reg_0,
    \t_estado_reg[0] ,
    parity_err_ant_reg_2,
    Q,
    entrada_s_aux,
    parity_err_ant_reg_3,
    parity_err_ant_reg_4,
    reset_IBUF);
  output parity_err_ant_reg_0;
  output compro_parity;
  output [1:0]parity_err_ant_reg_1;
  output \t_q_shift_reg[6] ;
  output \t_q_shift_reg[2] ;
  input clk_IBUF_BUFG;
  input compro_parity_reg_0;
  input \t_estado_reg[0] ;
  input parity_err_ant_reg_2;
  input [2:0]Q;
  input entrada_s_aux;
  input parity_err_ant_reg_3;
  input [8:0]parity_err_ant_reg_4;
  input reset_IBUF;

  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire compro_parity;
  wire compro_parity_reg_0;
  wire entrada_s_aux;
  wire parity_err_ant_i_1_n_0;
  wire parity_err_ant_reg_0;
  wire [1:0]parity_err_ant_reg_1;
  wire parity_err_ant_reg_2;
  wire parity_err_ant_reg_3;
  wire [8:0]parity_err_ant_reg_4;
  wire reset_IBUF;
  wire \t_estado_reg[0] ;
  wire \t_q_shift_reg[2] ;
  wire \t_q_shift_reg[6] ;

  LUT4 #(
    .INIT(16'h6996)) 
    compro_parity_i_2
       (.I0(parity_err_ant_reg_4[6]),
        .I1(parity_err_ant_reg_4[5]),
        .I2(parity_err_ant_reg_4[0]),
        .I3(parity_err_ant_reg_4[7]),
        .O(\t_q_shift_reg[6] ));
  LUT4 #(
    .INIT(16'h6996)) 
    compro_parity_i_3
       (.I0(parity_err_ant_reg_4[2]),
        .I1(parity_err_ant_reg_4[1]),
        .I2(parity_err_ant_reg_4[4]),
        .I3(parity_err_ant_reg_4[3]),
        .O(\t_q_shift_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    compro_parity_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(compro_parity_reg_0),
        .Q(compro_parity),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000008ABABA8A)) 
    parity_err_ant_i_1
       (.I0(parity_err_ant_reg_0),
        .I1(parity_err_ant_reg_2),
        .I2(parity_err_ant_reg_3),
        .I3(parity_err_ant_reg_4[8]),
        .I4(compro_parity),
        .I5(reset_IBUF),
        .O(parity_err_ant_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    parity_err_ant_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(parity_err_ant_i_1_n_0),
        .Q(parity_err_ant_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCEEFCCC)) 
    \t_estado[0]_i_1 
       (.I0(parity_err_ant_reg_0),
        .I1(\t_estado_reg[0] ),
        .I2(parity_err_ant_reg_2),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(parity_err_ant_reg_1[0]));
  LUT6 #(
    .INIT(64'h00000A0000000A30)) 
    \t_estado[1]_i_1 
       (.I0(parity_err_ant_reg_0),
        .I1(parity_err_ant_reg_2),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(entrada_s_aux),
        .O(parity_err_ant_reg_1[1]));
endmodule

module Maquina_estados
   (D,
    Q,
    E,
    t_q,
    \t_estado_reg[0]_0 ,
    \t_estado_reg[2]_0 ,
    \t_estado_reg[1]_0 ,
    ps2_data_sync,
    \t_q_reg[0] ,
    CLK,
    parity_err_ant,
    entrada_s_aux,
    clk_IBUF_BUFG,
    reset_IBUF,
    \t_estado_reg[1]_1 );
  output [0:0]D;
  output [2:0]Q;
  output [0:0]E;
  output t_q;
  output \t_estado_reg[0]_0 ;
  output \t_estado_reg[2]_0 ;
  output \t_estado_reg[1]_0 ;
  input ps2_data_sync;
  input [0:0]\t_q_reg[0] ;
  input CLK;
  input parity_err_ant;
  input entrada_s_aux;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [1:0]\t_estado_reg[1]_1 ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire entrada_s_aux;
  wire parity_err_ant;
  wire ps2_data_sync;
  wire reset_IBUF;
  wire \t_estado_reg[0]_0 ;
  wire \t_estado_reg[1]_0 ;
  wire [1:0]\t_estado_reg[1]_1 ;
  wire \t_estado_reg[2]_0 ;
  wire t_q;
  wire [0:0]\t_q_reg[0] ;

  LUT2 #(
    .INIT(4'h1)) 
    busy_OBUF_inst_i_3
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\t_estado_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    parity_err_ant_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(entrada_s_aux),
        .O(\t_estado_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \t_estado_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\t_estado_reg[1]_1 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \t_estado_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\t_estado_reg[1]_1 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \t_estado_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(E),
        .Q(Q[2]));
  LUT6 #(
    .INIT(64'h0000020300000202)) 
    \t_q[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(ps2_data_sync),
        .I4(\t_q_reg[0] ),
        .I5(CLK),
        .O(D));
  LUT3 #(
    .INIT(8'h10)) 
    \t_q[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\t_estado_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    t_q_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(parity_err_ant),
        .O(t_q));
  LUT4 #(
    .INIT(16'h0004)) 
    txd_data_valid_OBUF_inst_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(parity_err_ant),
        .O(E));
endmodule

module Reg
   (\t_q_reg[7]_0 ,
    \t_q_reg[0]_0 ,
    Q,
    clk_IBUF_BUFG,
    reset_IBUF);
  output [7:0]\t_q_reg[7]_0 ;
  input [0:0]\t_q_reg[0]_0 ;
  input [7:0]Q;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire reset_IBUF;
  wire [0:0]\t_q_reg[0]_0 ;
  wire [7:0]\t_q_reg[7]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \t_q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_q_reg[0]_0 ),
        .CLR(reset_IBUF),
        .D(Q[0]),
        .Q(\t_q_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \t_q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_q_reg[0]_0 ),
        .CLR(reset_IBUF),
        .D(Q[1]),
        .Q(\t_q_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \t_q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_q_reg[0]_0 ),
        .CLR(reset_IBUF),
        .D(Q[2]),
        .Q(\t_q_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \t_q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_q_reg[0]_0 ),
        .CLR(reset_IBUF),
        .D(Q[3]),
        .Q(\t_q_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \t_q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_q_reg[0]_0 ),
        .CLR(reset_IBUF),
        .D(Q[4]),
        .Q(\t_q_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \t_q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_q_reg[0]_0 ),
        .CLR(reset_IBUF),
        .D(Q[5]),
        .Q(\t_q_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \t_q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_q_reg[0]_0 ),
        .CLR(reset_IBUF),
        .D(Q[6]),
        .Q(\t_q_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \t_q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_q_reg[0]_0 ),
        .CLR(reset_IBUF),
        .D(Q[7]),
        .Q(\t_q_reg[7]_0 [7]));
endmodule

module Reg_parity
   (parity_err_OBUF,
    t_q,
    clk_IBUF_BUFG,
    reset_IBUF);
  output parity_err_OBUF;
  input t_q;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire clk_IBUF_BUFG;
  wire parity_err_OBUF;
  wire reset_IBUF;
  wire t_q;

  FDCE #(
    .INIT(1'b0)) 
    t_q_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(t_q),
        .Q(parity_err_OBUF));
endmodule

module Unidad_Operativa
   (ps2_data_sync,
    entrada_s_aux,
    parity_err_OBUF,
    parity_err_ant,
    CLK,
    parity_err_ant_reg,
    \t_q_reg[0] ,
    E,
    \t_q_reg[7] ,
    ps2_data_IBUF,
    clk_IBUF_BUFG,
    reset_IBUF,
    ps2_clk_IBUF,
    t_q,
    Q,
    \t_q_reg[1] ,
    \t_q_shift_reg[8] ,
    compro_parity_reg,
    D,
    \t_q_reg[0]_0 );
  output ps2_data_sync;
  output entrada_s_aux;
  output parity_err_OBUF;
  output parity_err_ant;
  output CLK;
  output [1:0]parity_err_ant_reg;
  output [0:0]\t_q_reg[0] ;
  output [0:0]E;
  output [7:0]\t_q_reg[7] ;
  input ps2_data_IBUF;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input ps2_clk_IBUF;
  input t_q;
  input [2:0]Q;
  input \t_q_reg[1] ;
  input \t_q_shift_reg[8] ;
  input compro_parity_reg;
  input [0:0]D;
  input [0:0]\t_q_reg[0]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire compro_parity;
  wire compro_parity_reg;
  wire entrada_s_aux;
  wire entrada_t_1;
  wire inst_contador_estados_n_0;
  wire inst_detector_flancos_n_4;
  wire inst_detector_paridad_n_4;
  wire inst_detector_paridad_n_5;
  wire inst_reg_desplaza_n_0;
  wire parity_err_OBUF;
  wire parity_err_ant;
  wire [1:0]parity_err_ant_reg;
  wire ps2_clk_IBUF;
  wire ps2_data_IBUF;
  wire ps2_data_sync;
  wire [8:0]q_shift;
  wire reset_IBUF;
  wire t_q;
  wire [0:0]\t_q_reg[0] ;
  wire [0:0]\t_q_reg[0]_0 ;
  wire \t_q_reg[1] ;
  wire [7:0]\t_q_reg[7] ;
  wire \t_q_shift_reg[8] ;

  Biestable_ps2_data inst_biestable_ps2_data
       (.D(ps2_data_sync),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ps2_data_IBUF(ps2_data_IBUF),
        .reset_IBUF(reset_IBUF));
  contador_estados inst_contador_estados
       (.D(D),
        .Q(Q),
        .entrada_t_1(entrada_t_1),
        .reset_IBUF(reset_IBUF),
        .\t_q_reg[0]_0 (inst_contador_estados_n_0),
        .\t_q_reg[0]_1 (\t_q_reg[0] ),
        .\t_q_reg[1]_0 (\t_q_reg[1] ),
        .\t_q_reg[3]_0 (inst_detector_flancos_n_4),
        .\t_q_reg[3]_1 (CLK));
  detector_flancos inst_detector_flancos
       (.D(ps2_data_sync),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .entrada_s_aux_reg_0(entrada_s_aux),
        .entrada_t_1(entrada_t_1),
        .entrada_t_1_reg_0(CLK),
        .ps2_clk_IBUF(ps2_clk_IBUF),
        .q_reg(inst_detector_flancos_n_4),
        .reset_IBUF(reset_IBUF),
        .\t_q_shift_reg[8] (inst_contador_estados_n_0),
        .\t_q_shift_reg[8]_0 (\t_q_shift_reg[8] ));
  Detector_paridad inst_detector_paridad
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .compro_parity(compro_parity),
        .compro_parity_reg_0(inst_reg_desplaza_n_0),
        .entrada_s_aux(entrada_s_aux),
        .parity_err_ant_reg_0(parity_err_ant),
        .parity_err_ant_reg_1(parity_err_ant_reg),
        .parity_err_ant_reg_2(inst_contador_estados_n_0),
        .parity_err_ant_reg_3(compro_parity_reg),
        .parity_err_ant_reg_4(q_shift),
        .reset_IBUF(reset_IBUF),
        .\t_estado_reg[0] (inst_detector_flancos_n_4),
        .\t_q_shift_reg[2] (inst_detector_paridad_n_5),
        .\t_q_shift_reg[6] (inst_detector_paridad_n_4));
  Reg inst_reg
       (.Q(q_shift[7:0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .\t_q_reg[0]_0 (\t_q_reg[0]_0 ),
        .\t_q_reg[7]_0 (\t_q_reg[7] ));
  reg_desplazamiento inst_reg_desplaza
       (.E(E),
        .Q(q_shift),
        .compro_parity(compro_parity),
        .compro_parity_reg(inst_reg_desplaza_n_0),
        .compro_parity_reg_0(inst_contador_estados_n_0),
        .compro_parity_reg_1(compro_parity_reg),
        .compro_parity_reg_2(inst_detector_paridad_n_4),
        .compro_parity_reg_3(inst_detector_paridad_n_5),
        .ps2_data_sync(ps2_data_sync),
        .reset_IBUF(reset_IBUF),
        .\t_q_shift_reg[8]_0 (CLK));
  Reg_parity inst_reg_parity
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .parity_err_OBUF(parity_err_OBUF),
        .reset_IBUF(reset_IBUF),
        .t_q(t_q));
endmodule

module contador_estados
   (\t_q_reg[0]_0 ,
    \t_q_reg[0]_1 ,
    \t_q_reg[3]_0 ,
    Q,
    \t_q_reg[1]_0 ,
    entrada_t_1,
    reset_IBUF,
    \t_q_reg[3]_1 ,
    D);
  output \t_q_reg[0]_0 ;
  output [0:0]\t_q_reg[0]_1 ;
  input \t_q_reg[3]_0 ;
  input [2:0]Q;
  input \t_q_reg[1]_0 ;
  input entrada_t_1;
  input reset_IBUF;
  input \t_q_reg[3]_1 ;
  input [0:0]D;

  wire [0:0]D;
  wire [2:0]Q;
  wire entrada_t_1;
  wire reset_IBUF;
  wire [3:1]t_contador;
  wire \t_q[1]_i_1_n_0 ;
  wire \t_q[2]_i_1_n_0 ;
  wire \t_q[3]_i_1_n_0 ;
  wire \t_q[3]_i_2_n_0 ;
  wire \t_q_reg[0]_0 ;
  wire [0:0]\t_q_reg[0]_1 ;
  wire \t_q_reg[1]_0 ;
  wire \t_q_reg[3]_0 ;
  wire \t_q_reg[3]_1 ;

  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    busy_OBUF_inst_i_2
       (.I0(\t_q_reg[0]_1 ),
        .I1(t_contador[3]),
        .I2(entrada_t_1),
        .I3(t_contador[2]),
        .I4(t_contador[1]),
        .O(\t_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00EAEA00)) 
    \t_q[1]_i_1 
       (.I0(\t_q_reg[3]_0 ),
        .I1(\t_q_reg[0]_0 ),
        .I2(\t_q_reg[1]_0 ),
        .I3(t_contador[1]),
        .I4(\t_q_reg[0]_1 ),
        .O(\t_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EAEA00EA00EA00)) 
    \t_q[2]_i_1 
       (.I0(\t_q_reg[3]_0 ),
        .I1(\t_q_reg[0]_0 ),
        .I2(\t_q_reg[1]_0 ),
        .I3(t_contador[2]),
        .I4(\t_q_reg[0]_1 ),
        .I5(t_contador[1]),
        .O(\t_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEA00000000)) 
    \t_q[3]_i_1 
       (.I0(\t_q_reg[3]_0 ),
        .I1(\t_q_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\t_q[3]_i_2_n_0 ),
        .O(\t_q[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \t_q[3]_i_2 
       (.I0(\t_q_reg[0]_1 ),
        .I1(t_contador[1]),
        .I2(t_contador[2]),
        .I3(t_contador[3]),
        .O(\t_q[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_reg[0] 
       (.C(\t_q_reg[3]_1 ),
        .CE(1'b1),
        .D(D),
        .Q(\t_q_reg[0]_1 ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_reg[1] 
       (.C(\t_q_reg[3]_1 ),
        .CE(1'b1),
        .D(\t_q[1]_i_1_n_0 ),
        .Q(t_contador[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_reg[2] 
       (.C(\t_q_reg[3]_1 ),
        .CE(1'b1),
        .D(\t_q[2]_i_1_n_0 ),
        .Q(t_contador[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_reg[3] 
       (.C(\t_q_reg[3]_1 ),
        .CE(1'b1),
        .D(\t_q[3]_i_1_n_0 ),
        .Q(t_contador[3]),
        .R(reset_IBUF));
endmodule

module detector_flancos
   (entrada_s_aux_reg_0,
    entrada_t_1,
    entrada_t_1_reg_0,
    E,
    q_reg,
    ps2_clk_IBUF,
    clk_IBUF_BUFG,
    reset_IBUF,
    \t_q_shift_reg[8] ,
    Q,
    \t_q_shift_reg[8]_0 ,
    D);
  output entrada_s_aux_reg_0;
  output entrada_t_1;
  output entrada_t_1_reg_0;
  output [0:0]E;
  output q_reg;
  input ps2_clk_IBUF;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input \t_q_shift_reg[8] ;
  input [2:0]Q;
  input \t_q_shift_reg[8]_0 ;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire entrada_s_aux_reg_0;
  wire entrada_t_1;
  wire entrada_t_1_reg_0;
  wire ps2_clk_IBUF;
  wire q_reg;
  wire reset_IBUF;
  wire \t_q_shift_reg[8] ;
  wire \t_q_shift_reg[8]_0 ;

  LUT6 #(
    .INIT(64'hC080C080C0B0C080)) 
    busy_OBUF_inst_i_1
       (.I0(\t_q_shift_reg[8] ),
        .I1(Q[0]),
        .I2(\t_q_shift_reg[8]_0 ),
        .I3(entrada_s_aux_reg_0),
        .I4(entrada_t_1),
        .I5(D),
        .O(E));
  FDCE #(
    .INIT(1'b0)) 
    entrada_s_aux_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(ps2_clk_IBUF),
        .Q(entrada_s_aux_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    entrada_t_1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(entrada_s_aux_reg_0),
        .Q(entrada_t_1));
  LUT6 #(
    .INIT(64'h000000F000000004)) 
    \t_estado[0]_i_2 
       (.I0(D),
        .I1(entrada_t_1),
        .I2(entrada_s_aux_reg_0),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(q_reg));
  LUT2 #(
    .INIT(4'h2)) 
    \t_q_shift[8]_i_1 
       (.I0(entrada_t_1),
        .I1(entrada_s_aux_reg_0),
        .O(entrada_t_1_reg_0));
endmodule

(* ECO_CHECKSUM = "423bbfc9" *) 
(* NotValidForBitStream *)
module interfaz_ps2
   (clk,
    reset,
    busy,
    ps2_clk,
    ps2_data,
    parity_err,
    txd_data,
    txd_data_valid);
  input clk;
  input reset;
  output busy;
  input ps2_clk;
  input ps2_data;
  output parity_err;
  output [7:0]txd_data;
  output txd_data_valid;

  wire busy;
  wire busy_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire fd_ps2_clk;
  wire \inst_detector_flancos/entrada_s_aux ;
  wire inst_maquina_estados_n_0;
  wire inst_maquina_estados_n_6;
  wire inst_maquina_estados_n_7;
  wire inst_maquina_estados_n_8;
  wire \inst_reg_parity/t_q ;
  wire [1:0]next_estado;
  wire parity_err;
  wire parity_err_OBUF;
  wire parity_err_ant;
  wire ps2_clk;
  wire ps2_clk_IBUF;
  wire ps2_data;
  wire ps2_data_IBUF;
  wire ps2_data_sync;
  wire reset;
  wire reset_IBUF;
  wire [0:0]t_contador;
  wire [2:0]t_estado;
  wire [7:0]txd_data;
  wire [7:0]txd_data_OBUF;
  wire txd_data_valid;
  wire txd_data_valid_OBUF;

  OBUF busy_OBUF_inst
       (.I(busy_OBUF),
        .O(busy));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  Maquina_estados inst_maquina_estados
       (.CLK(fd_ps2_clk),
        .D(inst_maquina_estados_n_0),
        .E(txd_data_valid_OBUF),
        .Q(t_estado),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .entrada_s_aux(\inst_detector_flancos/entrada_s_aux ),
        .parity_err_ant(parity_err_ant),
        .ps2_data_sync(ps2_data_sync),
        .reset_IBUF(reset_IBUF),
        .\t_estado_reg[0]_0 (inst_maquina_estados_n_6),
        .\t_estado_reg[1]_0 (inst_maquina_estados_n_8),
        .\t_estado_reg[1]_1 (next_estado),
        .\t_estado_reg[2]_0 (inst_maquina_estados_n_7),
        .t_q(\inst_reg_parity/t_q ),
        .\t_q_reg[0] (t_contador));
  Unidad_Operativa inst_unidad_operativa
       (.CLK(fd_ps2_clk),
        .D(inst_maquina_estados_n_0),
        .E(busy_OBUF),
        .Q(t_estado),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .compro_parity_reg(inst_maquina_estados_n_6),
        .entrada_s_aux(\inst_detector_flancos/entrada_s_aux ),
        .parity_err_OBUF(parity_err_OBUF),
        .parity_err_ant(parity_err_ant),
        .parity_err_ant_reg(next_estado),
        .ps2_clk_IBUF(ps2_clk_IBUF),
        .ps2_data_IBUF(ps2_data_IBUF),
        .ps2_data_sync(ps2_data_sync),
        .reset_IBUF(reset_IBUF),
        .t_q(\inst_reg_parity/t_q ),
        .\t_q_reg[0] (t_contador),
        .\t_q_reg[0]_0 (txd_data_valid_OBUF),
        .\t_q_reg[1] (inst_maquina_estados_n_7),
        .\t_q_reg[7] (txd_data_OBUF),
        .\t_q_shift_reg[8] (inst_maquina_estados_n_8));
  OBUF parity_err_OBUF_inst
       (.I(parity_err_OBUF),
        .O(parity_err));
  IBUF ps2_clk_IBUF_inst
       (.I(ps2_clk),
        .O(ps2_clk_IBUF));
  IBUF ps2_data_IBUF_inst
       (.I(ps2_data),
        .O(ps2_data_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \txd_data_OBUF[0]_inst 
       (.I(txd_data_OBUF[0]),
        .O(txd_data[0]));
  OBUF \txd_data_OBUF[1]_inst 
       (.I(txd_data_OBUF[1]),
        .O(txd_data[1]));
  OBUF \txd_data_OBUF[2]_inst 
       (.I(txd_data_OBUF[2]),
        .O(txd_data[2]));
  OBUF \txd_data_OBUF[3]_inst 
       (.I(txd_data_OBUF[3]),
        .O(txd_data[3]));
  OBUF \txd_data_OBUF[4]_inst 
       (.I(txd_data_OBUF[4]),
        .O(txd_data[4]));
  OBUF \txd_data_OBUF[5]_inst 
       (.I(txd_data_OBUF[5]),
        .O(txd_data[5]));
  OBUF \txd_data_OBUF[6]_inst 
       (.I(txd_data_OBUF[6]),
        .O(txd_data[6]));
  OBUF \txd_data_OBUF[7]_inst 
       (.I(txd_data_OBUF[7]),
        .O(txd_data[7]));
  OBUF txd_data_valid_OBUF_inst
       (.I(txd_data_valid_OBUF),
        .O(txd_data_valid));
endmodule

module reg_desplazamiento
   (compro_parity_reg,
    Q,
    compro_parity,
    compro_parity_reg_0,
    compro_parity_reg_1,
    compro_parity_reg_2,
    compro_parity_reg_3,
    reset_IBUF,
    E,
    ps2_data_sync,
    \t_q_shift_reg[8]_0 );
  output compro_parity_reg;
  output [8:0]Q;
  input compro_parity;
  input compro_parity_reg_0;
  input compro_parity_reg_1;
  input compro_parity_reg_2;
  input compro_parity_reg_3;
  input reset_IBUF;
  input [0:0]E;
  input ps2_data_sync;
  input \t_q_shift_reg[8]_0 ;

  wire [0:0]E;
  wire [8:0]Q;
  wire compro_parity;
  wire compro_parity_reg;
  wire compro_parity_reg_0;
  wire compro_parity_reg_1;
  wire compro_parity_reg_2;
  wire compro_parity_reg_3;
  wire ps2_data_sync;
  wire reset_IBUF;
  wire \t_q_shift_reg[8]_0 ;

  LUT6 #(
    .INIT(64'h000000008ABABA8A)) 
    compro_parity_i_1
       (.I0(compro_parity),
        .I1(compro_parity_reg_0),
        .I2(compro_parity_reg_1),
        .I3(compro_parity_reg_2),
        .I4(compro_parity_reg_3),
        .I5(reset_IBUF),
        .O(compro_parity_reg));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_shift_reg[0] 
       (.C(\t_q_shift_reg[8]_0 ),
        .CE(E),
        .D(Q[1]),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_shift_reg[1] 
       (.C(\t_q_shift_reg[8]_0 ),
        .CE(E),
        .D(Q[2]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_shift_reg[2] 
       (.C(\t_q_shift_reg[8]_0 ),
        .CE(E),
        .D(Q[3]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_shift_reg[3] 
       (.C(\t_q_shift_reg[8]_0 ),
        .CE(E),
        .D(Q[4]),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_shift_reg[4] 
       (.C(\t_q_shift_reg[8]_0 ),
        .CE(E),
        .D(Q[5]),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_shift_reg[5] 
       (.C(\t_q_shift_reg[8]_0 ),
        .CE(E),
        .D(Q[6]),
        .Q(Q[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_shift_reg[6] 
       (.C(\t_q_shift_reg[8]_0 ),
        .CE(E),
        .D(Q[7]),
        .Q(Q[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_shift_reg[7] 
       (.C(\t_q_shift_reg[8]_0 ),
        .CE(E),
        .D(Q[8]),
        .Q(Q[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_q_shift_reg[8] 
       (.C(\t_q_shift_reg[8]_0 ),
        .CE(E),
        .D(ps2_data_sync),
        .Q(Q[8]),
        .R(reset_IBUF));
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

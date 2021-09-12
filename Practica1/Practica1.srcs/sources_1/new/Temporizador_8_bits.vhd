----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.09.2020 14:33:37
-- Design Name: 
-- Module Name: Temporizador_8_bits - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Temporizador_8_bits is
    Port ( reset : in STD_LOGIC;
           clk_micro : in STD_LOGIC;
           clk_ext : in STD_LOGIC;
           load_control : in STD_LOGIC;
           load_recarga : in STD_LOGIC;
           control : in STD_LOGIC_VECTOR (7 downto 0);
           recarga : in STD_LOGIC_VECTOR (7 downto 0);
           overflow : out STD_LOGIC;
           salida_temp : out STD_LOGIC_VECTOR (7 downto 0));
end Temporizador_8_bits;

architecture Behavioral of Temporizador_8_bits is

signal fa_clk_ext : std_logic :='0';
signal mux_ce_timer : std_logic :='0';
signal ce_timer : std_logic :='0';
signal reset_aux : std_logic :='0';
signal load_timer_aux : std_logic :='0';
signal load_timer : std_logic :='0';
signal load_recarga_aux : std_logic :='0';
signal recarga_reg : std_logic_vector(7 downto 0) :="00000000";
signal int_reset : std_logic :='0';
signal modo_funcionamiento : std_logic_vector (7 downto 0) :="00000000";
signal c_t: std_logic :='0';
signal int_ce: std_logic :='0';
signal reload: std_logic :='0';
signal t_overflow :std_logic:='0';

component D_flip_flop
    Port ( clk : in STD_LOGIC;
           d : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end component;

component contador_descendente
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           load : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR (7 downto 0);
           tc : out STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component detector_flancos
    Port ( entrada : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           fa_entrada : out STD_LOGIC;
           fd_entrada : out STD_LOGIC);
end component;

component mux_2c_1b
    Port ( sel : in STD_LOGIC;
           d0 : in STD_LOGIC;
           d1 : in STD_LOGIC;
           q : out STD_LOGIC);
end component;

component registro_contol
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           d : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component registro_recarga 
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           d : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end component;

begin

    overflow<=t_overflow;

    inst_D_flip_flop: D_flip_flop 
        port map (clk=>clk_micro,
                  d=>load_recarga,
                  reset=>reset);
                  
    inst_contador_descendente: contador_descendente
        port map (clk=>clk_micro,
                  reset=>reset_aux,
                  ce=>ce_timer,
                  load=>load_timer,
                  din=>recarga_reg,
                  tc=>t_overflow,
                  q=>salida_temp);
                  
    inst_detector_flancos: detector_flancos
        port map (entrada=>clk_ext,
                  clk=>clk_micro,
                  reset=>reset,
                  fa_entrada=>fa_clk_ext);
                  
    inst_mux_2c_1b: mux_2c_1b
        port map (sel=>c_t,
                  d0=>'1',
                  d1=>fa_clk_ext,
                  q=>mux_ce_timer);
                  
    inst_registro_control: registro_contol
        port map (clk=>clk_micro,
                  reset=>reset,
                  ce=>load_control,
                  d=>control,
                  q=>modo_funcionamiento);
                  
    inst_registro_recarga: registro_recarga
        port map (clk=>clk_micro,
                  reset=>reset,
                  ce=>load_recarga,
                  d=>recarga,
                  q=>recarga_reg);
    
    int_reset<=modo_funcionamiento(3);
    reload<=modo_funcionamiento(2);
    int_ce<=modo_funcionamiento(1);
    c_t<=modo_funcionamiento(0);
    
    ce_timer<=mux_ce_timer and int_ce;
    reset_aux<= reset or int_reset;
    load_timer_aux<=ce_timer and t_overflow and reload;
    load_timer<=load_timer_aux or load_recarga_aux;
    
    --overflow<=t_overflow;
    
end Behavioral;

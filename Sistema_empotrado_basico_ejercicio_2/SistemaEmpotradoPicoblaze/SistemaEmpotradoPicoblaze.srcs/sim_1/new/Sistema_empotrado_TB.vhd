----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2020 10:25:56
-- Design Name: 
-- Module Name: Sistema_empotrado_TB - Behavioral
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

entity Sistema_empotrado_TB is
--  Port ( );
end Sistema_empotrado_TB;

architecture Behavioral of Sistema_empotrado_TB is

component Sistema_empotrado is
    Port ( Interrup_mayor_peso : in STD_LOGIC_VECTOR (7 downto 0);
           Interrup_menor_peso : in STD_LOGIC_VECTOR (7 downto 0);
           BTNC : in STD_LOGIC;
          -- Botones : in STD_LOGIC_VECTOR (7 downto 0);
           BTNL :in STD_LOGIC;
           BTNR :in STD_LOGIC;
           BTND :in STD_LOGIC;
           BTNU :in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           LEDs_menor_peso : out STD_LOGIC_VECTOR (7 downto 0);
           LEDs_mayor_peso : out STD_LOGIC_VECTOR (7 downto 0);
           A : out STD_LOGIC;
           B : out STD_LOGIC;
           C : out STD_LOGIC;
           D : out STD_LOGIC;
           E : out STD_LOGIC;
           F : out STD_LOGIC;
           G : out STD_LOGIC;
           DP : out STD_LOGIC;
           an0 : out STD_LOGIC;
           an1 : out STD_LOGIC;
           an2 : out STD_LOGIC;
           an3 : out STD_LOGIC;
           an4 : out STD_LOGIC;
           an5 : out STD_LOGIC;
           an6 : out STD_LOGIC;
           an7 : out STD_LOGIC;
           out_uart232 : out STD_LOGIC;
           uart_full : out STD_LOGIC);
end component;

signal Interrup_mayor_peso,Interrup_menor_peso,LEDs_menor_peso,LEDs_mayor_peso : std_logic_vector(7 downto 0) :="00000000";
signal Botones:std_logic_vector (7 downto 0) :="00000000";
signal BTNC,BTNU,BTNR,BTNL,BTND,reset,clk,A,B,C,D,E,F,G,DP,an0,an1,an2,an3,an4,an5,an6,an7,out_uart232,uart_full:std_logic:='0';

constant clk_period :time :=10ns;

begin

Inst_Sistema_empotrado: Sistema_empotrado
        Port Map(Interrup_mayor_peso=>Interrup_mayor_peso,
                 Interrup_menor_peso=>Interrup_menor_peso,
                 BTNC=>BTNC,
                 --Botones=>Botones,
                 BTNL =>BTNL,
                 BTNR =>BTNR,
                 BTND =>BTND,
                 BTNU =>BTNU,
                 clk=>clk,
                 reset=>reset,
                 LEDs_mayor_peso=>LEDs_mayor_peso,
                 LEDs_menor_peso=>LEDs_menor_peso,
                 A=>A,
                 B=>B,
                 C=>C,
                 D=>D,
                 E=>E,
                 F=>F,
                 G=>G,
                 DP=>DP,
                 an0=>an0,
                 an1=>an1,
                 an2=>an2,
                 an3=>an3,
                 an4=>an4,
                 an5=>an5,
                 an6=>an6,
                 an7=>an7,
                 out_uart232=>out_uart232,
                 uart_full=>uart_full
                 );

proceso_clk:process
begin

    clk<='1';
    wait for clk_period/2;
    clk<='0';
    wait for clk_period/2;

end process;


process
begin

reset<='0';
wait for 2*clk_period;

reset<='1';
wait for 200 ns;

-- Repetir activacion de BTNC 3 veces

BTNC<='1';
wait for 1 ms;

BTNC<='0';
wait for 1 ms;

BTNC<='1';
wait for 1 ms;

BTNC<='0';
wait for 1 ms;

BTNC<='1';
wait for 1 ms;

BTNC<='0';
wait for 1 ms;

----------------------------------

Interrup_mayor_peso<="01010101";
wait for 1 ms;

Interrup_mayor_peso<="00000000";
wait for 1 ms;

Interrup_menor_peso<="00000011";
wait for 1 ms;

Interrup_menor_peso<="00000000";
wait for 1 ms;


wait for 4 ms;

BTNL<='1';
wait for 1 ms;

BTNL<='0';
wait for 1 ms;

wait for 7 ms;

BTND<='1';
wait for 1 ms;

BTND<='1';
wait for 1 ms;

wait for 7 ms;




end process;

end Behavioral;

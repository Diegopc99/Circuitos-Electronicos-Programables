----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 10:42:01
-- Design Name: 
-- Module Name: TB_Sistem_Empotrado - Behavioral
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

entity TB_Sistem_Empotrado is
--  Port ( );
end TB_Sistem_Empotrado;

architecture Behavioral of TB_Sistem_Empotrado is

component Sistema_empotrado is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ps2_clk : in STD_LOGIC;
           ps2_data : in STD_LOGIC;
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
           an7 : out STD_LOGIC);
end component;

signal LEDs_menor_peso,LEDs_mayor_peso : std_logic_vector(7 downto 0) :="00000000";
signal reset,clk,A,B,C,D,E,F,G,DP,an0,an1,an2,an3,an4,an5,an6,an7,ps2_data,ps2_clk:std_logic:='0';

constant clk_period :time :=10ns;
constant ps2_clk_period: time :=100 us;

begin

Inst_Sistema_empotrado: Sistema_empotrado
        Port Map(clk=>clk,
                 reset=>reset,
                 ps2_data=>ps2_data,
                 ps2_clk=>ps2_clk,
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
                 an7=>an7
                 );

proceso_clk:process
begin

    clk<='1';
    wait for clk_period/2;
    clk<='0';
    wait for clk_period/2;

end process;

proceso_ps2_clk:process
begin

    ps2_clk<='1';
    wait for ps2_clk_period/2;
    ps2_clk<='0';
    wait for ps2_clk_period/2;

end process;


process 
begin

reset<='0';

--Primera serie (F1 = 05) 00000101

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';  
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;


---Segunda serie    (F2 = 06) 00000110

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;


--Tercera serie     (Q = 16)    00010110

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;


wait;


end process;


end Behavioral;

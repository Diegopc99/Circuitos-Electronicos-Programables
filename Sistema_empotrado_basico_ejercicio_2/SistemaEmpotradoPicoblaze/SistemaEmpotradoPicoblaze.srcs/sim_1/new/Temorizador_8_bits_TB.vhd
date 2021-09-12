----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2020 11:34:18
-- Design Name: 
-- Module Name: Temorizador_8_bits_TB - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_ARITH.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Temorizador_8_bits_TB is
--  Port ( );
end Temorizador_8_bits_TB;

architecture Behavioral of Temorizador_8_bits_TB is

component Temporizador_8_bits is
    Port ( reset : in STD_LOGIC;
           clk_micro : in STD_LOGIC;
           clk_ext : in STD_LOGIC;
           load_control : in STD_LOGIC;
           load_recarga : in STD_LOGIC;
           control : in STD_LOGIC_VECTOR (7 downto 0);
           recarga : in STD_LOGIC_VECTOR (7 downto 0);
           overflow : out STD_LOGIC;
           salida_temp : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal reset:std_logic;
signal clk_micro:std_logic;
signal clk_ext:std_logic;
signal load_control:std_logic;
signal load_recarga:std_logic;
signal control: std_logic_vector(7 downto 0);
signal recarga: std_logic_vector(7 downto 0);
signal overflow:std_logic:='0';
signal salida_temp:std_logic_vector(7 downto 0);

constant clk_micro_period : time:= 10 ns;
constant clk_ext_period : time := 100 ns;

begin

TB_Temporizador_8_bits: Temporizador_8_bits
        port map(reset=>reset,
                 clk_micro=>clk_micro,
                 clk_ext=>clk_ext,
                 load_control=>load_control,
                 load_recarga=>load_recarga,
                 control=>control,
                 recarga=>recarga,
                 overflow=>overflow,
                 salida_temp=>salida_temp);
                 
 clk_micro_process:process
 begin
    clk_micro<='0';
    wait for clk_micro_period/2;
    clk_micro<='1';
    wait for clk_micro_period/2;
 end process;
 
 clk_ext_process:process
 begin
    clk_ext<='0';
    wait for clk_ext_period/2;
    clk_ext<='1';
    wait for clk_ext_period/2;
 end process;
 
 stim_process:process
 begin
 
 --reset<='1';
 
 reset<='0';
 control<="00000111";
 load_control<='0';
 recarga<="01111111";
 load_recarga<='0';
 wait for 200 ns;
 
 load_recarga<='1';
 load_control<='1';
 wait for 100 ns;
 
 load_recarga<='0';
 load_control<='0';
 wait for 100 ns;
 
 wait for 15 us;
 
 load_control<='1';
 control<="00001111";
 wait for 100 ns;
 
 load_control<='0';
 wait for 10 us;
 
 --load_control<='1';
 --control<="00000111";
 --wait for 100 ns;
 
 --load_control<='0';
 --wait for 5 us;
 
 
 load_control<='1';
 load_recarga<='0';
 control<="00000010";
 wait for 100 ns;
 
 load_control<='0';
 wait for 3 us;
 
load_control<='1';
control<="00001010";
wait for 100 ns;

load_control<='0';
wait for 10 us;
 
 wait;
 end process;
 
 


end Behavioral;

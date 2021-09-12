----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 11:03:30
-- Design Name: 
-- Module Name: TB_ROM - Behavioral
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

entity TB_ROM is
--  Port ( );
end TB_ROM;

architecture Behavioral of TB_ROM is

component memoria_ROM is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          re : in STD_LOGIC;
          address : in STD_LOGIC_VECTOR(7 downto 0);
          data_out : out STD_LOGIC_VECTOR(7 downto 0)
          );
end component;

signal clk,reset,re:std_logic:='0';
signal address,data_out : std_logic_vector(7 downto 0):="00000000";
constant clk_period :time :=10ns;

begin

Inst_TB_ROM: memoria_ROM
        Port Map(clk=>clk,
                 reset=>reset,
                 re=>re,
                 address=>address,
                 data_out=>data_out
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

reset<='1';
wait for clk_period;

reset<='0';
wait for clk_period;

re<='1';

address<="00000000";
wait for clk_period;

address<="00000001";
wait for clk_period;

address<="00000010";
wait for clk_period;

address<="00000011";
wait for clk_period;

address<="00000100";
wait for clk_period;

address<="00000101";
wait for clk_period;

address<="00000110";
wait for clk_period;

address<="00000111";
wait for clk_period;

address<="00001000";
wait for clk_period;

address<="00001001";
wait for clk_period;

address<="00001010";
wait for clk_period;

address<="00001011";
wait for clk_period;

address<="00001100";
wait for clk_period;

address<="00001101";
wait for clk_period;

address<="00001110";
wait for clk_period;

address<="00001111";
wait for clk_period;

address<="00010000";
wait for clk_period;

address<="00010001";
wait for clk_period;

address<="00010001";
wait for clk_period;

address<="00010010";
wait for clk_period;


end process;


end Behavioral;

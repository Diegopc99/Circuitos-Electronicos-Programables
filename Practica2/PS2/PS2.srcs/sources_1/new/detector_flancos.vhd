----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2020 16:41:17
-- Design Name: 
-- Module Name: detector_flancos - Behavioral
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

entity detector_flancos is
    Port ( entrada : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           fa_entrada : out STD_LOGIC;
           fd_entrada : out STD_LOGIC);
end detector_flancos;

architecture Behavioral of detector_flancos is

signal entrada_t_1: std_logic:='0';
signal fa_entrada_aux : std_logic:='0'; -- flanco ascendente
signal fd_entrada_aux : std_logic:='0'; -- flanco descendente
signal entrada_s_aux : std_logic:='0'; -- variable sincronizada

begin

fa_entrada <= fa_entrada_aux;
fd_entrada <= fd_entrada_aux;

process (reset,clk,entrada_s_aux,entrada_t_1,entrada)
begin
	if reset = '1' then 	entrada_s_aux <= '0';
								entrada_t_1 <= '0';
	elsif clk = '1' and clk'event then entrada_t_1 <= entrada_s_aux;
												entrada_s_aux <= entrada;
	end if;

	fa_entrada_aux <= entrada_s_aux and not entrada_t_1;
	fd_entrada_aux <= not entrada_s_aux and entrada_t_1;

end process;

end Behavioral;

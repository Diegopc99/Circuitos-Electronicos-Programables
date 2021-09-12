----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.09.2020 20:16:53
-- Design Name: 
-- Module Name: Generador_CE_1KHz - Behavioral
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

entity Generador_CE_1KHz is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce_1KHz : out STD_LOGIC);
end Generador_CE_1KHz;

architecture Behavioral of Generador_CE_1KHz is

signal cont_1kHz: integer range 0 to 99999:=0;

begin

Generacion_ce_1KHz: process(clk)
		begin
			if (clk'event and clk='1') then
					if cont_1KHz=99999 then
						cont_1KHz <= 0;
						ce_1KHz <= '1';
					else
						cont_1KHz <= cont_1KHz + 1;
						ce_1KHz <= '0';
					end if;
			end if;
		end process Generacion_ce_1KHz;


end Behavioral;

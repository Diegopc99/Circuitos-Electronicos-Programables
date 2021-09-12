----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.09.2020 21:17:27
-- Design Name: 
-- Module Name: bin_to_7_seg - Behavioral
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

entity bin_to_7seg_anodo is
    Port ( en : in std_logic;
           DIN : in std_logic_vector(3 downto 0);
		   dp_in: in std_logic;
           A : out std_logic;
           B : out std_logic;
           C : out std_logic;
           D : out std_logic;
           E : out std_logic;
           F : out std_logic;
           G : out std_logic;
           DP : out std_logic);
end bin_to_7seg_anodo;

architecture Behavioral of bin_to_7seg_anodo is
signal entradas_dec: std_logic_vector (4 downto 0);
signal segmentos: std_logic_vector (6 downto 0);

begin
entradas_dec <= (en & DIN);
	With entradas_dec select

	-- El orden de los segmentos es G,F,E,D,C,B,A
	segmentos <= "1000000" when "10000",  --0
					 "1111001" when "10001",  --1
					 "0100100" when "10010",	--2
					 "0110000" when "10011",	--3
					 "0011001" when "10100",	--4
					 "0010010" when "10101",	--5
					 "0000010" when "10110",	--6
					 "1111000" when "10111",	--7
					 "0000000" when "11000",	--8
					 "0010000" when "11001",	--9
					 "0001000" when "11010",	--A
					 "0000011" when "11011",	--b
					 "1000110" when "11100",	--C
					 "0100001" when "11101",	--d
					 "0000110" when "11110",	--E
					 "0001110" when "11111",	--F
					 "1111111" when others;	-- Todos los LEDs apagados

A <= segmentos(0);
B <= segmentos(1);
C <= segmentos(2);
D <= segmentos(3);
E <= segmentos(4);
F <= segmentos(5);
G <= segmentos(6);

-- DP <= ((en AND (NOT dp_in)) OR (NOT en)); -- para dp_in activo a nivel cero
DP <= not (en AND dp_in); -- para dp_in activo a nivel uno

end Behavioral;

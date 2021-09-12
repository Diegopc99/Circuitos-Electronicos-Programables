----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2020 12:47:57
-- Design Name: 
-- Module Name: memoria_ROM - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memoria_ROM is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          re : in STD_LOGIC;
          address : in STD_LOGIC_VECTOR(7 downto 0);
          data_out : out STD_LOGIC_VECTOR(7 downto 0)
          );
end memoria_ROM;

architecture Behavioral of memoria_ROM is

type rom_array is array(0 to 43) of std_logic_vector(7 downto 0);

constant rom: rom_array :=
    ("00010110","00011110","00100110","00100101","00101110","00110110",
  --    16          1E         26       25           2E         36
    "00111101","00111110","01000110","01000101","01001110","01010101",
  --    3D          3E        46        45          4E          55
    "00010101","00011101","00100100","00101101","00101100","00110101",
  --    15          1D        24        2D          2C          35
    "00111100","01000011","01000100","01001101","01010100","01011011",
  --    3C          43        44         4D         54          5B
    "00011100","00011011","00100011","00101011","00110100","00110011",
  --    1C          1B         23        2B         34          33
    "00111011","01000010","01001011","01001100","01010010",--"1Z",
  --    3B          42        4B         4C         52
    "00100010","00100001","00101010","00110010","00110001","00111010",
  --    22          21        2A         32         31          3A
    "01000001","01001001","01001010");
  --    41          49        4A

 -- De 16 a 4A

begin

process(clk,reset)
begin

    if(reset ='1') then
        data_out<="00000000";
    elsif(rising_edge(clk)) then
        if(re = '1') then
            data_out<=rom(to_integer(unsigned(address))); -- rom(integer)
        end if;
    end if;
end process;

end Behavioral;

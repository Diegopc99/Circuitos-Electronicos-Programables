----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:48 03/30/2016 
-- Design Name: 
-- Module Name:    uart - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_rs232 is
	Port (            
		clk : in std_logic;
		-- Transmitter
		data_in_tx : in std_logic_vector(7 downto 0);
		write_buffer_tx : in std_logic;
		reset_buffer_tx : in std_logic;
		-- Receiver
		serial_in_rx : in std_logic;
		read_buffer_rx : in std_logic;
		reset_buffer_rx : in std_logic;
		-- Baud generator
		reset_generador_baudios : in std_logic;
		-- Transmitter		
		serial_out_tx : out std_logic;
		buffer_full_tx : out std_logic;
		buffer_half_full_tx : out std_logic;
		-- Receiver
		data_out_rx : out std_logic_vector(7 downto 0);
		buffer_data_present_rx : out std_logic;
		buffer_full_rx : out std_logic;
		buffer_half_full_rx : out std_logic
	);
end uart_rs232;

architecture Behavioral of uart_rs232 is

	COMPONENT uart_tx
	PORT(
		data_in : IN std_logic_vector(7 downto 0);
		write_buffer : IN std_logic;
		reset_buffer : IN std_logic;
		en_16_x_baud : IN std_logic;
		clk : IN std_logic;          
		serial_out : OUT std_logic;
		buffer_full : OUT std_logic;
		buffer_half_full : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT uart_rx
	PORT(
		serial_in : IN std_logic;
		read_buffer : IN std_logic;
		reset_buffer : IN std_logic;
		en_16_x_baud : IN std_logic;
		clk : IN std_logic;          
		data_out : OUT std_logic_vector(7 downto 0);
		buffer_data_present : OUT std_logic;
		buffer_full : OUT std_logic;
		buffer_half_full : OUT std_logic
		);
	END COMPONENT;	

	COMPONENT generador_baudios
	PORT(
		clkin : IN std_logic;
		reset : IN std_logic;          
		en_16_x_baud : OUT std_logic
		);
	END COMPONENT;

signal en_16_x_baud : std_logic:='0';

begin

	Inst_uart_tx: uart_tx PORT MAP(
		data_in => data_in_tx,
		write_buffer => write_buffer_tx,
		reset_buffer => reset_buffer_tx,
		en_16_x_baud => en_16_x_baud,
		serial_out => serial_out_tx,
		buffer_full => buffer_full_tx,
		buffer_half_full => buffer_half_full_tx,
		clk => clk
	);
	
	Inst_uart_rx: uart_rx PORT MAP(
		serial_in => serial_in_rx,
		data_out => data_out_rx,
		read_buffer => read_buffer_rx,
		reset_buffer => reset_buffer_rx,
		en_16_x_baud => en_16_x_baud,
		buffer_data_present => buffer_data_present_rx,
		buffer_full => buffer_full_rx,
		buffer_half_full => buffer_half_full_rx,
		clk => clk
	);

	Inst_generador_baudios: generador_baudios PORT MAP(
		clkin => clk,
		en_16_x_baud => en_16_x_baud,
		reset => reset_generador_baudios
	);	

end Behavioral;


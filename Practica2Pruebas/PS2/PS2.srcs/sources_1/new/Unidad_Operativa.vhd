----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.10.2020 18:12:45
-- Design Name: 
-- Module Name: Unidad_Operativa - Behavioral
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

entity Unidad_Operativa is
    Port ( ps2_clk : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ps2_data : in STD_LOGIC;
           en_contador : in STD_LOGIC;
           en_parity : in STD_LOGIC;
           txd_data_valid : in STD_LOGIC;
           en_parity_err : in STD_LOGIC;
           fd_ps2_clk : out STD_LOGIC;
           txd_data : out STD_LOGIC_VECTOR (7 downto 0);
           contador : out STD_LOGIC_VECTOR (3 downto 0);
           parity_err_ant : out STD_LOGIC;
           parity_err_out : out STD_LOGIC);
           
end Unidad_Operativa;

architecture Behavioral of Unidad_Operativa is

component detector_flancos is
    Port ( entrada : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           fa_entrada : out STD_LOGIC;
           fd_entrada : out STD_LOGIC);
end component;

component reg_desplazamiento is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           load : in STD_LOGIC;
           msb_in : in STD_LOGIC;
           shift_enable : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (8 downto 0);
           lsb_out : out STD_LOGIC;
           q_shift : out STD_LOGIC_VECTOR (8 downto 0));
end component;

component Reg is
    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           en : in STD_LOGIC;
           reset: in std_logic;
           q : out STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC);
end component;

component contador_estados is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           load : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR (3 downto 0);
           tc : out STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Detector_paridad is
    Port ( data : in STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC;
           parity_bit : in STD_LOGIC;
           en_parity : in STD_LOGIC;
           clk : in STD_LOGIC;
           parity_err_ant : out STD_LOGIC);
end component;

component Reg_parity is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           en : in STD_LOGIC;
           data_in : in STD_LOGIC;
           q : out STD_LOGIC);
end component;

signal t_fd_ps2_clk,t_parity_err_ant: std_logic :='0';
signal t_reg_data: std_logic_vector(8 downto 0) :="000000000";
--signal t_contador:std_logic_vector(3 downto 0) :="0000";

begin

inst_detector_flancos: detector_flancos
        Port Map(entrada=>ps2_clk,
                 clk=>clk,
                 reset=>reset,
                 fd_entrada=>t_fd_ps2_clk);

inst_reg_desplaza: reg_desplazamiento
        Port Map(clk=>t_fd_ps2_clk,
                 reset=>reset,
                 load=>'0',
                 data_in=>"000000000",
                 shift_enable=>en_contador,
                 msb_in=>ps2_data,
                 q_shift=>t_reg_data
                );
               
inst_contador_estados: contador_estados
        Port Map(clk=>t_fd_ps2_clk,
                 reset=>reset,
                 ce=>en_contador,
                 load=>'0',
                 din=>"0000",
                 q=>contador
                 ); 
inst_reg: Reg 
        Port Map(clk=>clk,
                 reset=>reset,
                 en=>txd_data_valid,
                 data_in(0)=>t_reg_data(0), -- seria 8 pero perdemos el bit de start en el estado0
                 data_in(1)=>t_reg_data(1),
                 data_in(2)=>t_reg_data(2),
                 data_in(3)=>t_reg_data(3),
                 data_in(4)=>t_reg_data(4),
                 data_in(5)=>t_reg_data(5),
                 data_in(6)=>t_reg_data(6),
                 data_in(7)=>t_reg_data(7),
                 q=>txd_data
                );
inst_reg_parity: Reg_parity
        Port Map(clk=>clk,
                 reset=>reset,
                 en=>en_parity_err,
                 data_in=>t_parity_err_ant,
                 q=>parity_err_out
                 );  

          
inst_detector_paridad: Detector_paridad
        Port Map(clk=>clk,
                 reset=>reset,
                 --data=>t_reg_data(9 downto 1),
                 data(0)=>t_reg_data(0),
                 data(1)=>t_reg_data(1),
                 data(2)=>t_reg_data(2),
                 data(3)=>t_reg_data(3),
                 data(4)=>t_reg_data(4),
                 data(5)=>t_reg_data(5),
                 data(6)=>t_reg_data(6),
                 data(7)=>t_reg_data(7),
                 parity_bit=>t_reg_data(8),
                 en_parity=>en_parity,
                 parity_err_ant=>t_parity_err_ant
                 );
          
fd_ps2_clk<=t_fd_ps2_clk;
parity_err_ant<=t_parity_err_ant;

end Behavioral;

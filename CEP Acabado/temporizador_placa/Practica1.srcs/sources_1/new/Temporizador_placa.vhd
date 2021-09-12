----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.09.2020 14:44:33
-- Design Name: 
-- Module Name: Temporizador_placa - Behavioral
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

entity Temporizador_placa is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           load_control : in STD_LOGIC;
           load_recarga : in STD_LOGIC;
           control : in STD_LOGIC_VECTOR (7 downto 0);
           recarga : in STD_LOGIC_VECTOR (7 downto 0);
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
end Temporizador_placa;

architecture Behavioral of Temporizador_placa is

component bin_to_7seg_anodo is
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
end component;

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

component Visualizador_dinamico is
    Port ( clk : in STD_LOGIC;
           clk_en : in STD_LOGIC;
           gvis : in STD_LOGIC;
           gvis0 : in STD_LOGIC;
           gvis1 : in STD_LOGIC;
           gvis2 : in STD_LOGIC;
           gvis3 : in STD_LOGIC;
           gvis4 : in STD_LOGIC;
           gvis5 : in STD_LOGIC;
           gvis6 : in STD_LOGIC;
           gvis7 : in STD_LOGIC;
           reset : in STD_LOGIC;
           vis0 : in STD_LOGIC_VECTOR (7 downto 0);
           vis1 : in STD_LOGIC_VECTOR (7 downto 0);
           vis2 : in STD_LOGIC_VECTOR (7 downto 0);
           vis3 : in STD_LOGIC_VECTOR (7 downto 0);
           vis4 : in STD_LOGIC_VECTOR (7 downto 0);
           vis5 : in STD_LOGIC_VECTOR (7 downto 0);
           vis6 : in STD_LOGIC_VECTOR (7 downto 0);
           vis7 : in STD_LOGIC_VECTOR (7 downto 0);
           A : out STD_LOGIC;
           B : out STD_LOGIC;
           C : out STD_LOGIC;
           D : out STD_LOGIC;
           E : out STD_LOGIC;
           F : out STD_LOGIC;
           G : out STD_LOGIC;
           an0 : out STD_LOGIC;
           an1 : out STD_LOGIC;
           an2 : out STD_LOGIC;
           an3 : out STD_LOGIC;
           an4 : out STD_LOGIC;
           an5 : out STD_LOGIC;
           an6 : out STD_LOGIC;
           an7 : out STD_LOGIC;
           DP : out STD_LOGIC);
end component;

component D_flip_flop_placa is
    Port ( clk : in STD_LOGIC;
           D : in STD_LOGIC;
           clr : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

component Generador_CE_1KHz is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce_1KHz : out STD_LOGIC);
end component;

component divider1000 is
    Port ( clkin : in STD_LOGIC;
           clkout : out STD_LOGIC;
           reset : in STD_LOGIC);
end component;

component divider100 is
    Port ( clkin : in STD_LOGIC;
           clkout : out STD_LOGIC;
           reset : in STD_LOGIC);
end component;


signal t_salida_temp:std_logic_vector(7 downto 0);
signal primer_vis:std_logic_vector(3 downto 0);
signal segundo_vis:std_logic_vector(3 downto 0);
signal primer_vis_bcd:std_logic_vector(7 downto 0):="00000000";
signal segundo_vis_bcd:std_logic_vector(7 downto 0):="00000000";
signal primer_vis_bcd_negado:std_logic_vector(7 downto 0):="00000000";
signal segundo_vis_bcd_negado:std_logic_vector(7 downto 0):="00000000";
signal clk_1:std_logic;
signal clk_2:std_logic;
signal clk_3:std_logic;
signal ce_1KHz:std_logic;
signal clk_10Hz:std_logic;
signal clk_01Hz:std_logic;

begin

inst_gen_1KHz: Generador_CE_1KHz
        port map(clk=>clk,
                 reset=>reset,
                 ce_1KHz=>ce_1KHz
        );
        
inst_divid_10Hz: divider100
        port map(clkin=>ce_1KHz,
                 reset=>reset,
                 clkout=>clk_10Hz
        );
        
inst_divid_01Hz: divider100
        port map(clkin=>clk_10Hz,
                 reset=>reset,
                 clkout=>clk_01Hz
        );



inst_bin_7_seg_primer_seg: bin_to_7seg_anodo
        Port map(en=>'1',
                 DIN=>primer_vis,
                 dp_in=>'0',
                 A=>primer_vis_bcd(0),
                 B=>primer_vis_bcd(1),
                 C=>primer_vis_bcd(2),
                 D=>primer_vis_bcd(3),
                 E=>primer_vis_bcd(4),
                 F=>primer_vis_bcd(5),
                 G=>primer_vis_bcd(6),
                 DP=>primer_vis_bcd(7));  ----> Quitar si no se usa el punto
                 
inst_bin_7_seg_segundo_seg: bin_to_7seg_anodo
        Port map(en=>'1',
                 DIN=>segundo_vis,
                 dp_in=>'0',
                 A=>segundo_vis_bcd(0),
                 B=>segundo_vis_bcd(1),
                 C=>segundo_vis_bcd(2),
                 D=>segundo_vis_bcd(3),
                 E=>segundo_vis_bcd(4),
                 F=>segundo_vis_bcd(5),
                 G=>segundo_vis_bcd(6),
                 DP=>segundo_vis_bcd(7)); ----> Quitar si no se usa el punto
                 

inst_visualizador_dinamico:Visualizador_dinamico
        Port Map(clk=>clk,
                 clk_en=>ce_1KHz,
                 gvis=>'1',
                 gvis0=>'1',
                 gvis1=>'1',
                 gvis2=>'0',
                 gvis3=>'0',
                 gvis4=>'0',
                 gvis5=>'0',
                 gvis6=>'0',
                 gvis7=>'0',
                 reset=>reset,
                 vis0=>segundo_vis_bcd,
                 vis1=>primer_vis_bcd,
                 vis2=>"00000000",
                 vis3=>"00000000",
                 vis4=>"00000000",
                 vis5=>"00000000",
                 vis6=>"00000000",
                 vis7=>"00000000",            
                 A=>A,
                 B=>B,
                 C=>C,
                 D=>D,
                 E=>E,
                 F=>F,
                 G=>G,
                 an0=>an0,
                 an1=>an1,
                 an2=>an2,
                 an3=>an3,
                 an4=>an4,
                 an5=>an5,
                 an6=>an6,
                 an7=>an7,
                 DP=>DP);
        
inst_temporizador_8_bits: Temporizador_8_bits
        Port Map(reset=>reset,
                 clk_micro=>clk,
                 clk_ext=>clk_01Hz,
                 load_control=>load_control,
                 load_recarga=>load_recarga,
                 control=>control,
                 recarga=>recarga,
                 salida_temp=>t_salida_temp);
                 

--inst_divider_1000:divider1000
--        Port map(clkin=>clk,
--                 clkout=>clk_1,
--                 reset=>reset);
                 
--inst_divider_100:divider100
--        Port map(clkin=>clk_1,
--                 clkout=>clk_2,
--                 reset=>reset);
                 
--inst_divider_100_2:divider100
--        Port map(clkin=>clk_2,
--                 clkout=>clk_3,
--                 reset=>reset);
                 
                 
segundo_vis_bcd_negado<=not segundo_vis_bcd;
primer_vis_bcd_negado<= not primer_vis_bcd;            
                 
primer_vis<=t_salida_temp(7 downto 4);
segundo_vis<=t_salida_temp(3 downto 0);



end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.09.2020 12:26:45
-- Design Name: 
-- Module Name: Visualizador_dinamico - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Visualizador_dinamico is
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
end Visualizador_dinamico;

architecture Behavioral of Visualizador_dinamico is

-- Señal del contador que selecciona el visualizador activo
signal contador_vis	: std_logic_vector (2 downto 0);
-- Salida del multiplexor que selecciona el dato de entrada a visualizar
signal mux_vis	: std_logic_vector (7 downto 0);
-- Vector de activacion de ánodo en función del visualizador activo
signal anodos	: std_logic_vector (7 downto 0);


begin

---------- SELECCION DEL VISUALIZADOR ACTIVO  ---------------------------
-- Contador de 3 bits con habilitación de contaje que                  -- 
-- indica el visualizador que está activo en cada instante				  --
-------------------------------------------------------------------------

	process (reset, clk)
	begin
		if reset ='1' then contador_vis <= "000";
		elsif (clk ='1' and clk'event) then
			if clk_en ='1' then
				if contador_vis = "111" then contador_vis <= "000";
				else contador_vis <= contador_vis + 1;
				end if;
			end if;
		end if;
	end process;
	


---------- ACTIVACION DE LOS ANODOS  ------------------------------------
-- Decodificador 1 entre 8 para seleccion del ánodo activo             -- 
-- en cada instante							                                --
-------------------------------------------------------------------------	

	anodos <= 	"00000001" when contador_vis = "000" else
			      "00000010" when contador_vis = "001" else
			      "00000100" when contador_vis = "010" else
			      "00001000" when contador_vis = "011" else
					"00010000" when contador_vis = "100" else
			      "00100000" when contador_vis = "101" else
			      "01000000" when contador_vis = "110" else
			      "10000000" when contador_vis = "111" else
			      "00000000";


---------- SELECCIÓN DEL DATO A VISUALIZAR  -----------------------------
-- Multiplexor de ocho canales para la seleccion del                 -- 
-- dato a visualizar, correspondiente al digito del visualizador		  --
-- seleccionado en cada instante							                    --					                                
-------------------------------------------------------------------------

	mux_vis <= 	vis0 when contador_vis = "000" else 
			      vis1 when contador_vis = "001" else 
			      vis2 when contador_vis = "010" else 
			      vis3 when contador_vis = "011" else 
					vis4 when contador_vis = "100" else 
			      vis5 when contador_vis = "101" else 
			      vis6 when contador_vis = "110" else 
			      vis7 when contador_vis = "111" else
			      X"00";

					
-- Anodos de cada digito con habilitacion del visualizador y habilitación del digito
	an7 <= not(gvis and gvis7 and anodos(7)); -- Visualizador de mayor peso
	an6 <= not(gvis and gvis6 and anodos(6));
	an5 <= not(gvis and gvis5 and anodos(5));
	an4 <= not(gvis and gvis4 and anodos(4));
	an3 <= not(gvis and gvis3 and anodos(3));
	an2 <= not(gvis and gvis2 and anodos(2));
	an1 <= not(gvis and gvis1 and anodos(1));
	an0 <= not(gvis and gvis0 and anodos(0)); -- Visualizador de menor peso

-- Catodos comunes a todos los dígitos, activos a nivel bajo
	A <= not mux_vis(7);
	B <= not mux_vis(6);
	C <= not mux_vis(5);
	D <= not mux_vis(4);
	E <= not mux_vis(3);
	F <= not mux_vis(2);
	G <= not mux_vis(1);

-- Catodo correspondiente al punto decimal, activo a nivel bajo
	DP <= not mux_vis(0);




end Behavioral;

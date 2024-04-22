library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder1to2 is
	port(
		a : in STD_LOGIC;
		b : out STD_LOGIC_VECTOR(1 downto 0)
	);
end decoder1to2;

architecture gate_level of decoder1to2 is
	begin
		b(0) <= a;
		b(1) <= not a;
	end gate_level;
	
		
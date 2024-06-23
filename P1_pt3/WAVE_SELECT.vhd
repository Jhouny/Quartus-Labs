library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WAVE_SELECT is
	port(
		SAWTOOTH, SINE, TRIANGLE, SQUARE_25, SQUARE_50, SQUARE_75 : in std_logic_vector(7 downto 0);
		CTRL : in std_logic_vector(2 downto 0); 
		WAVE  : out std_logic_vector(7 downto 0)
	);
end entity;

architecture multiplex of WAVE_SELECT is
begin
	--
end architecture;
library IEEE;
use IEEE.std_logic_1164.all;

entity PISO_8_BITS is
	port (
		CLR : in std_logic;
		PRESET : in std_logic;
		CLK : in std_logic;
		LOAD : in std_logic;
		D : in std_logic_vector(7 downto 0);
		S: out std_logic
	);
end entity;
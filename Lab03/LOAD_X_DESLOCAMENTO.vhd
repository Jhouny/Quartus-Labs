library IEEE;
use IEEE.std_logic_1164.all;

entity LOAD_X_DESLOCAMENTO is
	port (
		LOAD, Din, DQ : in std_logic;
		Dout : out std_logic
	);
end entity;

architecture func of LOAD_X_DESLOCAMENTO is
	begin
		Dout <= (LOAD and Din) or (not LOAD and DQ);
end architecture;

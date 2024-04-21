Library IEEE;
use ieee.std_logic_1164.all;

entity SOMA4BITS_VHDL is
	port(
		A0, A1, A2, A3: in std_logic;
		B0, B1, B2, B3: in std_logic;
		C_in: in std_logic;
		S0, S1, S2, S3: out std_logic;
		C_out: out std_logic
	);
end SOMA4BITS_VHDL;

architecture struct of SOMA4BITS_VHDL is

-- signal
signal Co0Ci1, Co1Ci2, Co2Ci3: std_logic;
-- component
COMPONENT SOMA1BIT_VHDL
	port(
		A, B, Ci: in std_logic;
		Cout, S: out std_logic
	);
end COMPONENT;
	begin
		somador0: SOMA1BIT_VHDL port map(A=> A0, B=> B0, Ci=> C_in  , Cout => Co0Ci1, s=>S0);
		somador1: SOMA1BIT_VHDL port map(A=> A1, B=> B1, Ci=> Co0Ci1, Cout => Co1Ci2, s=>S1);
		somador2: SOMA1BIT_VHDL port map(A=> A2, B=> B2, Ci=> Co1Ci2, Cout => Co2Ci3, s=>S2);
		somador3: SOMA1BIT_VHDL port map(A=> A3, B=> B3, Ci=> Co2Ci3, Cout => C_out , s=>S3);
	end struct;	
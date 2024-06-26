library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADDER_1_BIT is
	port(
		A, B, Cin, CLK : in std_logic;
		S, Cout : out std_logic
	);
end entity;

architecture add of ADDER_1_BIT is
	begin
		process(CLK) begin
			S <= (Cin xor (A xor B));
			Cout <= (A and B) or ((A xor B) and Cin);
		end process;
end architecture;
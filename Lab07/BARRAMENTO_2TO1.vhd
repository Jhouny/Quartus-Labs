library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BARRAMENTO_2TO1 is
	port(
		A, B : in std_logic_vector(7 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector(7 downto 0)
	);
end entity;

architecture func of BARRAMENTO_2TO1 is
	signal tmp : std_logic_vector(7 downto 0);
	begin
		process(Cin) begin
			if Cin = '0' then
				tmp(7 downto 0) <= A(7 downto 0);
			else
				tmp(7 downto 0) <= B(7 downto 0);
			end if;
		end process;
		S(7 downto 0) <= tmp(7 downto 0);
end architecture;
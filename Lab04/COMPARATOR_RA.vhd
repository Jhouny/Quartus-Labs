library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATOR_RA is 
	port(
		D5, D4, D3, D2, D1, D0 : in STD_LOGIC_VECTOR(3 downto 0);
		state : out STD_LOGIC
	);
end entity;

architecture compare of COMPARATOR_RA is
	-- RA : 2358859 -> 358859 --
	signal RA5 : STD_LOGIC_VECTOR(3 downto 0) := "0011";
	signal RA4 : STD_LOGIC_VECTOR(3 downto 0) := "0101";
	signal RA3 : STD_LOGIC_VECTOR(3 downto 0) := "1000";
	signal RA2 : STD_LOGIC_VECTOR(3 downto 0) := "1000";
	signal RA1 : STD_LOGIC_VECTOR(3 downto 0) := "0101";
	signal RA0 : STD_LOGIC_VECTOR(3 downto 0) := "1001";
	
	begin
		process(D5, D4, D3, D2, D1, D0) begin
			if D5 = RA5 and D4 = RA4 and D3 = RA3 and D2 = RA2 and D1 = RA1 and D0 = RA0 then
				state <= '1';
			else
				state <= '0';
			end if;
		end process;
end architecture;
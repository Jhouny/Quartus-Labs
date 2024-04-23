library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux2to1 is
	port(
		a : in STD_LOGIC;
		i : in STD_LOGIC_VECTOR(1 downto 0);
		f : out STD_LOGIC
	);
end mux2to1;

architecture control of mux2to1 is
	signal m : STD_LOGIC_VECTOR(0 to 1);
	component decoder1to2
		port(
			a :  in STD_LOGIC;
			b : out STD_LOGIC_VECTOR(1 downto 0)
		);
	end component;
	
	begin
		dec: decoder1to2 port map(a, m);
		process(a, i) is
		begin	
			case m is
				when "01" => f <= i(0);
				when others => f <= i(1);
			end case;
		end process;
end control;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux4to1 is
	port(
		a : in STD_LOGIC_VECTOR(1 downto 0);
		i : in STD_LOGIC_VECTOR(3 downto 0);
		f : out STD_LOGIC
	);
end mux4to1;

architecture control of mux4to1 is
	signal m : STD_LOGIC_VECTOR(0 to 3);
	component decoder2to4
		port(
			a :  in STD_LOGIC_VECTOR(1 downto 0);
			b : out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;
	
	begin	
		dec: decoder2to4 port map(a, m);
		process(a) is
		begin	
			case m is
				when "0001" => f <= i(0);
				when "0010" => f <= i(1);
				when "0100" => f <= i(2);
				when others => f <= i(3);
			end case;
		end process;
end control;
		
		


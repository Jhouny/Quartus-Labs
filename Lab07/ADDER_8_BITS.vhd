library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADDER_8_BITS is
	port(
		A, B : in std_logic_vector(7 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector(7 downto 0);
		Cout : out std_logic
	);
end entity;

architecture add of ADDER_8_BITS is
	signal couts : std_logic;
	
	component ADDER_4_BITs is
		port(
			A, B : in std_logic_vector(3 downto 0);
			Cin : in std_logic;
			S : out std_logic_vector(3 downto 0);
			Cout : out std_logic
		);
	end component;
	
	begin
		add1 : ADDER_4_BITs port map(A(3 downto 0) => A(3 downto 0), B => B(3 downto 0), Cin => Cin, S(3 downto 0) => S(3 downto 0), Cout => couts);
		add2 : ADDER_4_BITs port map(A(3 downto 0) => A(7 downto 4), B => B(3 downto 0), Cin => couts, S(3 downto 0) => S(7 downto 4), Cout => Cout);
		
end architecture;
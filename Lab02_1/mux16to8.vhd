library IEEE;
use IEEE.std_logic_1164.all;

entity mux16to8 is
	port(
		ctrl : in STD_LOGIC;
		data1 : in STD_LOGIC_VECTOR(7 downto 0);
		data2 : in STD_LOGIC_VECTOR(7 downto 0);
		output : out STD_LOGIC_VECTOR(7 downto 0)
	);
end entity;

architecture control of mux16to8 is
	component mux2to1
		port(
			a : in STD_LOGIC;
			i : in STD_LOGIC_VECTOR(1 downto 0);
			f : out STD_LOGIC
		);
	end component;
	
	begin
		m0 : mux2to1 port map(a => ctrl, i => data1(0) & data2(0), f => output(0));
		m1 : mux2to1 port map(a => ctrl, i => data1(1) & data2(1), f => output(1));
		m2 : mux2to1 port map(a => ctrl, i => data1(2) & data2(2), f => output(2));
		m3 : mux2to1 port map(a => ctrl, i => data1(3) & data2(3), f => output(3));
		m4 : mux2to1 port map(a => ctrl, i => data1(4) & data2(4), f => output(4));
		m5 : mux2to1 port map(a => ctrl, i => data1(5) & data2(5), f => output(5));
		m6 : mux2to1 port map(a => ctrl, i => data1(6) & data2(6), f => output(6));
		m7 : mux2to1 port map(a => ctrl, i => data1(7) & data2(7), f => output(7));
		
	
end architecture;
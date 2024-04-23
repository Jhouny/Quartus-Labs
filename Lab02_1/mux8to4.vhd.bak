library IEEE;
use IEEE.std_logic_1164.all;

entity mux8to4 is
	port(
		ctrl : in STD_LOGIC;
		data1 : in STD_LOGIC_VECTOR(3 downto 0);
		data2 : in STD_LOGIC_VECTOR(3 downto 0);
		output : out STD_LOGIC_VECTOR(3 downto 0);
	);
end entity;

architecture control of mux8to4 is
	component mux2to1
		port(
			a : in STD_LOGIC;
			b : out STD_LOGIC_VECTOR(1 downto 0);
		);
	end component;
	
	begin
		m0 : mux2to1 port map(a => ctrl, i => (data1(0) & data2(0)), output(0));
		m1 : mux2to1 port map(a => ctrl, i => (data1(1) & data2(1)), output(1));
		m2 : mux2to1 port map(a => ctrl, i => (data1(2) & data2(2)), output(2));
		m3 : mux2to1 port map(a => ctrl, i => (data1(3) & data2(3)), output(3));
	
	
end architecture;
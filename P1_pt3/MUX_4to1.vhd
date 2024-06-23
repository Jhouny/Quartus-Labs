library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX4to1 is
	port(
		CLK1k25, CLK2k5, CLK5k, CLK10k : in std_logic;
		CTRL : in std_logic_vector(1 downto 0); 
		NUM  : out std_logic_vector(23 downto 0)
	);
end entity;

architecture multiplex of MUX4to1 is
	signal clk_out : std_logic;

begin
	process(CTRL, CLK1k25, CLK2k5, CLK5k, CLK10k) begin
		case CTRL is
			when "00"   => clk_out <= CLK1k25;
			when "01"   => clk_out <= CLK2k5;
			when "10"   => clk_out <= CLK5k;
			when "11"   => clk_out <= CLK10k;
			when others => clk_out <= CLK1k25;
		end case;
	end process;
	NUM <= clk_out;
end architecture;
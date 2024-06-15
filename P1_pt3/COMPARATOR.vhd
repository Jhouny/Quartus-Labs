library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATOR is
	port(
		CLK, RST : in std_logic;
		C : out std_logic_vector(7 downto 0)
	);
end entity;

architecture count of COMPARATOR is
	signal count, tmp : std_logic_vector(7 downto 0);
	signal trash : std_logic;
	
	component ADDER_8_BITS is
		port(
			A, B : in std_logic_vector(7 downto 0);
			Cin, CLK : in std_logic;
			S : out std_logic_vector(7 downto 0);
			Cout : out std_logic
		);
	end component;
	
	begin
		add : ADDER_8_BITS port map(A => count, 
									B => "00000000", 
									Cin => '1', 
									CLK => CLK, 
									S => tmp, 
									Cout => trash); -- tmp sempre será count+1 --
	--======================================================================================================================--
	process(CLK, RST) begin
		-- Reseta o contador para "0" --
		if RST = '1' then
			count <= (others => '0');
		--============================--
		elsif rising_edge(CLK) then
			count <= tmp;
		end if;
		--============================--
		C <= count;
	end process;
	
end architecture;
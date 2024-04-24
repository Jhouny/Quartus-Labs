library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COUNTER_1_SENARY is
	port(
		CLK, RST : in std_logic;
		C : out std_logic_vector(3 downto 0)
	);
end entity;

architecture count of COUNTER_1_SENARY is
	signal count, tmp : std_logic_vector(3 downto 0);
	signal trash : std_logic;
	
	component ADDER_4_BITS is
		port(
			A, B : in std_logic_vector(3 downto 0);
			Cin : in std_logic;
			S : out std_logic_vector(3 downto 0);
			Cout : out std_logic
		);
	end component;
	
	begin
		add : ADDER_4_BITS port map(A => count, B => "0000", Cin => '1', S => tmp, Cout => trash); -- tmp sempre será count+1 --
	--======================================================================================================================--
	process(CLK, RST) begin
		-- Reseta o contador para '0' --
		if RST = '1' then
			count <= (others => '0');
		--============================--
		elsif rising_edge(CLK) then
			if count = "0101" then
				count <= (others => '0');
			else
				count <= tmp;
			end if;
		end if;
		--============================--
		C <= count;
	end process;
	
end architecture;
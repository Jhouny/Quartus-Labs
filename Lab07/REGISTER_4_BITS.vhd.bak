library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity REGISTER_4_BITS is
    port ( 
		data: in std_logic_vector(3 downto 0);
		CLK, RST : in std_logic;
		Q: out std_logic_vector(3 downto 0)
	);
end entity;
  
architecture func of REGISTER_4_BITS is
	signal reg1, reg2, tmp : std_logic_vector(3 downto 0) := (others => '0');
	begin
	process(CLK, RST)
		begin
		if RST = '1' then
			Q <= (others => '0');
		else
			if rising_edge(CLK) then
				reg2 <= reg1;
				reg1 <= data;
			end if;
		end if;
	end process;
	Q <= reg2;
end architecture;
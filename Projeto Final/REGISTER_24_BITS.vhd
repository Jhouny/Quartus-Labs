library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity REGISTER_24_BITS is
    port ( 
		data: in std_logic_vector(23 downto 0);
		CLK, RST : in std_logic;
		Q: out std_logic_vector(23 downto 0)
	);
end entity;
  
architecture func of REGISTER_24_BITS is
	component REGISTER_8_BITS is
		port (
			data: in std_logic_vector(7 downto 0);
			CLK, RST : in std_logic;
			Q: out std_logic_vector(7 downto 0)
		);
	end component;
	
	begin
		reg0 : REGISTER_8_BITS port map(data => data(7 downto 0), 
									    CLK => CLK, 
									    RST => RST, 
									    Q => Q(7 downto 0));
		reg1 : REGISTER_8_BITS port map(data => data(15 downto 8), 
									    CLK => CLK, 
									    RST => RST, 
									    Q => Q(15 downto 8));
		reg2 : REGISTER_8_BITS port map(data => data(23 downto 16), 
									    CLK => CLK, 
									    RST => RST, 
									    Q => Q(23 downto 16));
										
end architecture;
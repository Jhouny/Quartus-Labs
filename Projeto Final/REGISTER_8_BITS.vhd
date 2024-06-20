library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity REGISTER_8_BITS is
    port ( 
		data: in std_logic_vector(7 downto 0);
		CLK, RST : in std_logic;
		Q: out std_logic_vector(7 downto 0)
	);
end entity;
  
architecture func of REGISTER_8_BITS is
	component REGISTER_4_BITS is
		port (
			data: in std_logic_vector(3 downto 0);
			CLK, RST : in std_logic;
			Q: out std_logic_vector(3 downto 0)
		);
	end component;
	
	begin
		reg0 : REGISTER_4_BITS port map(data => data(3 downto 0), 
									    CLK => CLK, 
									    RST => RST, 
									    Q => Q(3 downto 0));
		reg1 : REGISTER_4_BITS port map(data => data(7 downto 4), 
									    CLK => CLK, 
									    RST => RST, 
									    Q => Q(7 downto 4));
										
end architecture;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity REGISTER_10_BITS is
    port ( 
		data: in std_logic_vector(9 downto 0);
		CLK, RST : in std_logic;
		Q: out std_logic_vector(9 downto 0)
	);
end entity;
  
architecture func of REGISTER_10_BITS is	
	-- Declaring D-latch entity
	component dff is
		port (
			D, CLK, CLRN, PRN : in std_logic;
			Q : out std_logic
		);
	end component;
	
	begin
		dff0 : dff port map(D => data(0), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(0));
		dff1 : dff port map(D => data(1), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(1));
		dff2 : dff port map(D => data(2), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(2));
		dff3 : dff port map(D => data(3), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(3));
		dff4 : dff port map(D => data(4), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(4));
		dff5 : dff port map(D => data(5), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(5));
		dff6 : dff port map(D => data(6), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(6));
		dff7 : dff port map(D => data(7), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(7));
		dff8 : dff port map(D => data(8), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(8));
		dff9 : dff port map(D => data(9), 
								  CLK => CLK, 
								  CLRN => not RST, 
								  PRN => '1',
								  Q => Q(9));
								 
end architecture;
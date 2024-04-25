library IEEE;
use IEEE.std_logic_1164.all;

entity PISO_8_BITS is
	port (
		CLR, PRESET : in std_logic;
		CLK, LOAD : in std_logic;
		D : in std_logic_vector(7 downto 0);
		S: out std_logic
	);
end entity;

architecture func of PISO_8_BITS is
	-- Declaring D-latch entity
	component dff is
		port (
			D, CLK, CLRN, PRN : in std_logic;
			Q : out std_logic
		);
	end component;
	-- Declaring LOAD_X_DESLOCAMENTO entity
	component LOAD_X_DESLOCAMENTO is
		port (
			LOAD, Din, DQ : in std_logic;
			Dout : out std_logic
		);
	end component;
	
	signal DFFQ : std_logic_vector(7 downto 0);
	signal DFFD : std_logic_vector(7 downto 0);
	
	begin
		ld0 : LOAD_X_DESLOCAMENTO port map(LOAD => LOAD, Din => D(0), DQ => '0', Dout => DFFD(0));
		dff0 : dff port map(D => DFFD(0), 
								  CLK => CLK, 
								  CLRN => CLR, 
								  PRN => PRESET,
								  Q => DFFQ(0));

		ld1 : LOAD_X_DESLOCAMENTO port map(LOAD => LOAD, Din => D(1), DQ => DFFQ(0), Dout => DFFD(1));
		dff1 : dff port map(D => DFFD(1), 
								  CLK => CLK, 
								  CLRN => CLR, 
								  PRN => PRESET,
								  Q => DFFQ(1));
		
		ld2 : LOAD_X_DESLOCAMENTO port map(LOAD => LOAD, Din => D(2), DQ => DFFQ(1), Dout => DFFD(2));
		dff2 : dff port map(D => DFFD(2), 
								  CLK => CLK, 
								  CLRN => CLR, 
								  PRN => PRESET,
								  Q => DFFQ(2));								  
								  
		ld3 : LOAD_X_DESLOCAMENTO port map(LOAD => LOAD, Din => D(3), DQ => DFFQ(2), Dout => DFFD(3));
		dff3 : dff port map(D => DFFD(3), 
								  CLK => CLK, 
								  CLRN => CLR, 
								  PRN => PRESET,
								  Q => DFFQ(3));
								  								  
		ld4 : LOAD_X_DESLOCAMENTO port map(LOAD => LOAD, Din => D(4), DQ => DFFQ(3), Dout => DFFD(4));
		dff4 : dff port map(D => DFFD(4), 
								  CLK => CLK, 
								  CLRN => CLR, 
								  PRN => PRESET,
								  Q => DFFQ(4));								
								  								  
		ld5 : LOAD_X_DESLOCAMENTO port map(LOAD => LOAD, Din => D(5), DQ => DFFQ(4), Dout => DFFD(5));
		dff5 : dff port map(D => DFFD(5), 
								  CLK => CLK, 
								  CLRN => CLR, 
								  PRN => PRESET,
								  Q => DFFQ(5));						
								  								  
		ld6 : LOAD_X_DESLOCAMENTO port map(LOAD => LOAD, Din => D(6), DQ => DFFQ(5), Dout => DFFD(6));
		dff6 : dff port map(D => DFFD(6), 
								  CLK => CLK, 
								  CLRN => CLR, 
								  PRN => PRESET,
								  Q => DFFQ(6));
															  
		ld7 : LOAD_X_DESLOCAMENTO port map(LOAD => LOAD, Din => D(7), DQ => DFFQ(6), Dout => DFFD(7));	  
		dff7 : dff port map(D => DFFD(7), 
								  CLK => CLK, 
								  CLRN => CLR, 
								  PRN => PRESET,
								  Q => DFFQ(7));
								  
		process(CLK, LOAD, CLR)
		begin
			if rising_edge(CLK) and CLR = '1' then
				S <= DFFQ(7);
			end if;
			if CLR = '0' or LOAD = '1' then
				S <= '0';
			end if;
		end process;


end architecture;
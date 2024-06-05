library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SEQUENCE_DETECTOR is
    port(
        input : in STD_LOGIC;
		  CLK : in STD_LOGIC;
		  RST : in STD_LOGIC;
        state : out STD_LOGIC_VECTOR(3 downto 0)
    );
end entity;

architecture detect of SEQUENCE_DETECTOR is
    signal estado : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
    process(CLK, RST)
    begin
        if rising_edge(CLK) then
			  case estado is
					when "0000" =>
						 if input = '1' then 
							  estado <= "0001";
						 else
							  estado <= "0000";
						 end if;
							  
					when "0001" =>
						 if input = '1' then 
							  estado <= "0001";
						 else
							  estado <= "0010";
						 end if;
							  
					when "0010" =>
						 if input = '1' then 
							  estado <= "0011";
						 else
							  estado <= "0000";
						 end if;
							  
					when "0011" =>
						 if input = '1' then 
							  estado <= "0100";
						 else
							  estado <= "0010";
						 end if;
							  
					when "0100" =>
						 if input = '1' then 
							  estado <= "0001";
						 else
							  estado <= "0101";
						 end if;
					
					when "0101" =>
						 if input = '1' then 
							  estado <= "0011";
						 else
							  estado <= "0110";
						 end if;
					
					when "0110" =>
						 if input = '1' then 
							  estado <= "0111";
						 else
							  estado <= "0000";
						 end if;
					
					when "0111" =>
						 if input = '1' then 
							  estado <= "0000";
						 else
							  estado <= "0010";
						 end if;
					when others => 
						estado <= "0000"; -- Default case
			  end case;
        end if;
		  if RST = '1' then
		      estado <= "0000";
		  end if;
    end process;
	 state <= estado;
end architecture;

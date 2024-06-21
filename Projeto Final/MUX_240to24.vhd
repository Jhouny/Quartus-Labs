library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX_240to24 is
	port(
		MEM0, MEM1, MEM2, MEM3, MEM4, MEM5, MEM6, MEM7, MEM8, MEM9 : in std_logic_vector(23 downto 0);
		CTRL : in std_logic_vector(3 downto 0); 
		NUM  : out std_logic_vector(23 downto 0)
	);
end entity;

architecture multiplex of MUX_240to24 is
	signal mem_out : std_logic_vector(23 downto 0);

begin
	process(CTRL, MEM0, MEM1, MEM2, MEM3, MEM4, MEM5, MEM6, MEM7, MEM8, MEM9) begin
--		mem_out <= MEM0 when CTRL = "0000" else
--		           MEM1 when CTRL = "0001" else
--				   MEM2 when CTRL = "0010" else
--				   MEM3 when CTRL = "0011" else
--				   MEM4 when CTRL = "0100" else
--				   MEM5 when CTRL = "0101" else
--				   MEM6 when CTRL = "0110" else
--				   MEM7 when CTRL = "0111" else
--				   MEM8 when CTRL = "1000" else
--				   MEM9 when CTRL = "1001" else
--				   MEM0;
		case CTRL is
			when "0000" => mem_out <= MEM0;
			when "0001" => mem_out <= MEM1;
			when "0010" => mem_out <= MEM2;
			when "0011" => mem_out <= MEM3;
			when "0100" => mem_out <= MEM4;
			when "0101" => mem_out <= MEM5;
			when "0110" => mem_out <= MEM6;
			when "0111" => mem_out <= MEM7;
			when "1000" => mem_out <= MEM8;
			when "1001" => mem_out <= MEM9;
			when others => mem_out <= MEM0;
		end case;
	end process;
	NUM <= mem_out;
end architecture;
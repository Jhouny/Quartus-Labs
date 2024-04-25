library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sequence_Gen_RA is
	port(
		CLK : in STD_LOGIC;
		Q : out STD_LOGIC_VECTOR(3 downto 0)
	);
end entity;

architecture func of Sequence_Gen_RA is
	TYPE STATE_TYPE IS (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15);
	signal state : STATE_TYPE;
	
	begin
		process(CLK) begin
			if rising_edge(CLK) then
				-- SEQ : 23580496ACE17BDF --
				case state is
					when s0 =>
						state <= s1;
						Q <= "0010";
					when s1 =>
						state <= s2;
						Q <= "0011";
					when s2 =>
						state <= s3;
						Q <= "0101";
					when s3 =>
						state <= s4;
						Q <= "1000";
					when s4 =>
						state <= s5;
						Q <= "0000";
					when s5 =>
						state <= s6;
						Q <= "0100";
					when s6 =>
						state <= s7;
						Q <= "1001";
					when s7 =>
						state <= s8;
						Q <= "0110";
					when s8 =>
						state <= s9;
						Q <= "1010";
					when s9 =>
						state <= s10;
						Q <= "1100";
					when s10 =>
						state <= s11;
						Q <= "1110";
					when s11 =>
						state <= s12;
						Q <= "0001";
					when s12 =>
						state <= s13;
						Q <= "0111";
					when s13 =>
						state <= s14;
						Q <= "1011";
					when s14 =>
						state <= s15;
						Q <= "1101";
					when s15 =>
						state <= s0;
						Q <= "1111";
				end case;
			end if;
		end process;
end architecture;
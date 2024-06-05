library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLOCK_CTRL is
	port(
		CLK_BASE_SLOW, CLK_BASE_FAST : in std_logic;
		STATE    : in std_logic_vector(3 downto 0);
		CONTINUE : in std_logic;
		FAST_CLK : out std_logic;
		SLOW_CLK : out std_logic;
		STOPPED  : out std_logic
	);
end entity;

architecture func of CLOCK_CTRL is
	signal clk_slow_ctrl, clk_fast_ctrl : std_logic;
	signal count : integer:=1;
	signal tmp, state_ctrl : std_logic := '0';
	
	begin
		process(CLK_BASE_FAST, CLK_BASE_SLOW, STATE) begin
			if STATE = "0111" and CONTINUE = '0' then -- IF CORRECT SEQUENCE REACHED
				clk_fast_ctrl <= '0';
				clk_slow_ctrl <= '0';
				state_ctrl <= '1';
			else
				clk_fast_ctrl <= CLK_BASE_FAST;
				clk_slow_ctrl <= CLK_BASE_SLOW;
				state_ctrl <= '0';
			end if;
		end process;
		SLOW_CLK <= clk_slow_ctrl;
		FAST_CLK <= clk_fast_ctrl;	
		STOPPED <= state_ctrl;
end architecture;
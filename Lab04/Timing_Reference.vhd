library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity Timing_Reference_20kHz is
    port ( 
		clk: in std_logic;
		StartStop : in std_logic;
      clk_1kHz: out std_logic	
	);

    end Timing_Reference_20kHz;
  
architecture freq_div of Timing_Reference_20kHz is
  
signal count: integer:=1;
signal tmp : std_logic := '0';
  
begin
process(clk, StartStop)
    begin
    if(clk'event and clk='1' and StartStop = '1') then
        count <=count+1;
        if (count = 50000000/40000) then
            tmp <= NOT tmp;
            count <= 1;
        end if;
    end if;
    clk_1kHz <= tmp;
end process;
 
end freq_div;
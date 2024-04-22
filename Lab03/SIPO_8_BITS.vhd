library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIPO_8_BITS is
  port(
    SERIAL: in STD_LOGIC;
    CLK: in STD_LOGIC;
    OUTPUT_ENABLE: in STD_LOGIC;
    RESET: in STD_LOGIC;
    Q: out STD_LOGIC_VECTOR(7 downto 0);
    FF_OUT: out STD_LOGIC_VECTOR(7 downto 0)
  );
end SIPO_8_BITS;

architecture behavioral of SIPO_8_BITS is
  signal data: STD_LOGIC_VECTOR(7 downto 0);
begin
  process (CLK, RESET)
  begin
    if RESET = '1' then
      data <= "00000000";
    else
      if rising_edge(CLK) then
          data(0) <= SERIAL;
          data(1) <= data(0);
          data(2) <= data(1);
          data(3) <= data(2);
          data(4) <= data(3);
          data(5) <= data(4);
          data(6) <= data(5);
          data(7) <= data(6);
      end if;
    end if;

	 FF_OUT <= data;
    if OUTPUT_ENABLE = '1' then
       Q <= data;
     end if;
  end process;

end behavioral;
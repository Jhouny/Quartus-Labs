library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIPO_8_BITS is
  port(
    SERIAL: in STD_LOGIC;
    CLK: in STD_LOGIC;
    OUTPUT_ENABLE: in STD_LOGIC;
    RESET: in STD_LOGIC;
    QO: out STD_LOGIC;
    Q1: out STD_LOGIC;
    Q2: out STD_LOGIC;
    Q3: out STD_LOGIC;
    Q4: out STD_LOGIC;
    Q5: out STD_LOGIC;
    Q6: out STD_LOGIC;
    Q7: out STD_LOGIC
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
        if OUTPUT_ENABLE = '1' then
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
    end if;
  end process;

  QO <= data(0);
  Q1 <= data(1);
  Q2 <= data(2);
  Q3 <= data(3);
  Q4 <= data(4);
  Q5 <= data(5);
  Q6 <= data(6);
  Q7 <= data(7);

end behavioral;
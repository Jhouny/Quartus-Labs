library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity test is
    Port (
        CLK : in std_logic;
        O : out std_logic_vector(15 downto 0)
    );
end entity test;

architecture Behavioral of test is
    signal start : unsigned(15 downto 0) := to_unsigned(64, 16);
    signal tmp : unsigned(15 downto 0);
    
    -- Integer square root function
    function int_sqrt(x : unsigned) return unsigned is
        variable res  : unsigned(15 downto 0) := (others => '0');
        variable bit  : unsigned(15 downto 0);
		variable temp_x : unsigned(15 downto 0);
        variable temp : unsigned(15 downto 0);
    begin
		temp_x := x;
		
        if x >= to_unsigned(1, 16) then
            bit := to_unsigned(1, 16);
        else
            bit := to_unsigned(0, 16);
        end if;
		
		res := shift_right(x + x, 1);
--        while bit /= 0 loop
--            temp := res + bit;
--            res := res / 2;
--            if temp_x >= temp then
--                temp_x := temp_x - temp;
--                res := res + bit;
--            end if;
--            bit := bit / 4;
--        end loop;
        return res;
    end function;

begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            tmp <= int_sqrt(start);
        end if;
    end process;

    O <= std_logic_vector(tmp);
end architecture Behavioral;

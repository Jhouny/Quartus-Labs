library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity test_de10 is
  port (max10_clk1_50  : in  std_logic;                     -- input clock 50 MHz
        key            : in  std_logic_vector(0 downto 0);  -- push button for reset
		RGB            : in std_logic_vector(23 downto 0);
		run_mem        : out std_logic;
		RST_DIGIT      : out std_logic;
		next_line      : out std_logic;
        vga_vs         : out std_logic;                     -- video out (4 bit resolution)
        vga_hs         : out std_logic;
        vga_r          : out std_logic_vector(3 downto 0);
        vga_g          : out std_logic_vector(3 downto 0);
        vga_b          : out std_logic_vector(3 downto 0);
		DIGIT_CTRL     : out std_logic_vector(3 downto 0));
end entity;

architecture shell of test_de10 is

signal clk_25   : std_logic;
signal reset    : std_logic;
signal reset_a, reset_b, reset_c, reset_d, reset_e : std_logic;
signal r, g, b  : std_logic_vector(7 downto 0);

begin

reset <= not key(0);

process
begin
  wait until rising_edge(max10_clk1_50);
  if (reset = '1') then
    clk_25 <= '0';
    reset_a <= '1';
    reset_b <= '1';
    reset_c <= '1';
    reset_d <= '1';
    reset_e <= '1';
  else
    clk_25 <= not clk_25;
    reset_a <= '0';
    reset_b <= reset_a;
    reset_c <= reset_b;
    reset_d <= reset_c;
    reset_e <= reset_d;
  end if;
end process;

-- generic submodule
test: entity work.test_image
    port map (clk_25    => clk_25,
              reset     => reset_e,
			  RGB       => RGB,
			  run_mem   => run_mem,
			  RST_DIGIT => RST_DIGIT,
			  next_line => next_line,
              vs_out    => vga_vs,
              hs_out    => vga_hs,
              de_out    => open,
              r_out     => r,
              g_out     => g,
              b_out     => b,
			  DIGIT_CTRL=> DIGIT_CTRL);

vga_r <= r(7 downto 4);
vga_g <= g(7 downto 4);
vga_b <= b(7 downto 4);

end architecture;

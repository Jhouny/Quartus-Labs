-- street_image.vhd
--
-- generate an VGA-image of a street scene
--
-- FPGA Vision Remote Lab http://h-brs.de/fpga-vision-lab
-- (c) Marco Winzker, Hochschule Bonn-Rhein-Sieg, 02.05.2019

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity test is
  port (clk_25   : in  std_logic;
        reset    : in  std_logic;
		RGB      : in std_logic_vector(23 downto 0);
        vs_out   : out std_logic;
        hs_out   : out std_logic;
        de_out   : out std_logic;
        r_out    : out std_logic_vector(7 downto 0);
        g_out    : out std_logic_vector(7 downto 0);
        b_out    : out std_logic_vector(7 downto 0));
end entity;

architecture behave of test is

-- timing of VGA signal
--   640 x 480 active pixel, 60 Hz, 25 MHz pixel frequency
--   vertical timing:   total lines 0 - 524, sync: 0 -  1, active:  36 - 515
--   horizontal timing: total pixel 0 - 799, sync: 0 - 95, active: 144 - 783

-- rgb values
constant rgb_bg  : std_logic_vector(23 downto 0) := x"FFFFFF";

signal h_count   : integer range 0 to  799 := 0;
signal v_count   : integer range 0 to  524 := 0;
signal frame_num : integer range 0 to 1023 := 0;
signal new_frame : std_logic := '0';

signal center_pos_h, center_pos_v : integer range 0 to 799;

signal hs_1, vs_1, de_1 : std_logic;
signal hs_2, vs_2, de_2 : std_logic;

signal h_pos_1   : integer range -200 to 799;
signal v_pos_1   : integer range -200 to 524;
signal h_gap_1, v_gap_1                 : integer range    0 to 1023;
signal x_value_a, x_value_b, x_value_c  : integer range    0 to 1023;

signal rgb_2     : std_logic_vector(23 downto 0);


begin

-- process for primary counters with reset
process
begin
  wait until rising_edge(clk_25);
  if (reset = '1') then
    h_count     <= 0;
	v_count     <= 0;
	new_frame   <= '0';
    frame_num   <= 500;
  else
	
	new_frame  <= '0'; -- default
	if (h_count = 799) then
	  h_count <= 0;
	  if ( v_count = 524 ) then
        v_count     <= 0;
        new_frame   <= '1';                
      else
        v_count <= v_count + 1;
      end if; -- v_count
    else  
      h_count <= h_count + 1;
    end if; -- h_count
        
    if (new_frame = '1') then
      if (frame_num = 1023) then
        frame_num <= 0;
      else
        frame_num <= frame_num + 1;
      end if;
    end if;
    
  end if; -- reset
end process;  
        
-- process with pipeline-stages for generation of image content and sync-signals
process
begin
  wait until rising_edge(clk_25);
  -- lane is shifted from center of the image (320 pixel plus offset 144)
  center_pos_h <= 144 + 320;
  center_pos_v <= 36 + 240;
  ------------------------------------ pipeline stage 1
  
  if ( h_count < 96 ) then
    hs_1 <= '1';  else  -- Horizontal Syncing (HS)
    hs_1 <= '0';  end if;

  if ( v_count < 2 ) then
    vs_1 <= '1';  else  -- Vertical Syncing (VS)
    vs_1 <= '0';  end if;

  if ( h_count >= 144 ) and   -- 144 = 96 (HS) + 40 back-porch + 8 left-border
     ( h_count <  784 ) and   -- 784 = 144 + 640 actual image data
     ( v_count >=  36 ) and   -- 36 = 2 (VS) + 25 back-porch + 8 top-border  
     ( v_count <  516 ) then  -- 516 = 36 + 480 actual image data
    de_1 <= '1'; else
    de_1 <= '0'; end if;
    
  h_pos_1 <= h_count - 144;  -- Position relative to start of image data
  v_pos_1 <= v_count -  36;
  
  -- calculate distance of this position from center of the lane
  if (h_count > center_pos_h) then
    h_gap_1 <= h_count - center_pos_h;
  else
    h_gap_1 <= center_pos_h - h_count;
  end if;  
  if (v_count > center_pos_v) then
    v_gap_1 <= v_count - center_pos_v;
  else
    v_gap_1 <= center_pos_v - v_count;
  end if;  
  
  ------------------------------------ pipeline stage 2
  hs_2      <= hs_1;
  vs_2      <= vs_1;
  de_2      <= de_1;
  
  if    (de_1 = '0') then
    rgb_2 <= x"000000";
  elsif (h_gap_1 > 8 or v_gap_1 > 8) then
    rgb_2 <= rgb_bg;
  elsif () then
    rgb_2 <= rgb_road;
  elsif () then
    rgb_2 <= rgb_line;
  elsif () then
    rgb_2 <= rgb_road;
  else
    rgb_2 <= rgb_gras;
  end if;  
  
  ------------------------------------ pipeline stage 3
  hs_out  <= hs_2;
  vs_out  <= vs_2;
  de_out  <= de_2;
  r_out   <= rgb_2(23 downto 16);
  g_out   <= rgb_2(15 downto  8);
  b_out   <= rgb_2( 7 downto  0);
  
end process;

end architecture;

-- street_image.vhd
--
-- generate an VGA-image of a street scene
--
-- FPGA Vision Remote Lab http://h-brs.de/fpga-vision-lab
-- (c) Marco Winzker, Hochschule Bonn-Rhein-Sieg, 02.05.2019

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity test_image is
  port (clk_25    : in  std_logic;
        reset     : in  std_logic;
		RGB       : in std_logic_vector(23 downto 0);
		run_mem   : out std_logic;
		RST_DIGIT : out std_logic;
		next_line : out std_logic;
        vs_out    : out std_logic;
        hs_out    : out std_logic;
        de_out    : out std_logic;
        r_out     : out std_logic_vector(7 downto 0);
        g_out     : out std_logic_vector(7 downto 0);
        b_out     : out std_logic_vector(7 downto 0);
		DIGIT_CTRL: out std_logic_vector(3 downto 0));
end entity;

architecture behave of test_image is

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

signal mem_ctrl, vertical_clk, rst_dgt : std_logic := '0';
signal dgt_ctrl : std_logic_vector(3 downto 0) := "0000";

signal center_pos_h, center_pos_v, top_left_x, top_left_y, padding_x : integer range 0 to 799;

signal hs_1, vs_1, de_1 : std_logic;
signal hs_2, vs_2, de_2 : std_logic;

signal h_pos_1   : integer range -200 to 799;
signal v_pos_1   : integer range -200 to 524;
signal h_gap_1, v_gap_1                 : integer range    0 to 1023;
signal h_gap_2, v_gap_2                 : integer range    -511 to 512;
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
	  vertical_clk <= '1';
	  if ( v_count = 524 ) then
        v_count   <= 0;
        new_frame <= '1';
      else
        v_count <= v_count + 1;
      end if; -- v_count
    else
	  vertical_clk <= '0';
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
  center_pos_h <= 144 + 320 - 8;
  center_pos_v <= 36 + 240 - 8;
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
  
  ------------------------------------ pipeline stage 2
  hs_2      <= hs_1;
  vs_2      <= vs_1;
  de_2      <= de_1;
  top_left_x <= 310;
  top_left_y <= center_pos_v;
  padding_x  <= 30;
  
  if    (de_1 = '0') then
    rgb_2 <= x"000000";
  elsif (v_count > top_left_y and v_count < top_left_y + 17) then
	if    (h_count > top_left_x and h_count < top_left_x + 21) then  -- Digito 9 (dir. -> esq.)
		if (h_count = top_left_x+1) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "1001";
		if (h_count > top_left_x+4) then
		  rgb_2 <= RGB;
		end if;
	elsif (h_count > top_left_x+1*padding_x and h_count < top_left_x+21+1*padding_x) then  -- Digito 8
		if(h_count = top_left_x+1+1*padding_x) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "1000";
		if (h_count > top_left_x+4+1*padding_x) then
		  rgb_2 <= RGB;
		end if;
	elsif (h_count > top_left_x+2*padding_x and h_count < top_left_x+21+2*padding_x) then  -- Digito 7
		if(h_count = top_left_x+1+2*padding_x) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "0111";
		if (h_count > top_left_x+4+2*padding_x) then
		  rgb_2 <= RGB;
		end if;
	elsif (h_count > top_left_x+27+2*padding_x and h_count < top_left_x+30+2*padding_x) then  -- hhh : mm
		if v_count > top_left_y + 5 and v_count < top_left_y + 8 then
		  rgb_2 <= x"000000";
		 elsif v_count > top_left_y + 9 and v_count < top_left_y + 12 then
		  rgb_2 <= x"000000";
		 else
		  rgb_2 <= rgb_bg;
		end if;
	elsif (h_count > top_left_x+3*padding_x and h_count < top_left_x+21+3*padding_x) then  -- Digito 6
		if(h_count = top_left_x+1+3*padding_x) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "0110";
		if (h_count > top_left_x+4+3*padding_x) then
		  rgb_2 <= RGB;
		end if;
	elsif (h_count > top_left_x+4*padding_x and h_count < top_left_x+21+4*padding_x) then  -- Digito 5
		if(h_count = top_left_x+1+4*padding_x) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "0101";
		if (h_count > top_left_x+4+4*padding_x) then
		  rgb_2 <= RGB;
		end if;
	elsif (h_count > top_left_x+27+4*padding_x and h_count < top_left_x+30+4*padding_x) then  -- mm : ss
		if v_count > top_left_y + 5 and v_count < top_left_y + 8 then
		  rgb_2 <= x"000000";
		 elsif v_count > top_left_y + 9 and v_count < top_left_y + 12 then
		  rgb_2 <= x"000000";
		 else
		  rgb_2 <= rgb_bg;
		end if;
	elsif (h_count > top_left_x+5*padding_x and h_count < top_left_x+21+5*padding_x) then  -- Digito 4
		if(h_count = top_left_x+1+5*padding_x) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "0100";
		if (h_count > top_left_x+4+5*padding_x) then
		  rgb_2 <= RGB;
		end if;
	elsif (h_count > top_left_x+6*padding_x and h_count < top_left_x+21+6*padding_x) then  -- Digito 3
		if(h_count = top_left_x+1+6*padding_x) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "0011";
		if (h_count > top_left_x+4+6*padding_x) then
		  rgb_2 <= RGB;
		end if;
	elsif (h_count > top_left_x+27+6*padding_x and h_count < top_left_x+30+6*padding_x) then  -- ss . msmsms
		if v_count > top_left_y + 12 and v_count < top_left_y + 16 then
		  rgb_2 <= x"000000";
		 else
		  rgb_2 <= rgb_bg;
		end if;
	elsif (h_count > top_left_x+7*padding_x and h_count < top_left_x+21+7*padding_x) then  -- Digito 2
		if(h_count = top_left_x+1+7*padding_x) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "0010";
		if (h_count > top_left_x+4+7*padding_x) then
		  rgb_2 <= RGB;
		end if;
	elsif (h_count > top_left_x+8*padding_x and h_count < top_left_x+21+8*padding_x) then  -- Digito 1
		if(h_count = top_left_x+1+8*padding_x) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "0001";
		if (h_count > top_left_x+4+8*padding_x) then
		  rgb_2 <= RGB;
		end if;
	elsif (h_count > top_left_x+9*padding_x and h_count < top_left_x+21+9*padding_x) then  -- Digito 0
		if(h_count = top_left_x+1+9*padding_x) then
			rst_dgt <= '1';
		else
			rst_dgt <= '0';
		end if;
		dgt_ctrl <= "0000";
		if (h_count > top_left_x+4+9*padding_x) then
		  rgb_2 <= RGB;
		end if;
	else
		mem_ctrl <= '0';
		rgb_2 <= rgb_bg;
	end if;
	mem_ctrl <= '1';
  else
	mem_ctrl <= '0';
	rgb_2 <= rgb_bg;
  end if;  
  
  ------------------------------------ pipeline stage 3
  run_mem    <= mem_ctrl;
  RST_DIGIT  <= rst_dgt;
  next_line  <= vertical_clk;
  hs_out     <= hs_2;
  vs_out     <= vs_2;
  de_out     <= de_2;
  r_out      <= rgb_2(23 downto 16);
  g_out      <= rgb_2(15 downto  8);
  b_out      <= rgb_2( 7 downto  0);
  DIGIT_CTRL <= dgt_ctrl;
  
end process;

end architecture;

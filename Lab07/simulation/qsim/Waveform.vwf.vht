-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/05/2024 12:33:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          main
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_vec_tst IS
END main_vhd_vec_tst;
ARCHITECTURE main_arch OF main_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK_BASE_FAST : STD_LOGIC;
SIGNAL CLK_BASE_SLOW : STD_LOGIC;
SIGNAL CONTINUE : STD_LOGIC;
SIGNAL FAST_CLK : STD_LOGIC;
SIGNAL MEM_CTRL : STD_LOGIC;
SIGNAL O : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SERIAL_OUT : STD_LOGIC;
SIGNAL SLOW_CLK : STD_LOGIC;
SIGNAL state : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL STOPPED : STD_LOGIC;
COMPONENT main
	PORT (
	A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK_BASE_FAST : IN STD_LOGIC;
	CLK_BASE_SLOW : IN STD_LOGIC;
	CONTINUE : IN STD_LOGIC;
	FAST_CLK : OUT STD_LOGIC;
	MEM_CTRL : OUT STD_LOGIC;
	O : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SERIAL_OUT : OUT STD_LOGIC;
	SLOW_CLK : OUT STD_LOGIC;
	state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	STOPPED : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CLK_BASE_FAST => CLK_BASE_FAST,
	CLK_BASE_SLOW => CLK_BASE_SLOW,
	CONTINUE => CONTINUE,
	FAST_CLK => FAST_CLK,
	MEM_CTRL => MEM_CTRL,
	O => O,
	S => S,
	SERIAL_OUT => SERIAL_OUT,
	SLOW_CLK => SLOW_CLK,
	state => state,
	STOPPED => STOPPED
	);

-- CLK_BASE_FAST
t_prcs_CLK_BASE_FAST: PROCESS
BEGIN
LOOP
	CLK_BASE_FAST <= '0';
	WAIT FOR 50 ps;
	CLK_BASE_FAST <= '1';
	WAIT FOR 50 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_BASE_FAST;

-- CLK_BASE_SLOW
t_prcs_CLK_BASE_SLOW: PROCESS
BEGIN
LOOP
	CLK_BASE_SLOW <= '0';
	WAIT FOR 800 ps;
	CLK_BASE_SLOW <= '1';
	WAIT FOR 800 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_BASE_SLOW;

-- CONTINUE
t_prcs_CONTINUE: PROCESS
BEGIN
	CONTINUE <= '0';
	WAIT FOR 426000 ps;
	CONTINUE <= '1';
	WAIT FOR 1600 ps;
	CONTINUE <= '0';
	WAIT FOR 33200 ps;
	CONTINUE <= '1';
	WAIT FOR 1600 ps;
	CONTINUE <= '0';
	WAIT FOR 185600 ps;
	CONTINUE <= '1';
	WAIT FOR 1600 ps;
	CONTINUE <= '0';
	WAIT FOR 16000 ps;
	CONTINUE <= '1';
	WAIT FOR 1600 ps;
	CONTINUE <= '0';
WAIT;
END PROCESS t_prcs_CONTINUE;
END main_arch;

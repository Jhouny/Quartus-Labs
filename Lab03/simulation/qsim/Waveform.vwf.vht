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
-- Generated on "04/22/2024 19:29:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Main
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Main_vhd_vec_tst IS
END Main_vhd_vec_tst;
ARCHITECTURE Main_arch OF Main_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL D2 : STD_LOGIC;
SIGNAL D3 : STD_LOGIC;
SIGNAL D4 : STD_LOGIC;
SIGNAL D5 : STD_LOGIC;
SIGNAL D6 : STD_LOGIC;
SIGNAL D7 : STD_LOGIC;
SIGNAL L0 : STD_LOGIC;
SIGNAL L1 : STD_LOGIC;
SIGNAL L2 : STD_LOGIC;
SIGNAL L3 : STD_LOGIC;
SIGNAL L4 : STD_LOGIC;
SIGNAL L5 : STD_LOGIC;
SIGNAL L6 : STD_LOGIC;
SIGNAL L7 : STD_LOGIC;
SIGNAL PB0 : STD_LOGIC;
SIGNAL PB1 : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL S1A : STD_LOGIC;
SIGNAL S1B : STD_LOGIC;
SIGNAL S1C : STD_LOGIC;
SIGNAL S1D : STD_LOGIC;
SIGNAL S1E : STD_LOGIC;
SIGNAL S1F : STD_LOGIC;
SIGNAL S1G : STD_LOGIC;
SIGNAL S2A : STD_LOGIC;
SIGNAL S2B : STD_LOGIC;
SIGNAL S2C : STD_LOGIC;
SIGNAL S2D : STD_LOGIC;
SIGNAL S2E : STD_LOGIC;
SIGNAL S2F : STD_LOGIC;
SIGNAL S2G : STD_LOGIC;
SIGNAL S4A : STD_LOGIC;
SIGNAL S4B : STD_LOGIC;
SIGNAL S4C : STD_LOGIC;
SIGNAL S4D : STD_LOGIC;
SIGNAL S4E : STD_LOGIC;
SIGNAL S4F : STD_LOGIC;
SIGNAL S4G : STD_LOGIC;
SIGNAL S5A : STD_LOGIC;
SIGNAL S5B : STD_LOGIC;
SIGNAL S5C : STD_LOGIC;
SIGNAL S5D : STD_LOGIC;
SIGNAL S5E : STD_LOGIC;
SIGNAL S5F : STD_LOGIC;
SIGNAL S5G : STD_LOGIC;
COMPONENT Main
	PORT (
	CLK : IN STD_LOGIC;
	D0 : IN STD_LOGIC;
	D1 : IN STD_LOGIC;
	D2 : IN STD_LOGIC;
	D3 : IN STD_LOGIC;
	D4 : IN STD_LOGIC;
	D5 : IN STD_LOGIC;
	D6 : IN STD_LOGIC;
	D7 : IN STD_LOGIC;
	L0 : OUT STD_LOGIC;
	L1 : OUT STD_LOGIC;
	L2 : OUT STD_LOGIC;
	L3 : OUT STD_LOGIC;
	L4 : OUT STD_LOGIC;
	L5 : OUT STD_LOGIC;
	L6 : OUT STD_LOGIC;
	L7 : OUT STD_LOGIC;
	PB0 : IN STD_LOGIC;
	PB1 : IN STD_LOGIC;
	S : OUT STD_LOGIC;
	S1A : OUT STD_LOGIC;
	S1B : OUT STD_LOGIC;
	S1C : OUT STD_LOGIC;
	S1D : OUT STD_LOGIC;
	S1E : OUT STD_LOGIC;
	S1F : OUT STD_LOGIC;
	S1G : OUT STD_LOGIC;
	S2A : OUT STD_LOGIC;
	S2B : OUT STD_LOGIC;
	S2C : OUT STD_LOGIC;
	S2D : OUT STD_LOGIC;
	S2E : OUT STD_LOGIC;
	S2F : OUT STD_LOGIC;
	S2G : OUT STD_LOGIC;
	S4A : OUT STD_LOGIC;
	S4B : OUT STD_LOGIC;
	S4C : OUT STD_LOGIC;
	S4D : OUT STD_LOGIC;
	S4E : OUT STD_LOGIC;
	S4F : OUT STD_LOGIC;
	S4G : OUT STD_LOGIC;
	S5A : OUT STD_LOGIC;
	S5B : OUT STD_LOGIC;
	S5C : OUT STD_LOGIC;
	S5D : OUT STD_LOGIC;
	S5E : OUT STD_LOGIC;
	S5F : OUT STD_LOGIC;
	S5G : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Main
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	D0 => D0,
	D1 => D1,
	D2 => D2,
	D3 => D3,
	D4 => D4,
	D5 => D5,
	D6 => D6,
	D7 => D7,
	L0 => L0,
	L1 => L1,
	L2 => L2,
	L3 => L3,
	L4 => L4,
	L5 => L5,
	L6 => L6,
	L7 => L7,
	PB0 => PB0,
	PB1 => PB1,
	S => S,
	S1A => S1A,
	S1B => S1B,
	S1C => S1C,
	S1D => S1D,
	S1E => S1E,
	S1F => S1F,
	S1G => S1G,
	S2A => S2A,
	S2B => S2B,
	S2C => S2C,
	S2D => S2D,
	S2E => S2E,
	S2F => S2F,
	S2G => S2G,
	S4A => S4A,
	S4B => S4B,
	S4C => S4C,
	S4D => S4D,
	S4E => S4E,
	S4F => S4F,
	S4G => S4G,
	S5A => S5A,
	S5B => S5B,
	S5C => S5C,
	S5D => S5D,
	S5E => S5E,
	S5F => S5F,
	S5G => S5G
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- PB1
t_prcs_PB1: PROCESS
BEGIN
	PB1 <= '1';
WAIT;
END PROCESS t_prcs_PB1;

-- PB0
t_prcs_PB0: PROCESS
BEGIN
	PB0 <= '1';
	WAIT FOR 80000 ps;
	PB0 <= '0';
WAIT;
END PROCESS t_prcs_PB0;

-- D0
t_prcs_D0: PROCESS
BEGIN
	D0 <= '1';
	WAIT FOR 80000 ps;
	D0 <= '0';
WAIT;
END PROCESS t_prcs_D0;

-- D1
t_prcs_D1: PROCESS
BEGIN
	D1 <= '0';
WAIT;
END PROCESS t_prcs_D1;

-- D2
t_prcs_D2: PROCESS
BEGIN
	D2 <= '1';
	WAIT FOR 80000 ps;
	D2 <= '0';
WAIT;
END PROCESS t_prcs_D2;

-- D3
t_prcs_D3: PROCESS
BEGIN
	D3 <= '0';
WAIT;
END PROCESS t_prcs_D3;

-- D4
t_prcs_D4: PROCESS
BEGIN
	D4 <= '0';
WAIT;
END PROCESS t_prcs_D4;

-- D5
t_prcs_D5: PROCESS
BEGIN
	D5 <= '1';
	WAIT FOR 80000 ps;
	D5 <= '0';
WAIT;
END PROCESS t_prcs_D5;

-- D6
t_prcs_D6: PROCESS
BEGIN
	D6 <= '1';
	WAIT FOR 80000 ps;
	D6 <= '0';
WAIT;
END PROCESS t_prcs_D6;

-- D7
t_prcs_D7: PROCESS
BEGIN
	D7 <= '0';
WAIT;
END PROCESS t_prcs_D7;
END Main_arch;

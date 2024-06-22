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
-- Generated on "06/21/2024 23:36:30"
                                                             
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
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL G : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED0 : STD_LOGIC;
SIGNAL PB : STD_LOGIC;
SIGNAL PB_2 : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL VGA_HS : STD_LOGIC;
SIGNAL VGA_VS : STD_LOGIC;
COMPONENT main
	PORT (
	B : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK : IN STD_LOGIC;
	G : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	LED0 : OUT STD_LOGIC;
	PB : IN STD_LOGIC;
	PB_2 : IN STD_LOGIC;
	R : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	VGA_HS : OUT STD_LOGIC;
	VGA_VS : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	B => B,
	CLK => CLK,
	G => G,
	LED0 => LED0,
	PB => PB,
	PB_2 => PB_2,
	R => R,
	VGA_HS => VGA_HS,
	VGA_VS => VGA_VS
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- PB
t_prcs_PB: PROCESS
BEGIN
	PB <= '1';
WAIT;
END PROCESS t_prcs_PB;

-- PB_2
t_prcs_PB_2: PROCESS
BEGIN
LOOP
	PB_2 <= '0';
	WAIT FOR 1000000 ps;
	PB_2 <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_PB_2;
END main_arch;

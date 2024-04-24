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
-- Generated on "04/23/2024 21:01:11"
                                                             
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
SIGNAL C00 : STD_LOGIC;
SIGNAL C01 : STD_LOGIC;
SIGNAL C02 : STD_LOGIC;
SIGNAL C03 : STD_LOGIC;
SIGNAL C10 : STD_LOGIC;
SIGNAL C11 : STD_LOGIC;
SIGNAL C12 : STD_LOGIC;
SIGNAL C13 : STD_LOGIC;
SIGNAL C20 : STD_LOGIC;
SIGNAL C21 : STD_LOGIC;
SIGNAL C22 : STD_LOGIC;
SIGNAL C23 : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
COMPONENT main
	PORT (
	C00 : OUT STD_LOGIC;
	C01 : OUT STD_LOGIC;
	C02 : OUT STD_LOGIC;
	C03 : OUT STD_LOGIC;
	C10 : OUT STD_LOGIC;
	C11 : OUT STD_LOGIC;
	C12 : OUT STD_LOGIC;
	C13 : OUT STD_LOGIC;
	C20 : OUT STD_LOGIC;
	C21 : OUT STD_LOGIC;
	C22 : OUT STD_LOGIC;
	C23 : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	C00 => C00,
	C01 => C01,
	C02 => C02,
	C03 => C03,
	C10 => C10,
	C11 => C11,
	C12 => C12,
	C13 => C13,
	C20 => C20,
	C21 => C21,
	C22 => C22,
	C23 => C23,
	CLK => CLK,
	RST => RST
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 1000 ps;
	CLK <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
END main_arch;

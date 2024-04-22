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
-- Generated on "04/21/2024 22:52:02"
                                                             
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
SIGNAL EN : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Q3 : STD_LOGIC;
SIGNAL Q4 : STD_LOGIC;
SIGNAL Q5 : STD_LOGIC;
SIGNAL Q6 : STD_LOGIC;
SIGNAL Q7 : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL SERIAL : STD_LOGIC;
COMPONENT Main
	PORT (
	CLK : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	Q3 : OUT STD_LOGIC;
	Q4 : OUT STD_LOGIC;
	Q5 : OUT STD_LOGIC;
	Q6 : OUT STD_LOGIC;
	Q7 : OUT STD_LOGIC;
	RST : IN STD_LOGIC;
	SERIAL : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Main
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	EN => EN,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	Q4 => Q4,
	Q5 => Q5,
	Q6 => Q6,
	Q7 => Q7,
	RST => RST,
	SERIAL => SERIAL
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

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '0';
	WAIT FOR 160000 ps;
	EN <= '1';
	WAIT FOR 690000 ps;
	EN <= '0';
WAIT;
END PROCESS t_prcs_EN;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
	WAIT FOR 260000 ps;
	RST <= '1';
	WAIT FOR 70000 ps;
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;

-- SERIAL
t_prcs_SERIAL: PROCESS
BEGIN
	SERIAL <= '0';
	WAIT FOR 10000 ps;
	SERIAL <= '1';
	WAIT FOR 20000 ps;
	SERIAL <= '0';
	WAIT FOR 50000 ps;
	SERIAL <= '1';
	WAIT FOR 30000 ps;
	SERIAL <= '0';
	WAIT FOR 30000 ps;
	SERIAL <= '1';
	WAIT FOR 20000 ps;
	SERIAL <= '0';
WAIT;
END PROCESS t_prcs_SERIAL;
END Main_arch;

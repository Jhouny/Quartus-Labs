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
-- Generated on "04/24/2024 11:13:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          tmp
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tmp_vhd_vec_tst IS
END tmp_vhd_vec_tst;
ARCHITECTURE tmp_arch OF tmp_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL RA00 : STD_LOGIC;
SIGNAL RA01 : STD_LOGIC;
SIGNAL RA02 : STD_LOGIC;
SIGNAL RA03 : STD_LOGIC;
SIGNAL RA10 : STD_LOGIC;
SIGNAL RA11 : STD_LOGIC;
SIGNAL RA12 : STD_LOGIC;
SIGNAL RA13 : STD_LOGIC;
SIGNAL RA20 : STD_LOGIC;
SIGNAL RA21 : STD_LOGIC;
SIGNAL RA22 : STD_LOGIC;
SIGNAL RA23 : STD_LOGIC;
SIGNAL RA30 : STD_LOGIC;
SIGNAL RA31 : STD_LOGIC;
SIGNAL RA32 : STD_LOGIC;
SIGNAL RA33 : STD_LOGIC;
SIGNAL RA40 : STD_LOGIC;
SIGNAL RA41 : STD_LOGIC;
SIGNAL RA42 : STD_LOGIC;
SIGNAL RA43 : STD_LOGIC;
SIGNAL RA50 : STD_LOGIC;
SIGNAL RA51 : STD_LOGIC;
SIGNAL RA52 : STD_LOGIC;
SIGNAL RA53 : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL STATE : STD_LOGIC;
COMPONENT tmp
	PORT (
	CLK : IN STD_LOGIC;
	RA00 : OUT STD_LOGIC;
	RA01 : OUT STD_LOGIC;
	RA02 : OUT STD_LOGIC;
	RA03 : OUT STD_LOGIC;
	RA10 : OUT STD_LOGIC;
	RA11 : OUT STD_LOGIC;
	RA12 : OUT STD_LOGIC;
	RA13 : OUT STD_LOGIC;
	RA20 : OUT STD_LOGIC;
	RA21 : OUT STD_LOGIC;
	RA22 : OUT STD_LOGIC;
	RA23 : OUT STD_LOGIC;
	RA30 : OUT STD_LOGIC;
	RA31 : OUT STD_LOGIC;
	RA32 : OUT STD_LOGIC;
	RA33 : OUT STD_LOGIC;
	RA40 : OUT STD_LOGIC;
	RA41 : OUT STD_LOGIC;
	RA42 : OUT STD_LOGIC;
	RA43 : OUT STD_LOGIC;
	RA50 : OUT STD_LOGIC;
	RA51 : OUT STD_LOGIC;
	RA52 : OUT STD_LOGIC;
	RA53 : OUT STD_LOGIC;
	RST : IN STD_LOGIC;
	STATE : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : tmp
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	RA00 => RA00,
	RA01 => RA01,
	RA02 => RA02,
	RA03 => RA03,
	RA10 => RA10,
	RA11 => RA11,
	RA12 => RA12,
	RA13 => RA13,
	RA20 => RA20,
	RA21 => RA21,
	RA22 => RA22,
	RA23 => RA23,
	RA30 => RA30,
	RA31 => RA31,
	RA32 => RA32,
	RA33 => RA33,
	RA40 => RA40,
	RA41 => RA41,
	RA42 => RA42,
	RA43 => RA43,
	RA50 => RA50,
	RA51 => RA51,
	RA52 => RA52,
	RA53 => RA53,
	RST => RST,
	STATE => STATE
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 1 ps;
	CLK <= '1';
	WAIT FOR 1 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
END tmp_arch;

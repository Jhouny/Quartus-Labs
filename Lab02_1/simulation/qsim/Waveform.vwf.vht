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
-- Generated on "04/21/2024 10:59:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ADDER_4_BITS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ADDER_4_BITS_vhd_vec_tst IS
END ADDER_4_BITS_vhd_vec_tst;
ARCHITECTURE ADDER_4_BITS_arch OF ADDER_4_BITS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL B3 : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
COMPONENT ADDER_4_BITS
	PORT (
	A0 : IN STD_LOGIC;
	A1 : IN STD_LOGIC;
	A2 : IN STD_LOGIC;
	A3 : IN STD_LOGIC;
	B0 : IN STD_LOGIC;
	B1 : IN STD_LOGIC;
	B2 : IN STD_LOGIC;
	B3 : IN STD_LOGIC;
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	S0 : OUT STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC;
	S3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ADDER_4_BITS
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	A3 => A3,
	B0 => B0,
	B1 => B1,
	B2 => B2,
	B3 => B3,
	Cin => Cin,
	Cout => Cout,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3
	);

-- A3
t_prcs_A3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		A3 <= '0';
		WAIT FOR 80000 ps;
		A3 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A3 <= '0';
WAIT;
END PROCESS t_prcs_A3;

-- A2
t_prcs_A2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A2 <= '0';
		WAIT FOR 40000 ps;
		A2 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A2 <= '0';
WAIT;
END PROCESS t_prcs_A2;

-- A1
t_prcs_A1: PROCESS
BEGIN
LOOP
	A1 <= '0';
	WAIT FOR 20000 ps;
	A1 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A1;

-- A0
t_prcs_A0: PROCESS
BEGIN
LOOP
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A0;

-- B3
t_prcs_B3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		B3 <= '0';
		WAIT FOR 140000 ps;
		B3 <= '1';
		WAIT FOR 140000 ps;
	END LOOP;
	B3 <= '0';
	WAIT FOR 140000 ps;
	B3 <= '1';
WAIT;
END PROCESS t_prcs_B3;

-- B2
t_prcs_B2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		B2 <= '0';
		WAIT FOR 120000 ps;
		B2 <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	B2 <= '0';
WAIT;
END PROCESS t_prcs_B2;

-- B1
t_prcs_B1: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		B1 <= '0';
		WAIT FOR 70000 ps;
		B1 <= '1';
		WAIT FOR 70000 ps;
	END LOOP;
	B1 <= '0';
WAIT;
END PROCESS t_prcs_B1;

-- B0
t_prcs_B0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		B0 <= '0';
		WAIT FOR 30000 ps;
		B0 <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	B0 <= '0';
	WAIT FOR 30000 ps;
	B0 <= '1';
WAIT;
END PROCESS t_prcs_B0;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;
END ADDER_4_BITS_arch;

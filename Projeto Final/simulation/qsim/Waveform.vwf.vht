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
-- Generated on "06/20/2024 00:43:33"
                                                             
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
SIGNAL ADDRESS : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL endereco : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(23 DOWNTO 0);
COMPONENT main
	PORT (
	ADDRESS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK : IN STD_LOGIC;
	endereco : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	ADDRESS => ADDRESS,
	CLK => CLK,
	endereco => endereco,
	Q => Q
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- endereco[7]
t_prcs_endereco_7: PROCESS
BEGIN
	endereco(7) <= '0';
	WAIT FOR 1920000 ps;
	endereco(7) <= '1';
	WAIT FOR 2560000 ps;
	endereco(7) <= '0';
	WAIT FOR 2560000 ps;
	endereco(7) <= '1';
	WAIT FOR 2560000 ps;
	endereco(7) <= '0';
WAIT;
END PROCESS t_prcs_endereco_7;
-- endereco[6]
t_prcs_endereco_6: PROCESS
BEGIN
	endereco(6) <= '0';
	WAIT FOR 640000 ps;
	FOR i IN 1 TO 3
	LOOP
		endereco(6) <= '1';
		WAIT FOR 1280000 ps;
		endereco(6) <= '0';
		WAIT FOR 1280000 ps;
	END LOOP;
	endereco(6) <= '1';
	WAIT FOR 1280000 ps;
	endereco(6) <= '0';
WAIT;
END PROCESS t_prcs_endereco_6;
-- endereco[5]
t_prcs_endereco_5: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		endereco(5) <= '1';
		WAIT FOR 640000 ps;
		endereco(5) <= '0';
		WAIT FOR 640000 ps;
	END LOOP;
	endereco(5) <= '1';
	WAIT FOR 640000 ps;
	endereco(5) <= '0';
WAIT;
END PROCESS t_prcs_endereco_5;
-- endereco[4]
t_prcs_endereco_4: PROCESS
BEGIN
	FOR i IN 1 TO 15
	LOOP
		endereco(4) <= '0';
		WAIT FOR 320000 ps;
		endereco(4) <= '1';
		WAIT FOR 320000 ps;
	END LOOP;
	endereco(4) <= '0';
	WAIT FOR 320000 ps;
	endereco(4) <= '1';
WAIT;
END PROCESS t_prcs_endereco_4;
-- endereco[3]
t_prcs_endereco_3: PROCESS
BEGIN
	FOR i IN 1 TO 31
	LOOP
		endereco(3) <= '0';
		WAIT FOR 160000 ps;
		endereco(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	endereco(3) <= '0';
WAIT;
END PROCESS t_prcs_endereco_3;
-- endereco[2]
t_prcs_endereco_2: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		endereco(2) <= '0';
		WAIT FOR 80000 ps;
		endereco(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	endereco(2) <= '0';
WAIT;
END PROCESS t_prcs_endereco_2;
-- endereco[1]
t_prcs_endereco_1: PROCESS
BEGIN
LOOP
	endereco(1) <= '0';
	WAIT FOR 40000 ps;
	endereco(1) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_endereco_1;
-- endereco[0]
t_prcs_endereco_0: PROCESS
BEGIN
LOOP
	endereco(0) <= '0';
	WAIT FOR 20000 ps;
	endereco(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_endereco_0;
END main_arch;

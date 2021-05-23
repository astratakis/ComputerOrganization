----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:16 05/22/2021 
-- Design Name: 
-- Module Name:    PROCESSOR_PIPELINE - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PROCESSOR_PIPELINE is
	port(
		Clk: in std_logic;
		Reset: in std_logic;
		MM_RdData: in std_logic_vector(31 downto 0);
		Instr: in std_logic_vector(31 downto 0);
		
		Instr_addr: out std_logic_vector(31 downto 0);
		MM_WrEn: out std_logic;
		MM_Addr: out std_logic_vector(10 downto 0);
		MM_WrData: out std_logic_vector(31 downto 0)
	);
	
end PROCESSOR_PIPELINE;

architecture processor of PROCESSOR_PIPELINE is

	component DATAPATH_PIPELINE is 
		port(
			PC_LdEn: in std_logic;
			Reset: in std_logic;
			Clk: in std_logic;
			WB_control: in std_logic_vector(1 downto 0);
			MEM_control: in std_logic_vector(3 downto 0);
			EX_control: in std_logic_vector(4 downto 0);
			ImmExt: in std_logic_vector(1 downto 0);
			RF_B_sel: in std_logic;
			Instr_in: in std_logic_vector(31 downto 0);
			A_sel: in std_logic_vector(1 downto 0);
			B_sel: in std_logic_vector(1 downto 0);
			MM_RdData: in std_logic_vector(31 downto 0);
			MEM_DataIn_sel: in std_logic;
			IF_DEC_WE: in std_logic;
			DEC_EX_WE: in std_logic;
			
			Instr_out: out std_logic_vector(31 downto 0);
			PC: out std_logic_vector(31 downto 0);
			MM_WrEn: out std_logic;
			MM_Addr: out std_logic_vector(10 downto 0);
			MM_WrData: out std_logic_vector(31 downto 0)			
		);
	end component;
	
	component CONTROL_PIPELINE is
		port(
			Instr: in std_logic_vector(31 downto 0);
			Reset: in std_logic;
			Clk: in std_logic;
			
			PC_LdEn: out std_logic;
			A_sel: out std_logic_vector(1 downto 0);
			B_sel: out std_logic_vector(1 downto 0);
			WB_control: out std_logic_vector(1 downto 0);
			MEM_control: out std_logic_vector(3 downto 0);
			EX_control: out std_logic_vector(4 downto 0);
			RF_B_sel: out std_logic;
			ImmExt: out std_logic_vector(1 downto 0);
			MEM_DataIn_sel: out std_logic;
			IF_DEC_WE: out std_logic;
			DEC_EX_WE: out std_logic
		);
	end component;
	
	signal sig_pc_lden: std_logic;
	signal sig_wb_control: std_logic_vector(1 downto 0);
	signal sig_mem_control: std_logic_vector(3 downto 0);
	signal sig_ex_control: std_logic_vector(4 downto 0);
	signal sig_immext: std_logic_vector(1 downto 0);
	signal sig_rf_b_sel: std_logic;
	signal sig_a_sel: std_logic_vector(1 downto 0);
	signal sig_b_sel: std_logic_vector(1 downto 0);
	signal sig_instr_out: std_logic_vector(31 downto 0);
	signal sig_mem_datain_sel: std_logic;
	signal sig_if_dec_we: std_logic;
	signal sig_dec_ex_we: std_logic;
	
begin

	datapath: DATAPATH_PIPELINE port map(
			PC_LdEn => sig_pc_lden,
			Reset => Reset,
			Clk => Clk,
			WB_control => sig_wb_control,
			MEM_control => sig_mem_control,
			EX_control => sig_ex_control,
			ImmExt => sig_immext,
			RF_B_sel => sig_rf_b_sel,
			Instr_in => Instr,
			A_sel => sig_a_sel,
			B_sel => sig_b_sel,
			MM_RdData => MM_RdData,
			MEM_DataIn_sel => sig_mem_datain_sel,
			IF_DEC_WE => sig_if_dec_we,
			DEC_EX_WE => sig_dec_ex_we,
			
			Instr_out => sig_instr_out,
			PC => Instr_addr,
			MM_WrEn => MM_WrEn,
			MM_Addr => MM_Addr,
			MM_WrData => MM_WrData
	);
	
	control: CONTROL_PIPELINE port map(
			Instr => sig_instr_out,
			Reset => Reset,
			Clk => Clk,
			
			PC_LdEn => sig_pc_lden,
			A_sel => sig_a_sel,
			B_sel => sig_b_sel,
			WB_control => sig_wb_control,
			MEM_control => sig_mem_control,
			EX_control => sig_ex_control,
			RF_B_sel => sig_rf_b_sel,
			ImmExt => sig_immext,
			MEM_DataIn_sel => sig_mem_datain_sel,
			IF_DEC_WE => sig_if_dec_we,
			DEC_EX_WE => sig_dec_ex_we			
	);
	
	
end processor;


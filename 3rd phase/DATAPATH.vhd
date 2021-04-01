----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     01/04/2021 
-- Module Name:    DATAPATH - data_path 
-- Project Name:    HPY302_LAB
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

entity DATAPATH is
	port(
		PC_Sel: in std_logic;
		PC_LdEn: in std_logic;
		Reset: in std_logic;
		Clk: in std_logic;
		RF_WrEn: in std_logic;
		RF_WrData_sel: in std_logic;
		RF_B_sel: in std_logic;
		ImmExt: in std_logic_vector(1 downto 0);
		Instr: in std_logic_vector(31 downto 0);
		ALU_Bin_sel: in std_logic;
		ALU_func: in std_logic_vector(3 downto 0);		
		MM_RdData: in std_logic_vector(31 downto 0);
		ByteOp: in std_logic;
		MEM_WrEn: in std_logic;
		
		ALU_zero: out std_logic;
		PC: out std_logic_vector(31 downto 0);
		MM_WrEn: out std_logic;
		MM_Addr: out std_logic_vector(10 downto 0);
		MM_WrData: out std_logic_vector(31 downto 0)
	);
	
end DATAPATH;

architecture data_path of DATAPATH is

	component IFSTAGE is
		port(
			--Inputs
			PC_Immed: in std_logic_vector(31 downto 0);
			PC_sel: in std_logic;
			PC_LdEn: in std_logic;
			Reset: in std_logic;
			Clk: in std_logic;
			
			--Output
			PC: out std_logic_vector(31 downto 0)
			);
	end component;
	
	component DECSTAGE is
		port(
			--Inputs
			Instr		: in std_logic_vector(31 downto 0);
			RF_WrEn	: in std_logic;
			ALU_out	: in std_logic_vector(31 downto 0);
			MEM_out	: in std_logic_vector(31 downto 0);
			RF_WrData_sel: in std_logic;
			RF_B_sel	: in std_logic;
			ImmExt	: in std_logic_vector(1 downto 0);
			Clk		: in std_logic;
			
			--Outputs
			Immed		: out std_logic_vector(31 downto 0);
			RF_A		: out std_logic_vector(31 downto 0);
			RF_B		: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component EXSTAGE is
		port(
			--Inputs
			RF_A: in std_logic_vector(31 downto 0);
			RF_B: in std_logic_vector(31 downto 0);
			Immed: in std_logic_vector(31 downto 0);
			ALU_Bin_sel: in std_logic;
			ALU_func: in std_logic_vector(3 downto 0);
			
			--Outputs
			ALU_out: out std_logic_vector(31 downto 0);
			ALU_zero: out std_logic
			);
	end component;
	
		component MEMSTAGE is
		port(
			--Inputs
			clk: in std_logic;
			MEM_WrEn: in std_logic;
			ByteOp: in std_logic;
			ALU_MEM_Addr: in std_logic_vector(31 downto 0);
			MEM_DataIn: in std_logic_vector(31 downto 0);	
			
			MM_RdData: in std_logic_vector(31 downto 0);

			
			--Outputs
			MEM_DataOut: out std_logic_vector(31 downto 0);
			MM_Addr: out std_logic_vector(10 downto 0);
			MM_WrEn: out std_logic;
			MM_WrData: out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal sig_immed: std_logic_vector(31 downto 0);
	signal sig_alu_out: std_logic_vector(31 downto 0);
	signal sig_mem_out: std_logic_vector(31 downto 0);
	signal sig_rf_a: std_logic_vector(31 downto 0);
	signal sig_rf_b: std_logic_vector(31 downto 0);	
	
begin

	if_stage: IFSTAGE port map(
			PC_Immed => sig_immed,
			PC_sel => PC_sel,
			PC_LdEn => PC_LdEn,
			Reset => Reset,
			Clk => Clk,
			
			PC => PC
	);
	
	dec_stage: DECSTAGE port map(
			Instr => Instr,
			RF_WrEn => RF_WrEn,
			ALU_out => sig_alu_out,
			MEM_out => sig_mem_out,
			RF_WrData_sel => RF_WrData_sel,
			RF_B_sel => RF_B_sel,
			ImmExt => ImmExt,
			Clk => Clk,
			
			Immed => sig_immed,
			RF_A => sig_rf_a,
			RF_B => sig_rf_b
		);
		
	ex_stage: EXSTAGE port map(
			RF_A => sig_rf_a,
			RF_B => sig_rf_b,
			Immed => sig_immed,
			ALU_Bin_sel => ALU_Bin_sel,
			ALU_func => ALU_func,
			
			ALU_out => sig_alu_out,
			ALU_zero => ALU_zero
			);
			
	mem_stage: MEMSTAGE port map(
			clk => Clk,
			MEM_WrEn => MEM_WrEn,
			ByteOp => ByteOp,
			ALU_MEM_Addr => sig_alu_out,
			MEM_DataIn => sig_rf_a,	
			
			MM_RdData => MM_RdData,

			MEM_DataOut => sig_mem_out,
			MM_Addr => MM_Addr,
			MM_WrEn => MM_WrEn,
			MM_WrData => MM_WrData
		);

end data_path;


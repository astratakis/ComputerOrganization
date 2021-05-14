----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     10/05/2021 
-- Module Name:     PROCESSOR_MC - process_mc
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

entity PROCESSOR_MC is
	port(
		Reset: in std_logic;
		Clk: in std_logic
		);
end PROCESSOR_MC;

architecture process_mc of PROCESSOR_MC is
	
	-- Control
	component CONTROL_MC is
		port(
			Inst_in: in std_logic_vector(31 downto 0);
			ALU_zero: in std_logic;
			Reset: in std_logic;
			Clk: in std_logic;
			
			PC_Sel_con: out std_logic;
			PC_LdEn_con: out std_logic;
			RF_WrData_sel_con: out std_logic;
			RF_B_sel_con: out std_logic;
			RF_WrEn_con: out std_logic;
			ImmExt_con: out std_logic_vector(1 downto 0);
			ALU_Bin_sel_con: out std_logic;
			ALU_func_con: out std_logic_vector(3 downto 0);
			ByteOp_con: out std_logic;
			MEM_WrEn_con: out std_logic;
			instr_reg_we_con: out std_logic;	
			immed_reg_we_con: out std_logic;		
			A_reg_we_con: out std_logic;	
			B_reg_we_con: out std_logic;	
			ALU_reg_we_con: out std_logic;
			MEM_data_reg_we_con: out std_logic	
		);
	end component;

	-- Datapath
	component DATAPATH_MC is
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
			instr_reg_we: in std_logic;	
			immed_reg_we: in std_logic;		
			A_reg_we: in std_logic;	
			B_reg_we: in std_logic;	
			ALU_reg_we: in std_logic;
			MEM_data_reg_we: in std_logic;
			
			ALU_zero: out std_logic;
			PC: out std_logic_vector(31 downto 0);
			MM_WrEn: out std_logic;
			MM_Addr: out std_logic_vector(10 downto 0);
			MM_WrData: out std_logic_vector(31 downto 0)
		);
		
	end component;
	
	--RAM
	component RAM is
		port(
			--Inputs
			clk: in std_logic;
			inst_addr: in std_logic_vector(10 downto 0);
			data_we: in std_logic;
			data_addr: in std_logic_vector(10 downto 0);
			data_din: in std_logic_vector(31 downto 0);
			
			--Outputs
			inst_dout: out std_logic_vector(31 downto 0);
			data_dout: out std_logic_vector(31 downto 0)
		);	
	end component;	
	
	--Internal signals
	signal sig_PC_Sel: std_logic;
	signal sig_PC_LdEn: std_logic;
	signal sig_RF_WrData_sel: std_logic;
	signal sig_RF_B_sel: std_logic;
	signal sig_RF_WrEn: std_logic;
	signal sig_ImmExt: std_logic_vector(1 downto 0);
	signal sig_ALU_Bin_sel: std_logic;
	signal sig_ALU_func: std_logic_vector(3 downto 0);
	signal sig_ByteOp: std_logic;
	signal sig_MEM_WrEn: std_logic;
	signal sig_RF_B: std_logic_vector(31 downto 0);
	signal sig_RF_A: std_logic_vector(31 downto 0);
	signal sig_Instr: std_logic_vector(31 downto 0);
	signal sig_MM_RdData: std_logic_vector(31 downto 0);
	signal sig_MM_WrEn: std_logic;
	signal sig_MM_Addr: std_logic_vector(10 downto 0);
	signal sig_MM_WrData: std_logic_vector(31 downto 0);
	signal sig_PC: std_logic_vector(31 downto 0);
	signal sig_ALU_zero: std_logic;
	signal sig_instr_reg_we: std_logic;	
	signal sig_immed_reg_we: std_logic;		
	signal sig_A_reg_we: std_logic;	
	signal sig_B_reg_we: std_logic;	
	signal sig_ALU_reg_we: std_logic;
	signal sig_MEM_data_reg_we: std_logic;

begin
	control_unit: CONTROL_MC PORT MAP (
		Inst_in => sig_Instr,
		ALU_zero => sig_ALU_zero,
		Reset => Reset,
		Clk => Clk,
		
		PC_Sel_con => sig_PC_Sel,
		PC_LdEn_con => sig_PC_LdEn,
		RF_WrData_sel_con => sig_RF_WrData_sel,
		RF_B_sel_con => sig_RF_B_sel,
		RF_WrEn_con => sig_RF_WrEn,
		ImmExt_con => sig_ImmExt,
		ALU_Bin_sel_con => sig_ALU_Bin_sel,
		ALU_func_con => sig_ALU_func,
		ByteOp_con => sig_ByteOp,
		MEM_WrEn_con => sig_MEM_WrEn,
      instr_reg_we_con => sig_instr_reg_we,
      immed_reg_we_con => sig_immed_reg_we,
      A_reg_we_con => sig_A_reg_we,
      B_reg_we_con => sig_B_reg_we,
      ALU_reg_we_con => sig_ALU_reg_we,
      MEM_data_reg_we_con => sig_MEM_data_reg_we
	);
	
   data_path: DATAPATH_MC PORT MAP(
		PC_Sel => sig_PC_Sel,
		PC_LdEn => sig_PC_LdEn,
		Reset => Reset,
		Clk => Clk,
		RF_WrEn => sig_RF_WrEn,
		RF_WrData_sel => sig_RF_WrData_sel,
		RF_B_sel => sig_RF_B_sel,
		ImmExt => sig_ImmExt,
		Instr => sig_Instr,
		ALU_Bin_sel => sig_ALU_Bin_sel,
		ALU_func => sig_ALU_func,		
		MM_RdData => sig_MM_RdData,
		ByteOp => sig_ByteOp,
		MEM_WrEn => sig_MEM_WrEn,
		instr_reg_we => sig_instr_reg_we,	
		immed_reg_we => sig_immed_reg_we,
		A_reg_we => sig_A_reg_we,
		B_reg_we =>	sig_B_reg_we,
		ALU_reg_we => sig_ALU_reg_we,
		MEM_data_reg_we => sig_MEM_data_reg_we,	
		
		ALU_zero => sig_ALU_zero,
		PC => sig_PC,
		MM_WrEn => sig_MM_WrEn,
		MM_Addr => sig_MM_Addr,
		MM_WrData => sig_MM_WrData
	);	

	--RAM
	random_access_memory: RAM port map(
		--Inputs
		clk => Clk,
		inst_addr => sig_PC(12 downto 2),
		data_we => sig_MM_WrEn,
		data_addr => sig_MM_Addr,
		data_din => sig_MM_WrData,
		
		--Outputs
		inst_dout => sig_Instr,
		data_dout => sig_MM_RdData
	);	
end process_mc;


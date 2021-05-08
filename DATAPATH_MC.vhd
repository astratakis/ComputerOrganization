----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     08/05/2021 
-- Module Name:    DATAPATH - data_path 
-- Project Name:    HPY302_LAB
-- Description:	Implementation of the processor's datapath
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



entity DATAPATH_MC is
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
	
end DATAPATH_MC;

architecture data_path of DATAPATH_MC is
	
	--IFSTAGE
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
	
	--DECSTAGE
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
			RST		: in std_logic;	
			
			--Outputs
			Immed		: out std_logic_vector(31 downto 0);
			RF_A		: out std_logic_vector(31 downto 0);
			RF_B		: out std_logic_vector(31 downto 0)
		);
	end component;
	
	--EXSTAGE
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
	
	--MEMSTAGE
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
	
	--Register
	component regist is
    port( 
    --Inputs
    CLK: in std_logic;    
    RST: in std_logic;
    Datain: in std_logic_vector(31 downto 0);
    WE: in std_logic;	--write enable
	 
    --Outputs
    Dataout: out std_logic_vector(31 downto 0)
	 );
	 end component;
	 
	signal instr_reg_in: std_logic_vector(31 downto 0);
	signal instr_reg_out: std_logic_vector(31 downto 0);
	signal immed_reg_in: std_logic_vector(31 downto 0);
	signal immed_reg_out: std_logic_vector(31 downto 0);
	signal A_reg_in: std_logic_vector(31 downto 0);
	signal A_reg_out: std_logic_vector(31 downto 0);
	signal B_reg_in: std_logic_vector(31 downto 0);
	signal B_reg_out: std_logic_vector(31 downto 0);
	signal ALU_reg_in: std_logic_vector(31 downto 0);
	signal ALU_reg_out: std_logic_vector(31 downto 0);
	signal MEM_data_reg_in: std_logic_vector(31 downto 0);
	signal MEM_data_reg_out: std_logic_vector(31 downto 0);
	
	
begin
	
	--Instruction register
	instr_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => Instr,
		WE => instr_reg_we,
		Dataout => instr_reg_out
		);
		
	--Immediate value register
	immed_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => immed_reg_in,
		WE => immed_reg_we,
		Dataout => immed_reg_out
		);
		
	--RF[A] register
	A_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => A_reg_in,
		WE => A_reg_we,
		Dataout => A_reg_out
		);
		
	--RF[B] register		
	B_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => B_reg_in,
		WE => B_reg_we,
		Dataout => B_reg_out
		);
	
	--ALU register
	ALU_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => ALU_reg_in,
		WE => ALU_reg_we,
		Dataout => ALU_reg_out
		);
	
	--MEM data register
	MEM_data_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => MEM_data_reg_in,
		WE => MEM_data_reg_we,
		Dataout => MEM_data_reg_out
		);	
		
	if_stage: IFSTAGE port map(
		PC_Immed => immed_reg_out,
		PC_sel => PC_sel,
		PC_LdEn => PC_LdEn,
		Reset => Reset,
		Clk => Clk,
			
		PC => PC
	);
	
	dec_stage: DECSTAGE port map(
		Instr => instr_reg_out,
		RF_WrEn => RF_WrEn,
		ALU_out => ALU_reg_out,
		MEM_out => MEM_data_reg_out,
		RF_WrData_sel => RF_WrData_sel,
		RF_B_sel => RF_B_sel,
		ImmExt => ImmExt,
		Clk => Clk,
		RST => Reset,
			
		Immed => immed_reg_in,
		RF_A => A_reg_in,
		RF_B => B_reg_in
		);	
		
	ex_stage: EXSTAGE port map(
		RF_A => A_reg_out,
		RF_B => B_reg_out,
		Immed => immed_reg_out,
		ALU_Bin_sel => ALU_Bin_sel,
		ALU_func => ALU_func,
			
		ALU_out => ALU_reg_in,
		ALU_zero => ALU_zero
		);		

	mem_stage: MEMSTAGE port map(
		clk => Clk,
		MEM_WrEn => MEM_WrEn,
		ByteOp => ByteOp,
		ALU_MEM_Addr => ALU_reg_out,
		MEM_DataIn => B_reg_out,	
			
		MM_RdData => MM_RdData,

		MEM_DataOut => MEM_data_reg_in,
		MM_Addr => MM_Addr,
		MM_WrEn => MM_WrEn,
		MM_WrData => MM_WrData
		);
end data_path;


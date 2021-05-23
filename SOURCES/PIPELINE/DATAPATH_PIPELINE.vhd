----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     14/05/2021 
-- Module Name:    DATAPATH_PIPELINE - data_path 
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

entity DATAPATH_PIPELINE is
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
	
end DATAPATH_PIPELINE;

architecture data_path of DATAPATH_PIPELINE is
	
	--DECSTAGE
	component DECSTAGE_PIPELINE is
		port(
			--Inputs
			Instr		: in std_logic_vector(31 downto 0);
			RF_WrEn	: in std_logic;
			RF_WrData: in std_logic_vector(31 downto 0);
			RF_B_sel	: in std_logic;
			ImmExt	: in std_logic_vector(1 downto 0);
			Clk		: in std_logic;
			RST 		: in std_logic;
			RF_WrAddr: in std_logic_vector(4 downto 0);
			
			--Outputs
			Immed		: out std_logic_vector(31 downto 0);
			RF_A		: out std_logic_vector(31 downto 0);
			RF_B		: out std_logic_vector(31 downto 0)
			);
	end component;

	
	--EXSTAGE
	component EXSTAGE_PIPELINE is
		port(
			--Inputs
			RF_A: in std_logic_vector(31 downto 0);
			RF_B: in std_logic_vector(31 downto 0);
			ALU_out_previous: in std_logic_vector(31 downto 0);
			WB_WrData: in std_logic_vector(31 downto 0);
			Immed: in std_logic_vector(31 downto 0);
			A_sel: in std_logic_vector(1 downto 0);
			B_sel: in std_logic_vector(1 downto 0);
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
	
	--Incrementor
	component incrementor_4 is
		port(
			--Input
			Increm_in: in std_logic_vector(31 downto 0);
			
			--Output
			Increm_out: out std_logic_vector(31 downto 0)
			);
	end component;
	
	--Adder
	component adder is
		port(
			--Inputs
			Adder_in1: in std_logic_vector(31 downto 0);
			Adder_in2: in std_logic_vector(31 downto 0);
			
			--Outputs
			Adder_out: out std_logic_vector(31 downto 0)
			);
	end component;
	
	--Multiplexer
	component mux_2to1 is
		port(
			--Inputs
			Sel: in std_logic;
			Datain0: in std_logic_vector(31 downto 0);
			Datain1: in std_logic_vector(31 downto 0);
			
			--Output
			Dataout: out std_logic_vector(31 downto 0)
			);
	end component;
	
	--1-bit register
	component register_1bit is 
		port(
			--Inputs
			CLK: in std_logic;
			RST: in std_logic;
			Datain: in std_logic;
			WE: in std_logic;
			
			--Output
			Dataout: out std_logic
			);
	end component;
	
	--2-bit register
	component register_2bit is 
		port(
			--Inputs
			CLK: in std_logic;
			RST: in std_logic;
			Datain: in std_logic_vector(1 downto 0);
			WE: in std_logic;
			
			--Output
			Dataout: out std_logic_vector(1 downto 0)
			);
	end component;
	
	--4-bit register
	component register_4bit is 
		port(
			--Inputs
			CLK: in std_logic;
			RST: in std_logic;
			Datain: in std_logic_vector(3 downto 0);
			WE: in std_logic;
			
			--Output
			Dataout: out std_logic_vector(3 downto 0)
			);
	end component;

	--5-bit register
	component register_5bit is 
		port(
			--Inputs
			CLK: in std_logic;
			RST: in std_logic;
			Datain: in std_logic_vector(4 downto 0);
			WE: in std_logic;
			
			--Output
			Dataout: out std_logic_vector(4 downto 0)
			);
	end component;
	
	--32-bit register
	component regist is 
		port(
			--Inputs
			CLK: in std_logic;
			RST: in std_logic;
			Datain: in std_logic_vector(31 downto 0);
			WE: in std_logic;
			
			--Output
			Dataout: out std_logic_vector(31 downto 0)
			);
	end component;
	
	signal branch_sel: std_logic;
	
	signal pc_input: std_logic_vector(31 downto 0);
	signal pc_output: std_logic_vector(31 downto 0);
	signal instr_addr_if: std_logic_vector(31 downto 0);
	
	signal instr_addr_dec: std_logic_vector(31 downto 0);
	signal instr_dec: std_logic_vector(31 downto 0);
	signal rf_a_dec: std_logic_vector(31 downto 0);
	signal rf_b_dec: std_logic_vector(31 downto 0);
	signal immed_dec: std_logic_vector(31 downto 0);
	
	signal wb_ex: std_logic_vector(1 downto 0);
	signal mem_ex: std_logic_vector(3 downto 0);
	signal ex_ex: std_logic_vector(4 downto 0);
	signal instr_addr_ex: std_logic_vector(31 downto 0);
	signal rf_a_ex: std_logic_vector(31 downto 0);
	signal rf_b_ex: std_logic_vector(31 downto 0);
	signal immed_ex: std_logic_vector(31 downto 0);
	signal wb_wraddr_ex: std_logic_vector(4 downto 0);
	signal branch_addr_ex: std_logic_vector(31 downto 0);
	signal alu_zero_ex: std_logic;
	signal alu_out_ex: std_logic_vector(31 downto 0);
	
	signal wb_mem: std_logic_vector(1 downto 0);
	signal mem_mem: std_logic_vector(3 downto 0);
	signal branch_addr_mem: std_logic_vector(31 downto 0);
	signal alu_zero_mem: std_logic;
	signal alu_out_mem: std_logic_vector(31 downto 0);
	signal rf_b_mem: std_logic_vector(31 downto 0);
	signal wb_wraddr_mem: std_logic_vector(4 downto 0);
	signal mem_dataout_mem: std_logic_vector(31 downto 0);
	
	signal wb_wb: std_logic_vector(1 downto 0);
	signal mem_dataout_wb: std_logic_vector(31 downto 0);
	signal alu_out_wb: std_logic_vector(31 downto 0);
	signal wb_wraddr_wb: std_logic_vector(4 downto 0);
	
	signal rf_wrdata: std_logic_vector(31 downto 0);
	signal mem_datain: std_logic_vector(31 downto 0);
	
begin
	
	branch_sel <= (mem_mem(0) AND alu_zero_mem) OR (mem_mem(1) AND (NOT alu_zero_mem)); 
	PC <= pc_output;
	Instr_out <= instr_dec;
	
	dec_stage: DECSTAGE_PIPELINE port map(
			Instr => instr_dec,
			RF_WrEn => wb_wb(1),
			RF_WrData => rf_wrdata,
			RF_B_sel => RF_B_sel,
			ImmExt => ImmExt,
			Clk => Clk,
			RST => Reset,
			RF_WrAddr => wb_wraddr_wb,
			
			Immed => immed_dec,
			RF_A => rf_a_dec,
			RF_B => rf_b_dec
		);
		
	ex_stage: EXSTAGE_PIPELINE port map(
			RF_A => rf_a_ex,
			RF_B => rf_b_ex,
			ALU_out_previous => alu_out_mem,
			WB_WrData => rf_wrdata,
			Immed => immed_ex,
			A_sel => A_sel,
			B_sel => B_sel,
			ALU_func => ex_ex(3 downto 0),
			
			ALU_out => alu_out_ex,
			ALU_zero => alu_zero_ex
			);
			
	mem_stage: MEMSTAGE port map(
			clk => Clk,
			MEM_WrEn => mem_mem(2),
			ByteOp => mem_mem(3),
			ALU_MEM_Addr => alu_out_mem,
			MEM_DataIn => mem_datain,	
			
			MM_RdData => MM_RdData,

			MEM_DataOut => mem_dataout_mem,
			MM_Addr => MM_Addr,
			MM_WrEn => MM_WrEn,
			MM_WrData => MM_WrData
		);
		
	incrementor: incrementor_4 port map(
		Increm_in => pc_output,
		Increm_out => instr_addr_if
		);
	
	branch_adder: adder port map(
		Adder_in1 => instr_addr_ex,
		Adder_in2 => immed_ex,
		Adder_out => branch_addr_ex
		);
		
	mux_PC: mux_2to1 port map(
		Sel => branch_sel,
		Datain0 => instr_addr_if,
		Datain1 => branch_addr_mem,
		Dataout => pc_input
		);
	
	mux_MEM_DataIn: mux_2to1 port map(
		Sel => MEM_DataIn_sel,
		Datain0 => rf_b_mem,
		Datain1 => rf_wrdata,
		Dataout => mem_datain
		);
		
	program_counter: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => pc_input,
		WE => PC_LdEn,
		Dataout => pc_output
		);

	Instr_addr_IF_DEC: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => instr_addr_if,
		WE => IF_DEC_WE,
		Dataout => instr_addr_dec 
		);		
	
	Instr_reg: regist port map(
		CLK => Clk,
		RST => '0',
		Datain => Instr_in,
		WE => IF_DEC_WE,
		Dataout => instr_dec
		);	 

	WB_DEC_EX: register_2bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => WB_control,
		WE => DEC_EX_WE,
		Dataout => wb_ex
		);	 

	MEM_DEC_EX: register_4bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => MEM_control,
		WE => DEC_EX_WE,
		Dataout => mem_ex
		);	

	EX_DEC_EX: register_5bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => EX_control,
		WE => DEC_EX_WE,
		Dataout => ex_ex
		);		
		
	Instr_addr_DEC_EX: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => instr_addr_dec,
		WE => DEC_EX_WE,
		Dataout => instr_addr_ex
		);	
		
	RF_A_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => rf_a_dec,
		WE => DEC_EX_WE,
		Dataout => rf_a_ex
		);	
		
	RF_B_DEC_EX: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => rf_b_dec,
		WE => DEC_EX_WE,
		Dataout => rf_b_ex
		);	

	Immed_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => immed_dec,
		WE => DEC_EX_WE,
		Dataout => immed_ex 
		);		

	WB_WrAddr_DEC_EX: register_5bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => instr_dec(20 downto 16),
		WE => DEC_EX_WE,
		Dataout => wb_wraddr_ex
		);	
		
	WB_EX_MEM: register_2bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => wb_ex,
		WE => '1',
		Dataout => wb_mem
		);	 

	MEM_EX_MEM: register_4bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => mem_ex,
		WE => '1',
		Dataout => mem_mem
		);	
		
	Branch_addr_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => branch_addr_ex,
		WE => '1',
		Dataout => branch_addr_mem 
		);		
		
	ALU_zero_reg: register_1bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => alu_zero_ex,
		WE => '1',
		Dataout => alu_zero_mem
		);	 	

	ALU_out_EX_MEM: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => alu_out_ex,
		WE => '1',
		Dataout => alu_out_mem
		);		

	RF_B_EX_MEM: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => rf_b_dec,
		WE => '1',
		Dataout => rf_b_mem
		);			
		
	WB_WrAddr_EX_MEM: register_5bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => wb_wraddr_ex,
		WE => '1',
		Dataout => wb_wraddr_mem
		);	

	WB_MEM_WB: register_2bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => wb_mem,
		WE => '1',
		Dataout => wb_wb
		);	 		
		
	MEM_Data_Out_reg: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => mem_dataout_mem,
		WE => '1',
		Dataout => mem_dataout_wb
		);		

	ALU_out_MEM_WB: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => alu_out_mem,
		WE => '1',
		Dataout => alu_out_wb
		);	
		
	WB_WrAddr_MEM_WB: register_5bit port map(
		CLK => Clk,
		RST => Reset,
		Datain => wb_wraddr_mem,
		WE => '1',
		Dataout => wb_wraddr_wb
		);
		
	RF_Wr_mux: mux_2to1 port map(
		Sel => wb_wb(0),
		Datain0 => alu_out_wb,
		Datain1 => mem_dataout_wb,
		Dataout => rf_wrdata	
		);
		

end data_path;


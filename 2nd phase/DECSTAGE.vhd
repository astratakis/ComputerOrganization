----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     27/03/2021 
-- Module Name:     DECSTAGE - dec_stage 
-- Project Name:    HPY302_LAB
-- Description: Module used to decide what to read/write from/in 
-- register file based on the input instruction
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

entity DECSTAGE is
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
		RST 		: in std_logic;
		
		--Outputs
		Immed		: out std_logic_vector(31 downto 0);
		RF_A		: out std_logic_vector(31 downto 0);
		RF_B		: out std_logic_vector(31 downto 0)
		);
end DECSTAGE;

architecture dec_stage of DECSTAGE is

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
	
		--Multiplexer
		component mux_2to1_5bit is
		port(
			--Inputs
			Sel: in std_logic;
			Datain0: in std_logic_vector(4 downto 0);
			Datain1: in std_logic_vector(4 downto 0);
			
			--Output
			Dataout: out std_logic_vector(4 downto 0)
			);
	end component;
	
	--Immediate extender
	component immed_extender is
		port(
			--Inputs
			Sel: in std_logic_vector(1 downto 0);
			Immed: in std_logic_vector(15 downto 0);
			
			--Output
			ImmExtended: out std_logic_vector(31 downto 0)
			);
	end component;
	
	--Register file
	component register_file is
		port(
			--Inputs
			CLK:	 in std_logic;
			WrEn:	 in std_logic;
			Awr: 	 in std_logic_vector(4 downto 0);
			Ard1:	 in std_logic_vector(4 downto 0);
			Ard2:	 in std_logic_vector(4 downto 0);
			Din:	 in std_logic_vector(31 downto 0);
			RST:	 in std_logic;
			
			--Outputs
			Dout1: out std_logic_vector(31 downto 0);
			Dout2: out std_logic_vector(31 downto 0)
			);
			
	end component;
	
	signal RF_datain: std_logic_vector(31 downto 0);		--data that will be written in RF 
	signal read_register_2: std_logic_vector(4 downto 0);	--the selected 2nd read address for the RF 
	
begin
	ALU_MEM_mux: mux_2to1 port map(
		Sel => RF_WrData_sel,
		Datain0 => ALU_out,
		Datain1 => MEM_out,
		Dataout => RF_datain
		);
		
	Instr_mux: mux_2to1_5bit port map(
		Sel => RF_B_sel,
		Datain0 => Instr(15 downto 11),
		Datain1 => Instr(20 downto 16),
		Dataout => read_register_2
		);
		
	extender: immed_extender port map(
		Sel => ImmExt,
		Immed => Instr(15 downto 0),
		ImmExtended => Immed
		);
		
	RF: register_file port map(
		CLK => Clk,
		WrEn => RF_WrEn,
		Awr => Instr(20 downto 16),
		Ard1 => Instr(25 downto 21),
		Ard2 => read_register_2,
		RST => RST,
		Din => RF_datain,
		Dout1 => RF_A,
		Dout2 => RF_B
		);
		
end dec_stage;


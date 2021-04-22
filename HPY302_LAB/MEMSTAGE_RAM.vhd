----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     31/03/2021 
-- Module Name:     MEMSTAGE_RAM - mem_stage_ram 
-- Project Name:    HPY302_LAB
-- Description:	Module combining MEMSTAGE and RAM solely intended 
-- for testing
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

entity MEMSTAGE_RAM is
		port(
		--Inputs
		clk: in std_logic;
		MEM_WrEn: in std_logic;
		ByteOp: in std_logic;
		ALU_MEM_Addr: in std_logic_vector(31 downto 0);
		MEM_DataIn: in std_logic_vector(31 downto 0);	
		
		--Outputs
		MEM_DataOut: out std_logic_vector(31 downto 0)
		);
	
end MEMSTAGE_RAM;

architecture mem_stage_ram of MEMSTAGE_RAM is
	
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
	
	signal addr: std_logic_vector(10 downto 0);
	signal wr_en: std_logic;
	signal wr_data: std_logic_vector(31 downto 0);
	signal rd_data: std_logic_Vector(31 downto 0);
	
begin
	
	mem_stage: MEMSTAGE port map(
		clk => clk,
		MEM_WrEn => MEM_WrEn,
		ByteOp => ByteOp,
		ALU_MEM_Addr => ALU_MEM_Addr,
		MEM_DataIn => MEM_DataIn,
		MM_RdData => rd_data,
		
		MEM_DataOut => MEM_DataOut,
		MM_Addr => addr,
		MM_WrEn => wr_en,
		MM_WrData => wr_data
	);
	
	random_access_memory: RAM port map(
		clk => clk,
		inst_addr => "00000000000",
		data_we => wr_en,
		data_addr => addr,
		data_din => wr_data,
		inst_dout => open,
		data_dout => rd_data
	);
     
end mem_stage_ram;


----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     31/03/2021 
-- Module Name:     IFSTAGE_RAM - if_stage_ram 
-- Project Name:    HPY302_LAB
-- Description:	Module combining IFSTAGE and RAM solely intended 
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

entity IFSTAGE_RAM is
		port(
		--Inputs
		PC_Immed: in std_logic_vector(31 downto 0);
		PC_sel: in std_logic;
		PC_LdEn: in std_logic;
		Reset: in std_logic;
		Clk: in std_logic;
		
		--Output
		Inst: out std_logic_vector(31 downto 0);
		PC: out std_logic_vector(31 downto 0)

		);	
end IFSTAGE_RAM;

architecture if_stage_ram of IFSTAGE_RAM is

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
	
	signal pc_to_ram: std_logic_vector(31 downto 0);
	
begin
	
	PC <= pc_to_ram;
	
	if_stage: IFSTAGE port map(
		PC_Immed => PC_Immed,
		PC_sel => PC_sel,
		PC_LdEn => PC_LdEn,
		Reset => Reset,
		Clk => Clk,
		PC => pc_to_ram
	);
	
	random_access_memory: RAM port map(
		clk => Clk,
		inst_addr => pc_to_ram(12 downto 2),
		data_we => '1',
		data_addr => "00000000000",
		data_din => x"0000_0000",
		inst_dout => Inst,
		data_dout => open
	);


end if_stage_ram;


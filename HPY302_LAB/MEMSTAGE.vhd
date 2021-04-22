----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     29/03/2021 
-- Module Name:     MEMSTAGE - mem_stage 
-- Project Name:    HPY302_LAB
-- Description: Implementation of the module MEMSTAGE. 
-- This stage is the that communicates with the RAM module.
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
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity MEMSTAGE is
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
end MEMSTAGE;

architecture mem_stage of MEMSTAGE is
	
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
	
	signal store_byte: std_logic_vector(31 downto 0);
	signal load_byte: std_logic_vector(31 downto 0);
	signal added_1024: std_logic_vector(31 downto 0);
begin
	
	added_1024 <= ALU_MEM_Addr + x"0000_1000";	--add 1024 x 4 = 4096 to enter data part of RAM
	MM_Addr <= added_1024(12 downto 2);				--32-bit to 11-bit while multiplying by 4
	MM_WrEn <= MEM_WrEn;
	store_byte <= std_logic_vector(resize(unsigned(MEM_DataIn(7 downto 0)),32));	--zero fill to store byte
	load_byte <= std_logic_vector(resize(unsigned(MM_RdData(7 downto 0)),32));		--zero fill to load byte

	multiplexer_store: mux_2to1 port map(
	Sel => ByteOp,
	Datain0 => MEM_DataIn,
	Datain1 => store_byte,
	Dataout => 	MM_WrData
	);
	
	multiplexer_load: mux_2to1 port map(
	Sel => ByteOp,
	Datain0 => MM_RdData,
	Datain1 => load_byte,
	Dataout => MEM_DataOut
	);	
end mem_stage;


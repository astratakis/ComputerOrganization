----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     26/03/2021 
-- Module Name:     IFSTAGE - if_stage 
-- Project Name:    HPY302_LAB
-- Description: Implementation of the instruction fetch stage
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

entity IFSTAGE is
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
end IFSTAGE;

architecture if_stage of IFSTAGE is
	
	--PC register
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
	
signal data_in_PC: std_logic_vector(31 downto 0); 	--PC input / mux output
signal data_out_PC: std_logic_vector(31 downto 0); --PC output
signal increm_out: std_logic_vector(31 downto 0); 	--incrementor output
signal adder_out: std_logic_vector(31 downto 0); 	--adder output

begin	
	--Output PC is equal to the output of the PC register
	PC <= data_out_PC;
	
	incrementor: incrementor_4 port map(
		Increm_in => data_out_PC,
		Increm_out => increm_out
		);
	
	adder2: adder port map(
		Adder_in1 => PC_Immed,
		Adder_in2 => increm_out,
		Adder_out => adder_out
		);
	
	multiplexer: mux_2to1 port map(
		Sel => PC_sel,
		Datain0 => increm_out,
		Datain1 => adder_out,
		Dataout => data_in_PC
		);
		
	program_counter: regist port map(
		CLK => Clk,
		RST => Reset,
		Datain => data_in_PC,
		WE => PC_LdEn,
		Dataout => data_out_PC
		);
		
end if_stage;


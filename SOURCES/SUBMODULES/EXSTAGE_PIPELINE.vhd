----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     27/03/2021 
-- Module Name:     EXSTAGE -  ex_stage
-- Project Name:    HPY302_LAB
-- Description:	Implementation of the EXSTAGE module.
-- This module incorporates the ALU module in the processor.
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

entity EXSTAGE_PIPELINE is
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
end EXSTAGE_PIPELINE;
		
architecture ex_stage of EXSTAGE_PIPELINE is

		component ALU is
			port(
				 --Inputs
				 A: in std_logic_vector(31 downto 0);    --first operand
				 B: in std_logic_vector(31 downto 0);    --second operand
				 Op: in std_logic_vector(3 downto 0);    --operator
				 
				 --Outputs
				 Output: out std_logic_vector(31 downto 0); --output result
				 --Out33: out std_logic_vector(32 downto 0);
				 Zero: out std_logic;                    --if output = 0
				 Cout: out std_logic;                    --if there is carry out
				 Ovf: out std_logic	                    --if there is overflow
				 );
		end component;
		
		--Multiplexer
		component mux_4to1 is
			port(
				--Inputs
				Sel: in std_logic_vector(1 downto 0);		--selects which bit will be in the output
				Datain0: in std_logic_vector(31 downto 0);
				Datain1: in std_logic_vector(31 downto 0);
				Datain2: in std_logic_vector(31 downto 0);
				Datain3: in std_logic_vector(31 downto 0);
				
				--Output
				Dataout: out std_logic_vector(31 downto 0)	--the bit output
			);			
		end component;
		
		signal A_mux_output: std_logic_vector(31 downto 0); --the output of the multiplexer A
		signal B_mux_output: std_logic_vector(31 downto 0); --the output of the multiplexer B

begin
	
	arithmetic_logic_unit: ALU port map(
		A => A_mux_output,
		B => B_mux_output,
		Op => ALU_func,
		Output => ALU_out,
		Zero => ALU_zero,
		Cout => open,
		Ovf => open
		);
	
	A_mux: mux_4to1 port map(
		Sel => A_sel,
		Datain0 => RF_A,
		Datain1 => ALU_out_previous,
		Datain2 => WB_WrData,
		Datain3 => x"0000_0000",
		Dataout => A_mux_output
		);
		
	B_mux: mux_4to1 port map(
		Sel => B_sel,
		Datain0 => RF_B,
		Datain1 => ALU_out_previous,
		Datain2 => WB_WrData,
		Datain3 => Immed,
		Dataout => B_mux_output
		);		

end ex_stage;


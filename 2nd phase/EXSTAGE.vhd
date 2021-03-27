----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     27/03/2021 
-- Module Name:     EXSTAGE -  ex_stage
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

entity EXSTAGE is
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
end EXSTAGE;
		
architecture ex_stage of EXSTAGE is

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
		
		component mux_2to1 is
			port(
				--Inputs
				Sel: in std_logic;		--selects which bit will be in the output
				Datain0: in std_logic_vector(31 downto 0);
				Datain1: in std_logic_vector(31 downto 0);
				
				--Output
				Dataout: out std_logic_vector(31 downto 0)	--the bit output
			);			
		end component;
		
		signal mux_output: std_logic_vector(31 downto 0);
begin
	
	ALU: ALU port map(
		A => RF_A,
		B => mux_output,
		Op => ALU_func,
		Output => ALU_out,
		Zero => ALU_zero,
		Cout => Cout,
		Ovf => Ovf
		);
	
	multiplexer: mux_2to1 port map(
		Sel => ALU_Bin_sel,
		Datain0 => RF_B,
		Datain1 => Immed,
		Dataout => mux_output
		);

end ex_stage;


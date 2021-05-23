----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     27/03/2021 
-- Module Name:     immed_extender - extender 
-- Project Name:    HPY302_LAB
-- Description:  A module extending the 16-bit immediate input
-- to a 32-bit output in 4 different ways.
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

entity immed_extender is
	port(
		--Inputs
		Sel: in std_logic_vector(1 downto 0);
		Immed: in std_logic_vector(15 downto 0);
		
		--Output
		ImmExtended: out std_logic_vector(31 downto 0)
		);
end immed_extender;

architecture extender of immed_extender is
	
	signal extended: std_logic_vector(31 downto 0);
	signal zero_fill: std_logic_vector(31 downto 0);
	signal sign_extend: std_logic_vector(31 downto 0);
	
begin
	zero_fill <= std_logic_vector(resize(unsigned(Immed(15 downto 0)),32));	--zero fill
	sign_extend <= std_logic_vector(resize(signed(Immed(15 downto 0)),32));	--sign extend
	
	with Sel select
		extended <= zero_fill when "00",									--zero fill
						sign_extend when "10",								--sign extend
						zero_fill(15 downto 0) & x"0000" when "01",	--zero fill and shift
						sign_extend(29 downto 0) & "00" when "11";	--sign extend and shift
						
						
		ImmExtended <= extended;
end extender;


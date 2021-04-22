----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     26/03/2021 
-- Module Name:     mux_2to1 - multiplexer 
-- Project Name:    HPY302_LAB
-- Description:	A simple multiplexer selecting one
-- of two 32-bit inputs
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_2to1 is
	port(
		--Inputs
		Sel: in std_logic;		--selects which bit will be in the output
		Datain0: in std_logic_vector(31 downto 0);
		Datain1: in std_logic_vector(31 downto 0);
		
		--Output
		Dataout: out std_logic_vector(31 downto 0)	--the bit output
	);
		
end mux_2to1;

architecture multiplexer of mux_2to1 is

begin
    
	with Sel select
	Dataout <= Datain0 after 10ns when '0',
					Datain1 after 10ns when '1',
				  x"0000_0000" when others;
end multiplexer;



----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     27/03/2021 
-- Module Name:     mux_2to1_5bit - multiplexer 
-- Project Name:    HPY302_LAB
-- Description: 	Simple multiplexer selecting one of
-- two 5-bit inputs
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

entity mux_2to1_5bit is
		port(
		--Inputs
		Sel: in std_logic;		--selects which bit will be in the output
		Datain0: in std_logic_vector(4 downto 0);
		Datain1: in std_logic_vector(4 downto 0);
		
		--Output
		Dataout: out std_logic_vector(4 downto 0)	--the bit output
		);
end mux_2to1_5bit;

architecture multiplexer of mux_2to1_5bit is

begin
    
	with Sel select
	Dataout <= Datain0 after 10ns when '0',
					Datain1 after 10ns when '1',
				  "00000" when others;

end multiplexer;


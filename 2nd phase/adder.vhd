----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     26/03/2021 
-- Module Name:     adder - adder 
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
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity adder is

	port(
		--Input
		Adder_in1: in std_logic_vector(31 downto 0);
		Adder_in2: in std_logic_vector(31 downto 0);
		
		--Output
		Adder_out: out std_logic_vector(31 downto 0)
		);
end adder;

architecture adder of adder is

begin
	Adder_out <= std_logic_vector(unsigned(Adder_in1) + unsigned(Adder_in2));

end adder;


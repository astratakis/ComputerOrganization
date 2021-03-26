----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     26/03/2021 
-- Module Name:     incrementor_4 - adder 
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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity incrementor_4 is
	port(
		--Input
		Increm_in: in std_logic_vector(31 downto 0);
		
		--Output
		Increm_out: out std_logic_vector(31 downto 0)
		);
end incrementor_4;

architecture adder of incrementor_4 is

begin

	Increm_out <= std_logic_vector(to_unsigned(to_integer(unsigned(Increm_in))+4, 32));

end adder;


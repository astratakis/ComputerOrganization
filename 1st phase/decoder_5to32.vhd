----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     19/03/2021 
-- Module Name:     decoder_5to32 - Behavioral 
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

entity decoder_5to32 is
	port(
		Awr: in std_logic_vector(4 downto 0);
		
		Aout: out std_logic_vector(31 downto 0)
		);
end decoder_5to32;

architecture Behavioral of decoder_5to32 is

constant tmp_address: std_logic_vector(31 downto 0) := x"00000001";

begin

	Aout <= std_logic_vector(unsigned(tmp_address) sll to_integer(unsigned(Awr)));

end Behavioral;


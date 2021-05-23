
----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     19/03/2021 
-- Module Name:     decoder_5to32 - Behavioral 
-- Project Name:    HPY302_LAB
-- Description: Implements a 5 to 32 decoder. The 5-bit input is
-- address where the only '1' will appear in the 32-bit output.
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

architecture decoder of decoder_5to32 is

--A 32-bit vector with a '1' as the last bit
constant tmp_address: std_logic_vector(31 downto 0) := x"00000001";

begin
	
	--Shift left logical the '1' as many times as the unsigned value of the input
	Aout <= std_logic_vector(unsigned(tmp_address) sll to_integer(unsigned(Awr)));

end decoder;


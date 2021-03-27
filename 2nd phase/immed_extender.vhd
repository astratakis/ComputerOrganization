----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     27/03/2021 
-- Module Name:     immed_extender - extender 
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
	
begin
	
	with Sel select
		--extended <= x"0000" & Immed when '0',
			--			Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed when '1';
	
	--with Sel(1) select
		--ext_out <= extended when '0',
			--		  extended
		extended <= std_logic_vector(resize(unsigned(Immed(15 downto 0)),32)) when "00",
						std_logic_vector(resize(signed(Immed(15 downto 0)),32)) when "10",
						Immed(15 downto 0) & x"0000" when "01",
						Immed(15 downto 0) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) & Immed(15) when "11";
						
		ImmExtended <= extended;
end extender;


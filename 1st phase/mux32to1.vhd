----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     18/03/2021 
-- Module Name:     mux_32to1 - Behavioral 
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
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_32to1 is
	port(
		--Inputs
		Ard: in std_logic_vector(4 downto 0);		--selects which bit will be in the output
		Datain0: in std_logic_vector(31 downto 0);
		Datain1: in std_logic_vector(31 downto 0);
		Datain2: in std_logic_vector(31 downto 0);
		Datain3: in std_logic_vector(31 downto 0);
		Datain4: in std_logic_vector(31 downto 0);
		Datain5: in std_logic_vector(31 downto 0);
		Datain6: in std_logic_vector(31 downto 0);
		Datain7: in std_logic_vector(31 downto 0);
		Datain8: in std_logic_vector(31 downto 0);
		Datain9: in std_logic_vector(31 downto 0);
		Datain10: in std_logic_vector(31 downto 0);
		Datain11: in std_logic_vector(31 downto 0);
		Datain12: in std_logic_vector(31 downto 0);
		Datain13: in std_logic_vector(31 downto 0);
		Datain14: in std_logic_vector(31 downto 0);
		Datain15: in std_logic_vector(31 downto 0);
		Datain16: in std_logic_vector(31 downto 0);
		Datain17: in std_logic_vector(31 downto 0);
		Datain18: in std_logic_vector(31 downto 0);
		Datain19: in std_logic_vector(31 downto 0);
		Datain20: in std_logic_vector(31 downto 0);
		Datain21: in std_logic_vector(31 downto 0);
		Datain22: in std_logic_vector(31 downto 0);
		Datain23: in std_logic_vector(31 downto 0);
		Datain24: in std_logic_vector(31 downto 0);
		Datain25: in std_logic_vector(31 downto 0);
		Datain26: in std_logic_vector(31 downto 0);
		Datain27: in std_logic_vector(31 downto 0);
		Datain28: in std_logic_vector(31 downto 0);
		Datain29: in std_logic_vector(31 downto 0);
		Datain30: in std_logic_vector(31 downto 0);
		Datain31: in std_logic_vector(31 downto 0);
		
		--Output
		Dataout: out std_logic_vector(31 downto 0)	--the bit output
	);
		
end mux_32to1;

architecture Behavioral of mux_32to1 is

begin
    
	with Ard select
	Dataout <= Datain0 after 10ns when "00000",
					Datain1 after 10ns when "00001",
					Datain2 after 10ns when "00010",
					Datain3 after 10ns when "00011",
					Datain4 after 10ns when "00100",
					Datain5 after 10ns when "00101",
					Datain6 after 10ns when "00110",
					Datain7 after 10ns when "00111",
					Datain8 after 10ns when "01000",
					Datain9 after 10ns when "01001",
					Datain10 after 10ns when "01010",
					Datain11 after 10ns when "01011",
					Datain12 after 10ns when "01100",
					Datain13 after 10ns when "01101",
					Datain14 after 10ns when "01110",
					Datain15 after 10ns when "01111",
					Datain16 after 10ns when "10000",
					Datain17 after 10ns when "10001",
					Datain18 after 10ns when "10010",
					Datain19 after 10ns when "10011",
					Datain20 after 10ns when "10100",
					Datain21 after 10ns when "10101",
					Datain22 after 10ns when "10110",
					Datain23 after 10ns when "10111",
					Datain24 after 10ns when "11000",
					Datain25 after 10ns when "11001",
					Datain26 after 10ns when "11010",
					Datain27 after 10ns when "11011",
					Datain28 after 10ns when "11100",
					Datain29 after 10ns when "11101",
					Datain30 after 10ns when "11110",
					Datain31 after 10ns when "11111";

end Behavioral;


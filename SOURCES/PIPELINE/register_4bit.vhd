----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     16/05/2021 
-- Module Name:     register_4bit - regist 
-- Project Name:    HPY302_LAB
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: This is the implementation of a register 
-- that stores one 1-bit vector
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity register_4bit is
    port(
	 
    --Inputs
    CLK: in std_logic;    
    RST: in std_logic;
    Datain: in std_logic_vector(3 downto 0);
    WE: in std_logic;	--write enable
	 
    --Outputs
    Dataout: out std_logic_vector(3 downto 0)
	 );
	 
end register_4bit;

architecture regist of register_4bit is

signal data: std_logic_vector(3 downto 0);

begin
	process
	begin
		wait until CLK' event and CLK = '1';	--wait for rising clock
		
		if RST = '1' then								--with enabled reset
			data <= x"0";								--the output is zero
		else
			if WE = '1' then							--else and if write enable enabled
				data <= Datain;						--read out the stored data
			end if;
		end if;
	end process;
	
	Dataout <= data after 10ns;
end regist;


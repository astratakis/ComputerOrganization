----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     17/03/2021 
-- Module Name:     regist - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity regist is
    port(
	 
    --Inputs
    CLK: in std_logic;    
    RST: in std_logic;
    Datain: in std_logic_vector(31 downto 0);
    WE: in std_logic;
	 
    --Outputs
    Dataout: out std_logic_vector(31 downto 0)
	 );
	 
end regist;

architecture Behavioral of regist is

begin
	process
	begin
		wait until CLK' event and CLK = '1';
		
		if RST = '1' then
			Dataout <= x"00000000" after 10ns;
		else
			if WE = '1' then
				Dataout <= Datain after 10ns;
			end if;
		end if;
	end process;

end Behavioral;


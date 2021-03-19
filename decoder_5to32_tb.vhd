----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     19/03/2021 
-- Module Name:     decoder_5to32_tb - Behavioral 
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY decoder_5to32_tb IS
END decoder_5to32_tb;
 
ARCHITECTURE behavior OF decoder_5to32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder_5to32
    PORT(
         Awr : IN  std_logic_vector(4 downto 0);
         Aout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Awr : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Aout : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder_5to32 PORT MAP (
          Awr => Awr,
          Aout => Aout
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      
		Awr <= "00000";
      wait for 100 ns;

		Awr <= "11111";
      wait for 100 ns;		
		
		Awr <= "01100";
      wait for 100 ns;

      wait;
   end process;

END;

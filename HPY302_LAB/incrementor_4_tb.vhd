----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     26/03/2021 
-- Module Name:     incrementor_4_tb - behavior 
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
 
ENTITY incrementor_4_tb IS
END incrementor_4_tb;
 
ARCHITECTURE behavior OF incrementor_4_tb IS 
  
    COMPONENT incrementor_4
    PORT(
         Increm_in : IN  std_logic_vector(31 downto 0);
         Increm_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Increm_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Increm_out : std_logic_vector(31 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: incrementor_4 PORT MAP (
          Increm_in => Increm_in,
          Increm_out => Increm_out
        );
 

   -- Stimulus process
   stim_proc: process
   begin
		--311552561 + 4 = 311552565
		Increm_in <= x"1291_ea31";
		wait for 10 ns;
   end process;

END;

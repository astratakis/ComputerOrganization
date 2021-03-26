----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     19/03/2021 
-- Module Name:     mux_2to1_tb - Behavioral 
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
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
ENTITY mux_2to1_tb IS
END mux_2to1_tb;
 
ARCHITECTURE behavior OF mux_2to1_tb IS 
  
    COMPONENT mux_2to1
    PORT(
         Sel : IN  std_logic;
			Datain0: in std_logic_vector(31 downto 0);
			Datain1: in std_logic_vector(31 downto 0);
         Dataout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Sel : std_logic := '0';
	signal Datain0 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain1 : std_logic_vector(31 downto 0) := (others => '0');
	
 	--Outputs
   signal Dataout : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2to1 PORT MAP (
         Sel => Sel,
			Datain0 => Datain0,
			Datain1 => Datain1,
          
			Dataout => Dataout
        );

   -- Stimulus process
   stim_proc: process
   begin		
		Datain0 <= x"00000000";
		Datain1 <= x"ffffffff";
		Sel <= '0';
		wait for 100ns;
		
		Sel <= '1';
      wait;
   end process;

END;

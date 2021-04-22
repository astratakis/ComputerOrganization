--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:01:31 03/27/2021
-- Design Name:   
-- Module Name:   /home/carioca/Desktop/comp_arch_help/HPY302_LAB/immed_extender_tb.vhd
-- Project Name:  HPY302_LAB
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: immed_extender
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY immed_extender_tb IS
END immed_extender_tb;
 
ARCHITECTURE behavior OF immed_extender_tb IS 
  
    COMPONENT immed_extender
    PORT(
         Sel : IN  std_logic_vector(1 downto 0);
         Immed : IN  std_logic_vector(15 downto 0);
         ImmExtended : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Sel : std_logic_vector(1 downto 0) := (others => '0');
   signal Immed : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal ImmExtended : std_logic_vector(31 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: immed_extender PORT MAP (
          Sel => Sel,
          Immed => Immed,
          ImmExtended => ImmExtended
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 20 ns;	
		
		Immed <= x"f1a9";
		Sel <= "00";
		wait for 100 ns;
		
		Sel <= "10";
		wait for 100 ns;
		
		Sel <= "01";
		wait for 100 ns;
		
		Sel <= "11";
		wait for 100 ns;
		
		Immed <= x"0fd1";
		Sel <= "00";
		wait for 100 ns;
		
		Sel <= "10";
		wait for 100 ns;
		
		Sel <= "01";
		wait for 100 ns;
		
		Sel <= "11";		
      wait;
   end process;

END;

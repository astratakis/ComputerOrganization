--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:33:04 03/26/2021
-- Design Name:   
-- Module Name:   /home/carioca/Desktop/comp_arch_help/HPY302_LAB/adder_tb.vhd
-- Project Name:  HPY302_LAB
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder
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
 
ENTITY adder_tb IS
END adder_tb;
 
ARCHITECTURE behavior OF adder_tb IS 
  
    COMPONENT adder
    PORT(
         Adder_in1 : IN  std_logic_vector(31 downto 0);
         Adder_in2 : IN  std_logic_vector(31 downto 0);
         Adder_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Adder_in1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Adder_in2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Adder_out : std_logic_vector(31 downto 0);
	
BEGIN
 
 uut: adder PORT MAP (
          Adder_in1 => Adder_in1,
          Adder_in2 => Adder_in2,
          Adder_out => Adder_out
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      wait for 10 ns;	
		Adder_in1 <= x"0000003f";
		Adder_in2 <= x"0000018d";
			
      wait;
   end process;

END;

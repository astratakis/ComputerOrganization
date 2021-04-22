----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     31/03/2021 
-- Module Name:     IFSTAGE_RAM_tb - behavior 
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
 
ENTITY IFSTAGE_RAM_tb IS
END IFSTAGE_RAM_tb;
 
ARCHITECTURE behavior OF IFSTAGE_RAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IFSTAGE_RAM
    PORT(
         PC_Immed : IN  std_logic_vector(31 downto 0);
         PC_sel : IN  std_logic;
         PC_LdEn : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Inst : OUT  std_logic_vector(31 downto 0);
			PC : OUT std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PC_Immed : std_logic_vector(31 downto 0);
   signal PC_sel : std_logic;
   signal PC_LdEn : std_logic;
   signal Reset : std_logic;
   signal Clk : std_logic := '0';
	
 	--Outputs
   signal Inst : std_logic_vector(31 downto 0);
	signal PC : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IFSTAGE_RAM PORT MAP (
          PC_Immed => PC_Immed,
          PC_sel => PC_sel,
          PC_LdEn => PC_LdEn,
          Reset => Reset,
          Clk => Clk,
			 PC => PC,
          Inst => Inst
        );

	Clk <= not Clk after 100 ns;
 

   -- Stimulus process
   stim_proc: process
   begin		
			wait for 20 ns; -- wait until global set/reset completes
			PC_sel <= '0';
			PC_LdEn <= '1';
			Reset <= '0';
			PC_Immed <= x"0000_0100";
			wait for 500 ns;
			
			PC_LdEn <= '0';
			wait for 100 ns;
			
			Reset <= '1';
			wait for 100 ns;
			
			PC_LdEn <= '1';
			Reset <= '0';
			wait for 300 ns;
			
			PC_sel <= '1';
			wait for 100ns;
			
			PC_sel <= '0';
			wait; -- will wait forever
   end process;

END;

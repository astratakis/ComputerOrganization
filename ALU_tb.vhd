----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     16/03/2021 
-- Module Name:    ALU_tb - behavior 
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Op : IN  std_logic_vector(3 downto 0);
         Output : OUT  std_logic_vector(31 downto 0);
         Zero : OUT  std_logic;
         Cout : OUT  std_logic;
         Ovf : OUT  std_logic;
			Clock : IN std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal Op : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(31 downto 0);
   signal Zero : std_logic;
   signal Cout : std_logic;
   signal Ovf : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name	
	signal Clock : std_logic := '0';
 
BEGIN
	Clock <= not Clock after 100ns;
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          Op => Op,
          Output => Output,
          Zero => Zero,
          Cout => Cout,
          Ovf => Ovf,
			 Clock => Clock
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
		
		---1-1=0 Zero='1'
		A <= x"00000001";
		B <= x"00000001";
		Op <= "0001";
      wait for 200 ns;
		
		--- -1258291200 + 989855744 Cout='0' and Ovf='0'
		A <= x"b5000000";
		B <= x"3b000000";
		Op <= "0000";
      wait for 200 ns;	

		--- -318767104 + -117440512 Cout='1' and Ovf='0'
		A <= x"ed000000";
		B <= x"f9000000";
		Op <= "0000";
      wait for 200 ns;		
		
		--- 1744830464 + 754974720 Cout ='0' and Ovf='1'
		A <= x"68000000";
		B <= x"2d000000";
		Op <= "0000";
      wait for 200 ns;
		
		---
		A <= x"99000000";
		B <= x"bb000000";
		Op <= "0000";
		wait for 200 ns;
		
      wait;
   end process;

END;

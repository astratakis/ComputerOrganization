----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     16/03/2021 
-- Module Name:    ALU_tb - behavior 
-- Project Name:    HPY302_LAB
-- Description: Testbench for the module ALU
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
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavioral OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Op : IN  std_logic_vector(3 downto 0);
         Output : OUT  std_logic_vector(31 downto 0);
         Zero : OUT  std_logic;
         Cout : OUT  std_logic;
         Ovf : OUT  std_logic
			--Out33: OUT std_logic_vector(32 downto 0)
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
	--signal Out33: std_logic_vector(32 downto 0);
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          Op => Op,
          Output => Output,
          Zero => Zero,
          Cout => Cout,
          Ovf => Ovf
			 --Out33 => Out33
        );

 

   -- Stimulus process
   stim_proc: process
   begin

		--------------
		--Addition
		--------------
		
		--- -1 (+) 1 Zero='1'
		A <= x"ffffffff";
		B <= x"00000001";
		Op <= "0000";
      wait for 200 ns;	
		
		--- -1258291200 (+) 989855744 Cout='0' and Ovf='0'
		A <= x"b5000000";
		B <= x"3b000000";
		Op <= "0000";
      wait for 200 ns;	

		--- -318767104 (+) -117440512 Cout='1' and Ovf='0'
		A <= x"ed000000";
		B <= x"f9000000";
		Op <= "0000";
      wait for 200 ns;		
		
		--- 1744830464 (+) 754974720 Cout ='0' and Ovf='1'
		A <= x"68000000";
		B <= x"2d000000";
		Op <= "0000";
      wait for 200 ns;
		
		--- -1728053248 (+) -1157627904 Cout ='1' and Ovf='1'
		A <= x"99000000";
		B <= x"bb000000";
		Op <= "0000";
		wait for 200 ns;
		
		--------------
		--Subtraction
		--------------
		
		--- 1 (-) 1 Zero='1'
		A <= x"00000001";
		B <= x"00000001";
		Op <= "0001";
      wait for 200 ns;	
		
		--- 10 (-) 5 Cout='0' and Ovf='0'
		A <= x"0000000a";
		B <= x"00000005";
		Op <= "0001";
      wait for 200 ns;	
		
		--- -318767104 (-) 117440512 Cout='1' and Ovf='0'
		A <= x"a0000000";
		B <= x"f0000000";
		Op <= "0001";
      wait for 200 ns;
		
		--- -1728053248 (-) 1157627904 Cout ='0' and Ovf='1'
		A <= x"99000000";
		B <= x"45000000";
		Op <= "0001";
		wait for 200 ns;

		--- 1744830464 (-) -754974720 Cout ='1' and Ovf='1'
		A <= x"68000000";
		B <= x"d3000000";
		Op <= "0001";
      wait for 200 ns;
		
		--------------
		--Logic AND
		--------------
		
		A <= x"48a5b5cd";
		B <= x"1a8510d7";
		Op <= "0010";
      wait for 200 ns;
		
		--------------
		--Logic OR
		--------------
		
		A <= x"48a5b5cd";
		B <= x"1a8510d7";
		Op <= "0011";
      wait for 200 ns;
		
		--------------
		--Invarsion
		--------------

		A <= x"48a5b5cd";
		Op <= "0100";
      wait for 200 ns;
		
		--------------
		--Logic NAND
		--------------

		A <= x"48a5b5cd";
		B <= x"1a8510d7";
		Op <= "0110";
      wait for 200 ns;

	  	--------------------------
		--Arithmetic shift right
		--------------------------
		
		A <= x"48a5b5cd";
		Op <= "1000";
      wait for 200 ns;

	  	---------------------
		--Logic shift right
		---------------------

		A <= x"48a5b5cd";
		Op <= "1001";
      wait for 200 ns;

	  	--------------------
		--Logic shift left
		--------------------

		A <= x"48a5b5cd";
		Op <= "1010";
      wait for 200 ns;

	  	----------------------
		--Circular shift left
		----------------------

		A <= x"48a5b5cd";
		Op <= "1100";
      wait for 200 ns;	  

	  	-----------------------
		--Circular shift right
		-----------------------

		A <= x"48a5b5cd";
		Op <= "1101";
      wait for 200 ns;	  

	  wait;
   end process;

END BEHAVIORAL;

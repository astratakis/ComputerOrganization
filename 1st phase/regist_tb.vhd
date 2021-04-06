----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     17/03/2021 
-- Module Name:     regist_tb - Behavioral 
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
 
ENTITY regist_tb IS
END regist_tb;
 
ARCHITECTURE behavior OF regist_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regist
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Datain : IN  std_logic_vector(31 downto 0);
         WE : IN  std_logic;
         Dataout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal Datain : std_logic_vector(31 downto 0) := (others => '0');
   signal WE : std_logic := '0';

 	--Outputs
   signal Dataout : std_logic_vector(31 downto 0);

   -- Clock period definitions
 
BEGIN
	CLK <= not CLK after 100 ns;
	-- Instantiate the Unit Under Test (UUT)
   uut: regist PORT MAP (
          CLK => CLK,
          RST => RST,
          Datain => Datain,
          WE => WE,
          Dataout => Dataout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      
		wait for 20 ns;
		---Reset disabled -- Write Enable enabled
		---Reading input
		Datain <= x"00000001";
		RST <= '0';
		WE <= '1';
      wait for 200 ns;	
		
		---Reset enabled -- Write Enable disabled
		Datain <= x"00000001";
		RST <= '1';
		WE <= '0';
      wait for 200 ns;

		---Reset disabled -- Write Enable enabled
		---Reading input
		Datain <= x"00000001";
		RST <= '0';
		WE <= '1';
      wait for 200 ns;
		
		---Reset enabled -- Write Enable enabled
		Datain <= x"00000001";
		RST <= '1';
		WE <= '1';
      wait for 200 ns;
		
		---Reset disabled -- Write Enable enabled
		---Reading input
		Datain <= x"00001000";
		RST <= '0';
		WE <= '1';
      wait for 200 ns;
		
		---Reset disabled -- Write Enable disabled
		Datain <= x"ffffffff";
		RST <= '0';
		WE <= '0';
      wait for 200 ns;

      wait;
   end process;

END;

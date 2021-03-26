----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     22/03/2021 
-- Module Name:     RAM_tb - behavior 
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
 
ENTITY RAM_tb IS
END RAM_tb;
 
ARCHITECTURE behavior OF RAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         clk : IN  std_logic;
         inst_addr : IN  std_logic_vector(10 downto 0);
         data_we : IN  std_logic;
         data_addr : IN  std_logic_vector(10 downto 0);
         data_din : IN  std_logic_vector(31 downto 0);
         inst_dout : OUT  std_logic_vector(31 downto 0);
         data_dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal inst_addr : std_logic_vector(10 downto 0) := (others => '0');
   signal data_we : std_logic := '0';
   signal data_addr : std_logic_vector(10 downto 0) := (others => '0');
   signal data_din : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal inst_dout : std_logic_vector(31 downto 0);
   signal data_dout : std_logic_vector(31 downto 0);
 
BEGIN
 
	clk <= not clk after 100ns;
	
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          clk => clk,
          inst_addr => inst_addr,
          data_we => data_we,
          data_addr => data_addr,
          data_din => data_din,
          inst_dout => inst_dout,
          data_dout => data_dout
        );

	
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		data_we <= '1';
		data_din <= x"00000001";	
		data_addr <= "00001010110";
		inst_addr <= "00001010110";
		
		wait for 100ns;
      -- insert stimulus here 

      wait;
   end process;

END;

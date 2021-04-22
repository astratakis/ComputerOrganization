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
use ieee.numeric_std.all; 
 
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
	signal data_we : std_logic := '0';
	signal data_din : std_logic_vector(31 downto 0) := (others => '0');
   signal inst_addr : std_logic_vector(10 downto 0) := (others => '0');
   signal data_addr : std_logic_vector(10 downto 0) := (others => '0');

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
		data_addr <= b"10000_000000";
		data_din <= x"0000_00f0";
		inst_addr <= b"00000_000000";
		wait for 200 ns;	
		
		--Write 11 data adresses and read 11 instructions
		for I in 0 to 10 loop
			data_addr <= std_logic_vector(unsigned(data_addr)+1);
			inst_addr <= std_logic_vector(unsigned(inst_addr)+1);
			data_din <= std_logic_vector(unsigned(data_din)+2);
			data_addr <= std_logic_vector(unsigned(data_addr)+1);
			wait for 200 ns;
		end loop;
		
		data_we <= '0'; 
		data_addr <= b"10000_000000";
		wait for 200 ns;
		
		--Try to write with disabled write enable
		for I in 0 to 3 loop
			data_addr <= std_logic_vector(unsigned(data_addr)+1);
			inst_addr <= std_logic_vector(unsigned(inst_addr)+1);
			data_din <= std_logic_vector(unsigned(data_din)+2);
			data_addr <= std_logic_vector(unsigned(data_addr)+1);
			wait for 200 ns;
		end loop;		
      wait;
   end process;

END;

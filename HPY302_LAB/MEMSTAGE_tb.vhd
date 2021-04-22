----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     31/03/2021 
-- Module Name:     MEMSTAGE_tb - behavior
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
 
ENTITY MEMSTAGE_tb IS
END MEMSTAGE_tb;
 
ARCHITECTURE behavior OF MEMSTAGE_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMSTAGE
    PORT(
         clk : IN  std_logic;
         MEM_WrEn : IN  std_logic;
         ByteOp : IN  std_logic;
         ALU_MEM_Addr : IN  std_logic_vector(31 downto 0);
         MEM_DataIn : IN  std_logic_vector(31 downto 0);
         MM_RdData : IN  std_logic_vector(31 downto 0);
         MEM_DataOut : OUT  std_logic_vector(31 downto 0);
         MM_Addr : OUT  std_logic_vector(10 downto 0);
         MM_WrEn : OUT  std_logic;
         MM_WrData : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal MEM_WrEn : std_logic := '0';
   signal ByteOp : std_logic := '0';
   signal ALU_MEM_Addr : std_logic_vector(31 downto 0) := (others => '0');
   signal MEM_DataIn : std_logic_vector(31 downto 0) := (others => '0');
   signal MM_RdData : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal MEM_DataOut : std_logic_vector(31 downto 0);
   signal MM_Addr : std_logic_vector(10 downto 0);
   signal MM_WrEn : std_logic;
   signal MM_WrData : std_logic_vector(31 downto 0);
 
BEGIN
 
	clk <= not clk after 100ns;
	
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMSTAGE PORT MAP (
          clk => clk,
          MEM_WrEn => MEM_WrEn,
          ByteOp => ByteOp,
          ALU_MEM_Addr => ALU_MEM_Addr,
          MEM_DataIn => MEM_DataIn,
          MM_RdData => MM_RdData,
          MEM_DataOut => MEM_DataOut,
          MM_Addr => MM_Addr,
          MM_WrEn => MM_WrEn,
          MM_WrData => MM_WrData
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
      
		-- Try to write with write disabled
		MEM_WrEn <= '0';
		ByteOp <= '0';
		ALU_MEM_Addr <= x"0000_0004";
		MEM_DataIn <= x"12e0_3415";
		wait for 200 ns;
		
		-- Write and read word in word address 1025 
		MEM_WrEn <= '1';
		ByteOp <= '0';
		ALU_MEM_Addr <= x"0000_0004";
		MEM_DataIn <= x"12e0_3415";			
		wait for 200 ns;
		
		-- Write and read byte in word address 1026 
		MEM_WrEn <= '1';
		ByteOp <= '1';
		ALU_MEM_Addr <= x"0000_0008";
		MEM_DataIn <= x"12e0_3415";			
		wait for 200 ns; 
		
		-- Read word
		MEM_WrEn <= '0';
		ByteOp <= '0';
		ALU_MEM_Addr <= x"0000_000c";
		MM_RdData <= x"12e0_5678";		
		wait for 200 ns;
		
		-- Read byte
		MEM_WrEn <= '0';
		ByteOp <= '1';
		ALU_MEM_Addr <= x"0000_0010";
		MM_RdData <= x"12e0_5678";		
		wait for 200 ns;		
      wait;
   end process;

END;

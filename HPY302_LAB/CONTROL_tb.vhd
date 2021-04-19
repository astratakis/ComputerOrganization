--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:33:50 04/06/2021
-- Design Name:   
-- Module Name:   /home/carioca/Desktop/comp_arch_help/HPY302_LAB/CONTROL_tb.vhd
-- Project Name:  HPY302_LAB
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CONTROL
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
 
ENTITY CONTROL_tb IS
END CONTROL_tb;
 
ARCHITECTURE behavior OF CONTROL_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CONTROL
    PORT(
         Inst_in : IN  std_logic_vector(31 downto 0);
         RF_A_in : IN  std_logic_vector(31 downto 0);
         RF_B_in : IN  std_logic_vector(31 downto 0);
         PC_Sel_con : OUT  std_logic;
         PC_LdEn_con : OUT  std_logic;
         RF_WrData_sel_con : OUT  std_logic;
         RF_B_sel_con : OUT  std_logic;
         RF_WrEn_con : OUT  std_logic;
         ImmExt_con : OUT  std_logic_vector(1 downto 0);
         ALU_Bin_sel_con : OUT  std_logic;
         ALU_func_con : OUT  std_logic_vector(3 downto 0);
         ByteOp_con : OUT  std_logic;
         MEM_WrEn_con : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Inst_in : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_A_in : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_B_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal PC_Sel_con : std_logic;
   signal PC_LdEn_con : std_logic;
   signal RF_WrData_sel_con : std_logic;
   signal RF_B_sel_con : std_logic;
   signal RF_WrEn_con : std_logic;
   signal ImmExt_con : std_logic_vector(1 downto 0);
   signal ALU_Bin_sel_con : std_logic;
   signal ALU_func_con : std_logic_vector(3 downto 0);
   signal ByteOp_con : std_logic;
   signal MEM_WrEn_con : std_logic;


BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROL PORT MAP (
          Inst_in => Inst_in,
          RF_A_in => RF_A_in,
          RF_B_in => RF_B_in,
          PC_Sel_con => PC_Sel_con,
          PC_LdEn_con => PC_LdEn_con,
          RF_WrData_sel_con => RF_WrData_sel_con,
          RF_B_sel_con => RF_B_sel_con,
          RF_WrEn_con => RF_WrEn_con,
          ImmExt_con => ImmExt_con,
          ALU_Bin_sel_con => ALU_Bin_sel_con,
          ALU_func_con => ALU_func_con,
          ByteOp_con => ByteOp_con,
          MEM_WrEn_con => MEM_WrEn_con
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		Inst_in <= b"100000_00000000000000000000_110000";
		wait for 50 ns;

		Inst_in <= b"100000_00000000000000000000_110001";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_110010";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_110011";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_110100";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_110101";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_110110";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_111000";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_111001";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_111010";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_111100";
		wait for 50 ns;
		
		Inst_in <= b"100000_00000000000000000000_111101";
		wait for 50 ns;
		
		Inst_in <= b"111000_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"111001_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"110000_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"110010_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"110011_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"111111_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"000000_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"000000_00001000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"000001_00001000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"000001_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"000011_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"000111_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"001111_00000000000000000000_000000";
		wait for 50 ns;
		
		Inst_in <= b"011111_00000000000000000000_000000";
		wait for 50 ns;
		
      -- insert stimulus here 

      wait;
   end process;

END;

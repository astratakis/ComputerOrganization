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
			ALU_zero: in std_logic;
			Reset: in std_logic;
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
	signal ALU_zero: std_logic;
	signal Reset: std_logic;

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
			 ALU_zero => ALU_zero,
			 Reset => Reset,
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
	
		-- Reset
		Inst_in <= b"100000_00000000000000000000_110000";
		Reset <= '1';
		wait for 50 ns;
		
		Reset <= '0';
		
		-- add
		Inst_in <= b"100000_00000000000000000000_110000";
		wait for 50 ns;
		
		-- sub
		Inst_in <= b"100000_00000000000000000000_110001";
		wait for 50 ns;
		
		-- and
		Inst_in <= b"100000_00000000000000000000_110010";
		wait for 50 ns;
		
		-- or
		Inst_in <= b"100000_00000000000000000000_110011";
		wait for 50 ns;
		
		--not
		Inst_in <= b"100000_00000000000000000000_110100";
		wait for 50 ns;
		
		-- nand
		Inst_in <= b"100000_00000000000000000000_110101";
		wait for 50 ns;
		
		-- nor
		Inst_in <= b"100000_00000000000000000000_110110";
		wait for 50 ns;
		
		-- sra
		Inst_in <= b"100000_00000000000000000000_111000";
		wait for 50 ns;
		
		-- srl
		Inst_in <= b"100000_00000000000000000000_111001";
		wait for 50 ns;
		
		-- sll
		Inst_in <= b"100000_00000000000000000000_111010";
		wait for 50 ns;
		
		-- rol
		Inst_in <= b"100000_00000000000000000000_111100";
		wait for 50 ns;
		
		-- ror
		Inst_in <= b"100000_00000000000000000000_111101";
		wait for 50 ns;
		
		-- li
		Inst_in <= b"111000_00000000000000000000_000000";
		wait for 50 ns;
		
		-- lui
		Inst_in <= b"111001_00000000000000000000_000000";
		wait for 50 ns;
		
		-- addi
		Inst_in <= b"110000_00000000000000000000_000000";
		wait for 50 ns;
		
		-- nandi
		Inst_in <= b"110010_00000000000000000000_000000";
		wait for 50 ns;
		
		-- ori
		Inst_in <= b"110011_00000000000000000000_000000";
		wait for 50 ns;
		
		-- b
		Inst_in <= b"111111_00000000000000000000_000000";
		wait for 50 ns;
		
		-- beq and RF[rs] == RF [rd]
		ALU_zero <= '1';
		Inst_in <= b"000000_00000000000000000000_000000";
		wait for 50 ns;
		
		-- beq and RF[rs] != RF [rd]
		ALU_zero <= '0';
		Inst_in <= b"000000_00000000000000000000_000000";
		wait for 50 ns;
		
		-- bne and RF[rs] != RF [rd]
		ALU_zero <= '0';
		Inst_in <= b"000001_00000000000000000000_000000";
		wait for 50 ns;
		
		-- bne and RF[rs] == RF [rd]
		ALU_zero <= '1';
		Inst_in <= b"000001_00000000000000000000_000000";
		wait for 50 ns;
		
		-- lb
		Inst_in <= b"000011_00000000000000000000_000000";
		wait for 50 ns;
		
		-- sb
		Inst_in <= b"000111_00000000000000000000_000000";
		wait for 50 ns;
		
		-- lw
		Inst_in <= b"001111_00000000000000000000_000000";
		wait for 50 ns;
		
		-- sw
		Inst_in <= b"011111_00000000000000000000_000000";
		wait for 50 ns;
		
      -- insert stimulus here 

      wait;
   end process;

END;

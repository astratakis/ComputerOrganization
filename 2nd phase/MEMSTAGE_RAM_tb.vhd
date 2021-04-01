----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     01/04/2021 
-- Module Name:     MEMSTAGE_RAM_tb - behavior 
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
  USE ieee.numeric_std.ALL;

  ENTITY MEMSTAGE_RAM_tb IS
  END MEMSTAGE_RAM_tb;

  ARCHITECTURE behavior OF MEMSTAGE_RAM_tb IS 

  -- Component Declaration
          COMPONENT MEMSTAGE_RAM is
				port(
					--Inputs
					clk: in std_logic;
					MEM_WrEn: in std_logic;
					ByteOp: in std_logic;
					ALU_MEM_Addr: in std_logic_vector(31 downto 0);
					MEM_DataIn: in std_logic_vector(31 downto 0);	
					
					--Outputs
					MEM_DataOut: out std_logic_vector(31 downto 0)
				);
          END COMPONENT;
          
			 signal clk: std_logic := '0';
			 signal MEM_WrEn: std_logic := '0';
			 signal ByteOp: std_logic := '0';
			 signal ALU_MEM_Addr: std_logic_vector(31 downto 0) := x"0000_0000";
			 signal MEM_DataIn: std_logic_vector(31 downto 0) := x"0000_0000";
			 signal MEM_DataOut: std_logic_vector(31 downto 0) := x"0000_0000";

  BEGIN

	clk <= not clk after 100 ns;
  -- Component Instantiation
          uut: MEMSTAGE_RAM PORT MAP(
					--Inputs
					clk => clk,
					MEM_WrEn => MEM_WrEn,
					ByteOp => ByteOp,
					ALU_MEM_Addr => ALU_MEM_Addr,
					MEM_DataIn => MEM_DataIn,
					
					--Outputs
					MEM_DataOut => MEM_DataOut
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

			wait for 20 ns;
			
			MEM_WrEn <= '0';
			ByteOp <= '0';
			ALU_MEM_Addr <= x"0000_0010";
			MEM_DataIn <= x"12e0_3415";
			wait for 200 ns;
			
			MEM_WrEn <= '1';
			ByteOp <= '0';
			ALU_MEM_Addr <= x"0000_0010";
			MEM_DataIn <= x"12e0_3415";			
			wait for 200 ns;
			
			MEM_WrEn <= '1';
			ByteOp <= '1';
			ALU_MEM_Addr <= x"0000_0010";
			MEM_DataIn <= x"12e0_3415";			
			wait for 200 ns;
			
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;

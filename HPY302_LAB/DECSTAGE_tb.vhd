----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     27/03/2021 
-- Module Name:     DECSTAGE_tb - behavior 
-- Project Name:    HPY302_LAB
-- Description:	Testbench for the module DECSTAGE
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

  ENTITY DECSTAGE_tb IS
  END DECSTAGE_tb;

  ARCHITECTURE behavior OF DECSTAGE_tb IS 

	component DECSTAGE is
		port(
			--Inputs
			Instr		: in std_logic_vector(31 downto 0);
			RF_WrEn	: in std_logic;
			ALU_out	: in std_logic_vector(31 downto 0);
			MEM_out	: in std_logic_vector(31 downto 0);
			RF_WrData_sel: in std_logic;
			RF_B_sel	: in std_logic;
			ImmExt	: in std_logic_vector(1 downto 0);
			Clk		: in std_logic;
			RST		: in std_logic;
			
			--Outputs
			Immed		: out std_logic_vector(31 downto 0);
			RF_A		: out std_logic_vector(31 downto 0);
			RF_B		: out std_logic_vector(31 downto 0)
			);
	end component;

         signal Instr		: std_logic_vector(31 downto 0);
			signal RF_WrEn		: std_logic;
			signal ALU_out		: std_logic_vector(31 downto 0);
			signal MEM_out		: std_logic_vector(31 downto 0);
			signal RF_WrData_sel: std_logic;
			signal RF_B_sel	: std_logic;
			signal ImmExt		: std_logic_vector(1 downto 0);
			signal Clk			: std_logic;
			signal Immed		: std_logic_vector(31 downto 0);
			signal RF_A			: std_logic_vector(31 downto 0);
			signal RF_B			: std_logic_vector(31 downto 0);
			signal RST			: std_logic;
          

  BEGIN
		
		Clk <= not Clk after 100ns;
		
		uut: DECSTAGE PORT MAP(
					Instr => Instr,
					RF_WrEn => RF_WrEn,
					ALU_out => ALU_out,
					MEM_out => MEM_out,
					RF_WrData_sel => RF_WrData_sel,
					RF_B_sel	=> RF_B_sel,
					ImmExt => ImmExt,
					Clk => Clk,
					Immed => Immed,
					RF_A => RF_A,
					RF_B => RF_B,
					RST => RST
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			wait for 10 ns;
			

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;

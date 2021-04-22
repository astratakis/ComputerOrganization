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

         signal Instr		: std_logic_vector(31 downto 0) := (others => '0');
			signal RF_WrEn		: std_logic := '0';
			signal ALU_out		: std_logic_vector(31 downto 0) := (others => '0');
			signal MEM_out		: std_logic_vector(31 downto 0) := (others => '0');
			signal RF_WrData_sel: std_logic := '0';
			signal RF_B_sel	: std_logic := '0';
			signal ImmExt		: std_logic_vector(1 downto 0) := (others => '0');
			signal Clk			: std_logic := '0';
			signal Immed		: std_logic_vector(31 downto 0) := (others => '0');
			signal RF_A			: std_logic_vector(31 downto 0) := (others => '0');
			signal RF_B			: std_logic_vector(31 downto 0) := (others => '0');
			signal RST			: std_logic := '0';
          

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
			
			-- Reset Register File
			RST <= '1';
			Instr <= b"000000_00000_00000_00000_00000_000000";
			wait for 200 ns;
			
			RST <= '0';
			
			----- TESTING IMMEXT ------
			
			-- Zero-fill
			Instr	<= b"000000_00000_00000_00000_00000_011111"; 
			RF_WrEn <= '0';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '0';
			RF_B_sel	<= '0';
			ImmExt <= "00";
			wait for 200 ns;
			
			-- Zero-fill and shift
			Instr	<= b"000000_00000_00000_00000_00000_011111"; 
			RF_WrEn <= '0';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '0';
			RF_B_sel	<= '0';
			ImmExt <= "01";
			wait for 200 ns;
			
			-- Sign-extend
			Instr	<= b"000000_00000_00000_11111_11111_100000"; 
			RF_WrEn <= '0';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '0';
			RF_B_sel	<= '0';
			ImmExt <= "10";
			wait for 200 ns;
			
			-- Sign-extend and shift
			Instr	<= b"000000_00000_00000_11111_11111_100000"; 
			RF_WrEn <= '0';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '0';
			RF_B_sel	<= '0';
			ImmExt <= "11";
			wait for 200 ns;
			
			-- Try to write R0 which isn't possible
			Instr	<= b"000000_00000_00000_00000_00000_000000"; 
			RF_WrEn <= '1';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '0';
			RF_B_sel	<= '1';
			ImmExt <= "00";
			wait for 200 ns;
			
			-- Write from ALU_out in R2 and reading 
			Instr	<= b"000000_00010_00010_00000_00000_000000"; 
			RF_WrEn <= '1';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '0';
			RF_B_sel	<= '1';
			ImmExt <= "00";
			wait for 200 ns;			
			
			-- Don't write from MEM_out in R2 and read
			Instr	<= b"000000_00010_00010_00000_00000_000000"; 
			RF_WrEn <= '0';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '1';
			RF_B_sel	<= '1';
			ImmExt <= "00";
			wait for 200 ns;

			-- Write and read from MEM_out in R3
			Instr	<= b"000000_00010_00011_00000_00000_000000"; 
			RF_WrEn <= '1';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '1';
			RF_B_sel	<= '1';
			ImmExt <= "00";
			wait for 200 ns;
			
			-- Write R4 from ALU_out and read R2 and R3
			Instr	<= b"000000_00010_00100_00011_00000_000000"; 
			RF_WrEn <= '1';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '0';
			RF_B_sel	<= '0';
			ImmExt <= "00";
			wait for 200 ns;
			
			-- Write R4 from ALU_out and read R2 and R3
			Instr	<= b"000000_00010_00100_00011_00000_000000"; 
			RF_WrEn <= '1';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '0';
			RF_B_sel	<= '0';
			ImmExt <= "00";
			wait for 200 ns;
			
			-- Read R3 and R4
			Instr	<= b"000000_00011_00100_00100_00000_000000"; 
			RF_WrEn <= '0';
			ALU_out <= x"0000_abcd";
			MEM_out <= x"0000_dcba";
			RF_WrData_sel <= '0';
			RF_B_sel	<= '0';
			ImmExt <= "00";
			wait for 200 ns;
        wait; -- will wait forever
        wait; -- will wait forever
		  
		  
     END PROCESS tb;
  --  End Test Bench 

  END;

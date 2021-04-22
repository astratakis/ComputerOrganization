----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     19/03/2021 
-- Module Name:     mux_32to1_tb - Behavioral 
-- Project Name:    HPY302_LAB
-- Description: Testbench for the module mux_32to1
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
ENTITY mux_32to1_tb IS
END mux_32to1_tb;
 
ARCHITECTURE behavior OF mux_32to1_tb IS 
  
    COMPONENT mux_32to1
    PORT(
			--Inputs
         Ard : IN  std_logic_vector(4 downto 0);
			Datain0: in std_logic_vector(31 downto 0);
			Datain1: in std_logic_vector(31 downto 0);
			Datain2: in std_logic_vector(31 downto 0);
			Datain3: in std_logic_vector(31 downto 0);
			Datain4: in std_logic_vector(31 downto 0);
			Datain5: in std_logic_vector(31 downto 0);
			Datain6: in std_logic_vector(31 downto 0);
			Datain7: in std_logic_vector(31 downto 0);
			Datain8: in std_logic_vector(31 downto 0);
			Datain9: in std_logic_vector(31 downto 0);
			Datain10: in std_logic_vector(31 downto 0);
			Datain11: in std_logic_vector(31 downto 0);
			Datain12: in std_logic_vector(31 downto 0);
			Datain13: in std_logic_vector(31 downto 0);
			Datain14: in std_logic_vector(31 downto 0);
			Datain15: in std_logic_vector(31 downto 0);
			Datain16: in std_logic_vector(31 downto 0);
			Datain17: in std_logic_vector(31 downto 0);
			Datain18: in std_logic_vector(31 downto 0);
			Datain19: in std_logic_vector(31 downto 0);
			Datain20: in std_logic_vector(31 downto 0);
			Datain21: in std_logic_vector(31 downto 0);
			Datain22: in std_logic_vector(31 downto 0);
			Datain23: in std_logic_vector(31 downto 0);
			Datain24: in std_logic_vector(31 downto 0);
			Datain25: in std_logic_vector(31 downto 0);
			Datain26: in std_logic_vector(31 downto 0);
			Datain27: in std_logic_vector(31 downto 0);
			Datain28: in std_logic_vector(31 downto 0);
			Datain29: in std_logic_vector(31 downto 0);
			Datain30: in std_logic_vector(31 downto 0);
			Datain31: in std_logic_vector(31 downto 0);
			
			--Outputs
         Dataout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
   signal Ard : std_logic_vector(4 downto 0);
	signal Datain0 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain1 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain2 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain3 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain4 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain5 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain6 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain7 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain8 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain9 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain10 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain11 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain12 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain13 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain14 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain15 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain16 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain17 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain18 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain19 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain20 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain21 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain22 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain23 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain24 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain25 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain26 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain27 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain28 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain29 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain30 : std_logic_vector(31 downto 0) := (others => '0');
	signal Datain31 : std_logic_vector(31 downto 0) := (others => '0');
   signal Dataout : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_32to1 PORT MAP (
         Ard => Ard,
			Datain0 => Datain0,
			Datain1 => Datain1,
			Datain2 => Datain2,
			Datain3 => Datain3,
			Datain4 => Datain4,
			Datain5 => Datain5,
			Datain6 => Datain6,
			Datain7 => Datain7,
			Datain8 => Datain8,
			Datain9 => Datain9,
			Datain10 => Datain10,
			Datain11 => Datain11,
			Datain12 => Datain12,
			Datain13 => Datain13,
			Datain14 => Datain14,
			Datain15 => Datain15,
			Datain16 => Datain16,
			Datain17 => Datain17,
			Datain18 => Datain18,
			Datain19 => Datain19,
			Datain20 => Datain20,
			Datain21 => Datain21,
			Datain22 => Datain22,
			Datain23 => Datain23,
			Datain24 => Datain24,
			Datain25 => Datain25,
			Datain26 => Datain26,
			Datain27 => Datain27,
			Datain28 => Datain28,
			Datain29 => Datain29,
			Datain30 => Datain30,
			Datain31 => Datain31,          
			Dataout => Dataout
        );

   -- Stimulus process
   stim_proc: process
   begin
	  wait for 10ns;	
		
		--Adding random values in mux inputs
		Datain0 <= x"bf482e0a";
		Datain1 <= x"f7f6810e";
		Datain2 <= x"c47b8651";
		Datain3 <= x"929045af";
		Datain4 <= x"4f478b78";
		Datain5 <= x"03a3235f";
		Datain6 <= x"d850578f";
		Datain7 <= x"35f47dfe";
		Datain8 <= x"3e7a24a0";
		Datain9 <= x"8b6612cc";
		Datain10 <= x"bba8baa5";
		Datain11 <= x"d1632ee9";
		Datain12 <= x"a574a411";
		Datain13 <= x"2b7f20d4";
		Datain14 <= x"16d105a2";
		Datain15 <= x"9f9f97d2";
		Datain16 <= x"293013ee";
		Datain17 <= x"35c80fd7";
		Datain18 <= x"786e30e0";
		Datain19 <= x"6443ff38";
		Datain20 <= x"243135e9";
		Datain21 <= x"d82eade3";
		Datain22 <= x"49e476e3";
		Datain23 <= x"547accc7";
		Datain24 <= x"d1acf225";
		Datain25 <= x"7b2e30aa";
		Datain26 <= x"9f8afbbe";
		Datain27 <= x"ed837154";
		Datain28 <= x"d9091f1f";
		Datain29 <= x"c5b8a8cb";
		Datain30 <= x"0274922a";
		Datain31 <= x"a539fe23";
		
		--Checking all 32 possible values of the selection input
		Ard <= "00000";
		for I in 0 to 31 loop
			wait for 50 ns;
			Ard <= std_logic_vector(unsigned(Ard)+1); 
		end loop;
		
      wait;
   end process;

END;

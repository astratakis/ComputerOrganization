-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY IFSTAGE_tb IS
  END IFSTAGE_tb;

  ARCHITECTURE behavior OF IFSTAGE_tb IS 

  -- Component Declaration
          COMPONENT IFSTAGE is
				port(
					--Inputs
					PC_Immed: in std_logic_vector(31 downto 0);
					PC_sel: in std_logic;
					PC_LdEn: in std_logic;
					Reset: in std_logic;
					Clk: in std_logic;
					
					--Output
					PC: out std_logic_vector(31 downto 0)
					);
          END COMPONENT;

  					signal PC_Immed: std_logic_vector(31 downto 0);
					signal PC_sel: std_logic := '0';
					signal PC_LdEn: std_logic := '0';
					signal Reset: std_logic := '0';
					signal Clk: std_logic := '0';
					signal PC: std_logic_vector(31 downto 0) := x"0000_0000";
          

  BEGIN
		Clk <= not Clk after 100ns;

  -- Component Instantiation
          uut: IFSTAGE PORT MAP(
               --Inputs
					PC_Immed => PC_Immed,
					PC_sel => PC_sel,
					PC_LdEn => PC_LdEn,
					Reset => Reset,
					Clk => Clk,
					
					--Output
					PC => PC
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

			wait for 20 ns; -- wait until global set/reset completes
			PC_sel <= '0';
			PC_LdEn <= '1';
			Reset <= '0';
			PC_Immed <= x"0000_1000";
			wait for 500 ns;
			
			PC_LdEn <= '0';
			wait for 100 ns;
			
			Reset <= '1';
			wait for 100 ns;
			
			PC_LdEn <= '1';
			Reset <= '0';
			wait for 300 ns;
			
			PC_sel <= '1';
			wait for 100ns;
			
			PC_sel <= '0';
			wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;

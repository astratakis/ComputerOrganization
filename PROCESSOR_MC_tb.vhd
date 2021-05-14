-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY PROCESSOR_MC_tb IS
  END PROCESSOR_MC_tb;

  ARCHITECTURE behavior OF PROCESSOR_MC_tb IS 

  -- Component Declaration
          COMPONENT PROCESSOR_MC
          PORT(
				Reset: in std_logic;
				Clk: in std_logic
               );
          END COMPONENT;
			 
		signal Clk: std_logic := '0';
		signal Reset: std_logic := '0';

  BEGIN
		Clk <= not Clk after 20 ns;
  -- Component Instantiation
          uut: PROCESSOR_MC PORT MAP(
                  Reset => Reset,
                  Clk => Clk
					);


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
		Reset <= '1';
		wait for 30 ns;
		
		Reset <= '0';

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;

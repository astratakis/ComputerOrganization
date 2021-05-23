-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY PROCESSOR_RAM_PIPELINE_tb IS
  END PROCESSOR_RAM_PIPELINE_tb;

  ARCHITECTURE behavior OF PROCESSOR_RAM_PIPELINE_tb IS 

  -- Component Declaration
          COMPONENT PROCESSOR_RAM_PIPELINE
				port(
					Clk: in std_logic;
					Reset: in std_logic
				);
          END COMPONENT;

			signal Clk: std_logic := '0';
			signal Reset: std_logic := '0';      

  BEGIN

  -- Component Instantiation
          uut: PROCESSOR_RAM_PIPELINE PORT MAP(
					Clk => Clk,
					Reset => Reset
          );

		Clk <= not Clk after 50 ns;
		
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			
		Reset <= '1';
		wait for 100 ns; -- wait until global set/reset completes
		Reset <= '0';			

      wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;

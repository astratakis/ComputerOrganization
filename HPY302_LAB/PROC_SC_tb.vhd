-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY PROC_SC_tb IS
  END PROC_SC_tb;

  ARCHITECTURE behavior OF PROC_SC_tb IS 

  -- Component Declaration
          COMPONENT PROC_SC
          PORT(
				Reset: in std_logic;
				Clk: in std_logic
               );
          END COMPONENT;
			 
		signal Clk: std_logic := '0';
		signal Reset: std_logic := '0';

  BEGIN
		Clk <= not Clk after 100 ns;
  -- Component Instantiation
          uut: PROC_SC PORT MAP(
                  Reset => Reset,
                  Clk => Clk
					);


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
		Reset <= '1';
		wait for 400 ns;
		
		Reset <= '0';

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;

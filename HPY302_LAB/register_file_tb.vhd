-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY register_file_tb IS
  END register_file_tb;

  ARCHITECTURE behavior OF register_file_tb IS 

  -- Component Declaration
          COMPONENT register_file is
          port(
					CLK: in std_logic;
					WrEn: in std_logic;
					Awr: in std_logic_vector(4 downto 0);
					Ard1: in std_logic_vector(4 downto 0);
					Ard2: in std_logic_vector(4 downto 0);
					Din: in std_logic_vector(31 downto 0);
					RST: in std_logic;
					
					Dout1: out std_logic_vector(31 downto 0);
					Dout2: out std_logic_vector(31 downto 0)
                  );
          END COMPONENT;

         signal CLK: std_logic := '0';
			signal WrEn: std_logic := '0';
			signal Awr: std_logic_vector(4 downto 0);
			signal Ard1: std_logic_vector(4 downto 0);
			signal Ard2: std_logic_vector(4 downto 0);
			signal Din: std_logic_vector(31 downto 0);
			signal RST: std_logic := '0'; 
			
			signal Dout1: std_logic_vector(31 downto 0);
			signal Dout2: std_logic_vector(31 downto 0);
			 

  BEGIN
			CLK <= not CLK after 100ns;

          uut: register_file PORT MAP(
					CLK => CLK,
					WrEn => WrEn,
					Awr => Awr,
					Ard1 => Ard1,
					Ard2 => Ard2,
					Din => Din,
					RST => RST,
					
					Dout1 => Dout1,
					Dout2 => Dout2
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
		
		RST <= '1';
		wait for 200 ns; -- wait until global set/reset completes
		
		RST <= '0';
		
		WrEn <= '1';
		Ard1 <= "00000";
		Ard2 <= "00000";
		Awr <= "00000";
		Din <= x"eeeeffff";
		wait for 200 ns;
		
		for I in 0 to 31 loop
			Ard2 <= Ard1;
			Awr <= Ard1;
			Ard1 <= std_logic_vector(unsigned(Ard1)+1);
			wait for 200 ns;
		end loop;
		  
     END PROCESS tb;
  --  End Test Bench 

  END;

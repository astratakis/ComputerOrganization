-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY EXSTAGE_tb IS
  END EXSTAGE_tb;

  ARCHITECTURE behavior OF EXSTAGE_tb IS 

		component EXSTAGE is
			port(
				--Inputs
				RF_A: in std_logic_vector(31 downto 0);
				RF_B: in std_logic_vector(31 downto 0);
				Immed: in std_logic_vector(31 downto 0);
				ALU_Bin_sel: in std_logic;
				ALU_func: in std_logic_vector(3 downto 0);
				
				--Outputs
				ALU_out: out std_logic_vector(31 downto 0);
				ALU_zero: out std_logic
				);
		end component;
          
		signal RF_A: std_logic_vector(31 downto 0):= (others => '0');
		signal RF_B: std_logic_vector(31 downto 0):= (others => '0');
		signal Immed: std_logic_vector(31 downto 0):= (others => '0');
		signal ALU_Bin_sel: std_logic := '0';
		signal ALU_func: std_logic_vector(3 downto 0):= (others => '0'); 
		signal ALU_out: std_logic_vector(31 downto 0):= (others => '0');
		signal ALU_zero: std_logic := '0';
  
  BEGIN

          uut: EXSTAGE PORT MAP(
                  RF_A => RF_A,
                  RF_B => RF_B,
						Immed => Immed,
						ALU_Bin_sel => ALU_Bin_sel,
						ALU_func => ALU_func,
						ALU_out => ALU_OUT,
						ALU_zero => ALU_zero
						);


     tb : PROCESS
     BEGIN
	  
		  --2 + 1 = 3
			RF_A <= x"0000_0001";
			RF_B <= x"0000_0002";
			Immed <= x"0000_0001";
			ALU_Bin_sel <= '0';
			ALU_func <= "0000";
			wait for 100 ns;
			
			--1 - 1 = 0
			RF_A <= x"0000_0001";
			RF_B <= x"0000_0002";
			Immed <= x"0000_0001";
			ALU_Bin_sel <= '0';
			ALU_func <= "0001";
			wait for 100 ns;
			
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;

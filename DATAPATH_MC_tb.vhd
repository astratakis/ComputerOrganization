-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY DATAPATH_MC_tb IS
  END DATAPATH_MC_tb;

  ARCHITECTURE behavior OF DATAPATH_MC_tb IS 

  -- Component Declaration
          COMPONENT DATAPATH_MC
          PORT(
					PC_Sel: in std_logic;
					PC_LdEn: in std_logic;
					Reset: in std_logic;
					Clk: in std_logic;
					RF_WrEn: in std_logic;
					RF_WrData_sel: in std_logic;
					RF_B_sel: in std_logic;
					ImmExt: in std_logic_vector(1 downto 0);
					Instr: in std_logic_vector(31 downto 0);
					ALU_Bin_sel: in std_logic;
					ALU_func: in std_logic_vector(3 downto 0);		
					MM_RdData: in std_logic_vector(31 downto 0);
					ByteOp: in std_logic;
					MEM_WrEn: in std_logic;
					instr_reg_we: in std_logic;	
					immed_reg_we: in std_logic;		
					A_reg_we: in std_logic;	
					B_reg_we: in std_logic;	
					ALU_reg_we: in std_logic;
					MEM_data_reg_we: in std_logic;
					
					ALU_zero: out std_logic;
					PC: out std_logic_vector(31 downto 0);
					MM_WrEn: out std_logic;
					MM_Addr: out std_logic_vector(10 downto 0);
					MM_WrData: out std_logic_vector(31 downto 0)
				);
          END COMPONENT;

			signal PC_Sel: std_logic;
			signal PC_LdEn: std_logic;
			signal Reset: std_logic;
			signal Clk: std_logic := '0';
			signal RF_WrEn: std_logic;
			signal RF_WrData_sel: std_logic;
			signal RF_B_sel: std_logic;
			signal ImmExt: std_logic_vector(1 downto 0);
			signal Instr: std_logic_vector(31 downto 0);
			signal ALU_Bin_sel: std_logic;
			signal ALU_func: std_logic_vector(3 downto 0);		
			signal MM_RdData: std_logic_vector(31 downto 0);
			signal ByteOp: std_logic;
			signal MEM_WrEn: std_logic;
			signal instr_reg_we: std_logic;	
			signal immed_reg_we: std_logic;		
			signal A_reg_we: std_logic;	
			signal B_reg_we: std_logic;	
			signal ALU_reg_we: std_logic;
			signal MEM_data_reg_we: std_logic;			
				
			signal ALU_zero: std_logic;
			signal PC: std_logic_vector(31 downto 0);
			signal MM_WrEn: std_logic;
			signal MM_Addr: std_logic_vector(10 downto 0);
			signal MM_WrData: std_logic_vector(31 downto 0);
          

  BEGIN
	  -- Component Instantiation
          uut: DATAPATH_MC PORT MAP(
				PC_Sel => PC_Sel,
				PC_LdEn => PC_LdEn,
				Reset => Reset,
				Clk => Clk,
				RF_WrEn => RF_WrEn,
				RF_WrData_sel => RF_WrData_sel,
				RF_B_sel => RF_B_sel,
				ImmExt => ImmExt,
				Instr => Instr,
				ALU_Bin_sel => ALU_Bin_sel,
				ALU_func => ALU_func,		
				MM_RdData => MM_RdData,
				ByteOp => ByteOp,
				MEM_WrEn => MEM_WrEn,
				instr_reg_we => instr_reg_we,	
				immed_reg_we => immed_reg_we,
				A_reg_we => A_reg_we,
				B_reg_we =>	B_reg_we,
				ALU_reg_we => ALU_reg_we,
				MEM_data_reg_we => MEM_data_reg_we,	
				
				ALU_zero => ALU_zero,
				PC => PC,
				MM_WrEn => MM_WrEn,
				MM_Addr => MM_Addr,
				MM_WrData => MM_WrData
			);
			
		Clk <= not Clk after 20 ns;

  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			Reset <= '1';
			wait for 30 ns; -- wait until global set/reset completes
			Reset <= '0';
					
			-- IF
			PC_Sel <= '0';
			Instr <= "11000000000001010000000000001000";
			
			PC_LdEn <= '1';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '1';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;

			------------------
			-- addi r5, r0, 8 
			------------------
			
			-- addi r5, r0, 8 (DEC read) 
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "00";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "11000000000001010000000000001000";
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '1';
			B_reg_we <= '1';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			-- addi r5, r0, 8 (ΕΧ) 
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "00";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "11000000000001010000000000001000";
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '1';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			-- addi r5, r0, 8 (DEC write) 
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "00";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "11000000000001010000000000001000";
			
			PC_LdEn <= '0';
			RF_WrEn <= '1';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
				
			-- addi r5, r0, 8 (IF) 
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "00";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "11001100000000111010101111001101";
			
			PC_LdEn <= '1';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '1';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
						
			----------------------
			-- ori r3, r0, x"abcd"
			----------------------
			
			
			-- ori r3, r0, x"abcd" (DEC read) 
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "00";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0011";              
			ByteOp <= '0';
			Instr <= "11001100000000111010101111001101";
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '1';
			B_reg_we <= '1';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			-- ori r3, r0, x"abcd" (ΕΧ) 
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "00";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0011";              
			ByteOp <= '0';
			Instr <= "11001100000000111010101111001101";
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '1';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			-- ori r3, r0, x"abcd" (DEC write) 
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "00";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0011";              
			ByteOp <= '0';
			Instr <= "11001100000000111010101111001101";
			
			PC_LdEn <= '0';
			RF_WrEn <= '1';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			-- ori r3, r0, x"abcd" (IF)
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "00";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0011";              
			ByteOp <= '0';
			Instr <= "01111100000000110000000000000100";
			
			PC_LdEn <= '1';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '1';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			----------------
			-- sw r3, 4(r0)
			----------------
			
			
			-- sw r3, 4(r0) (DEC read)			
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '1';
			ImmExt <= "01";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "01111100000000110000000000000100";
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '1';
			B_reg_we <= '1';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			-- sw r3, 4(r0) (EX)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '1';
			ImmExt <= "01";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "01111100000000110000000000000100";
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '1';
			MEM_data_reg_we <= '0';
			wait for 40 ns;

			-- sw r3, 4(r0) (MEM store)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '1';
			ImmExt <= "01";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "01111100000000110000000000000100";
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '1';
			instr_reg_we <= '0';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			-- sw r3, 4(r0) (IF)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '1';
			ImmExt <= "01";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "00001100000100000000000000000100";	
			
			PC_LdEn <= '1';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '1';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			
			---------------
			-- lb r16, 4(r0)
			---------------
		
			-- lb r16, 4(r0) (DEC read)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '0';
			ImmExt <= "01";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '1';
			MM_RdData <= x"0000abcd";
			Instr <= "00001100000100000000000000000100";	
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '1';
			B_reg_we <= '1';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;

			-- lb r16, 4(r0) (EX)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '0';
			ImmExt <= "01";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '1';
			MM_RdData <= x"0000abcd";
			Instr <= "00001100000100000000000000000100";	
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '1';
			MEM_data_reg_we <= '0';
			wait for 40 ns;

			-- lb r16, 4(r0) (MEM load)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '0';
			ImmExt <= "01";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '1';
			MM_RdData <= x"0000abcd";
			Instr <= "00001100000100000000000000000100";	
			
			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '1';
			wait for 40 ns;

			-- lb r16, 4(r0) (DEC write)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '0';
			ImmExt <= "01";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '1';
			MM_RdData <= x"0000abcd";
			Instr <= "00001100000100000000000000000100";	
			
			PC_LdEn <= '0';
			RF_WrEn <= '1';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			-- lb r16, 4(r0) (IF)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '0';
			ImmExt <= "01";             
			ALU_Bin_sel <= '1';            
			ALU_func <= "0000";              
			ByteOp <= '1';
			MM_RdData <= x"0000abcd";
			Instr <= "00000100101001010000000000001000";		

			PC_LdEn <= '1';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '1';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			
			-----------------
			-- bne r5, r5, 8
			-----------------
			
			-- bne r5, r5, 8 (DEC read)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '0';
			ImmExt <= "11";             
			ALU_Bin_sel <= '0';            
			ALU_func <= "0001";              
			ByteOp <= '0';
			Instr <= "00000100101001010000000000001000";		

			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '1';
			B_reg_we <= '1';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;

			-- bne r5, r5, 8 (EX)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '0';
			ImmExt <= "11";             
			ALU_Bin_sel <= '0';            
			ALU_func <= "0001";              
			ByteOp <= '0';
			Instr <= "00000100101001010000000000001000";	

			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '1';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			-- bne r5, r0, 8 (IF)
			PC_Sel <= '0';
			RF_WrData_sel <= '1'; 
			RF_B_sel <= '0';
			ImmExt <= "11";             
			ALU_Bin_sel <= '0';            
			ALU_func <= "0001";              
			ByteOp <= '0';
			Instr <= "00000100101000000000000000001000";		

			PC_LdEn <= '1';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '1';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			
			-----------------
			-- bne r5, r0, 8
			-----------------
			
			-- bne r5, r0, 8 (DEC read)
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "11";             
			ALU_Bin_sel <= '0';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "00000100101000000000000000001000";		

			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '1';
			B_reg_we <= '1';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;

			-- bne r5, r0, 8 (EX)
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "11";             
			ALU_Bin_sel <= '0';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "00000100101000000000000000001000";		

			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '1';
			MEM_data_reg_we <= '0';
			wait for 40 ns;			
			
			-- bne r5, r0, 8 (IF)
			PC_Sel <= '1';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "11";             
			ALU_Bin_sel <= '0';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "11111100000000001111111111111110";		
			
			PC_LdEn <= '1';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '1';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;
			
			
			--------
			-- b -2
			--------
			
			-- b -2 (DEC read)
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "11";             
			ALU_Bin_sel <= '0';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "11111100000000001111111111111110";		

			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '1';
			A_reg_we <= '1';
			B_reg_we <= '1';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;

			-- b -2 (EX)
			PC_Sel <= '0';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "11";             
			ALU_Bin_sel <= '0';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "11111100000000001111111111111110";	

			PC_LdEn <= '0';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '0';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '1';
			MEM_data_reg_we <= '0';
			wait for 40 ns;

			-- b -2 (IF)
			PC_Sel <= '1';
			RF_WrData_sel <= '0'; 
			RF_B_sel <= '0';
			ImmExt <= "11";             
			ALU_Bin_sel <= '0';            
			ALU_func <= "0000";              
			ByteOp <= '0';
			Instr <= "11111100000000001111111111111110";	

			PC_LdEn <= '1';
			RF_WrEn <= '0';
			MEM_WrEn <= '0';
			instr_reg_we <= '1';
			immed_reg_we <= '0';
			A_reg_we <= '0';
			B_reg_we <= '0';
			ALU_reg_we <= '0';
			MEM_data_reg_we <= '0';
			wait for 40 ns;			
			wait; -- will wait forever
			
     END PROCESS tb;
  --  End Test Bench 

  END;


-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY DATAPATH_tb IS
  END DATAPATH_tb;

  ARCHITECTURE behavior OF DATAPATH_tb is 

  -- Component Declaration
          COMPONENT DATAPATH
				port(
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
				
			signal ALU_zero: std_logic;
			signal PC: std_logic_vector(31 downto 0);
			signal MM_WrEn: std_logic;
			signal MM_Addr: std_logic_vector(10 downto 0);
			signal MM_WrData: std_logic_vector(31 downto 0);
          

  BEGIN
		
		
  -- Component Instantiation
          uut: DATAPATH PORT MAP(
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
					
				ALU_zero => ALU_zero,
				PC => PC,
				MM_WrEn => MM_WrEn,
				MM_Addr => MM_Addr,
				MM_WrData => MM_WrData
			);
			
		Clk <= not Clk after 100 ns;


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        Reset <= '1';
        wait for 200 ns;
		  
        Reset <= '0';
        
        -- addi r5, r0, 8
        PC_Sel <= '0';
        PC_LdEn <= '1';
        RF_WrEn <= '1';
        RF_WrData_sel <= '0'; 
        RF_B_sel <= '0';
        ImmExt <= "00";             
        ALU_Bin_sel <= '1';            
        ALU_func <= "0000";              
        MEM_WrEn <= '0';
        ByteOp <= '0';
        Instr <= "11000000000001010000000000001000";
        wait for 200 ns;
        
        -- ori r3, r0, x"abcd"
        PC_Sel <= '0';
        PC_LdEn <= '1';
        RF_WrEn <= '1';
        RF_WrData_sel <= '0'; 
        RF_B_sel <= '0';
        ImmExt <= "00";            
        ALU_Bin_sel <= '1';             
        ALU_func <= "0011";               
        MEM_WrEn <= '0';
        ByteOp <= '0';
        Instr <= "11001100000000111010101111001101";
        wait for 200 ns;
        
        -- sw r3, 4(r0)
        PC_Sel <= '0';
        PC_LdEn <= '1';
        RF_WrEn <= '0';
        RF_WrData_sel <= '1';
        RF_B_sel <= '1';
        ImmExt <= "01";
        ALU_Bin_sel <= '1'; 
        ALU_func <= "0000";
        MEM_WrEn <= '1';
        ByteOp <= '0';
        Instr <= "01111100000000110000000000000100";
        wait for 200 ns;
        
        -- lw r10, -4(r5)
        PC_Sel <= '0';
        PC_LdEn <= '1';
        RF_WrEn <= '1';
        RF_WrData_sel <= '1';
        RF_B_sel <= '0';
        ImmExt <= "01";
        ALU_Bin_sel <= '1';    
        ALU_func <= "0000";
        MEM_WrEn <= '0';
        ByteOp <= '0';
        MM_RdData <= x"0000abcd";
        Instr <= "00111100101010101111111111111100";
        wait for 200 ns;
        
        -- lb r16 4(r0)
        PC_Sel <= '0';
        PC_LdEn <= '1';
        RF_WrEn <= '1';
        RF_WrData_sel <= '1';
        RF_B_sel <= '0';
        ImmExt <= "01";
        ALU_Bin_sel <= '1';
        ALU_func <= "0000";
        MEM_WrEn <= '0';
        ByteOp <= '1';
        MM_RdData <= x"0000abcd";
        Instr <= "00001100000100000000000000000100";
        wait for 200 ns;
        
        -- nand r4, r0, r16
        PC_Sel <= '0';
        PC_LdEn <= '1';
        RF_WrEn <= '1';
        RF_WrData_sel <= '0'; 
        RF_B_sel <= '0';
        ImmExt <= "00";
        ALU_Bin_sel <= '0';
        ALU_func <= "0101";
        MEM_WrEn <= '0';
        ByteOp <= '0';
        Instr <= "10000001010001001000000000110101";
        wait for 200 ns;
		  
        -- bne r5, r5, 8
        PC_Sel <= '0';
        PC_LdEn <= '1';
        RF_WrEn <= '0';
        RF_WrData_sel <= '1'; 
        RF_B_sel <= '0';
        ImmExt <= "11";
        ALU_Bin_sel <= '0';
        ALU_func <= "0001";
        MEM_WrEn <= '0';
        ByteOp <= '0';
        Instr <= "00000100101001010000000000001000";
		  wait for 200 ns;
		  
        -- b -2
        PC_Sel <= '1';
        PC_LdEn <= '1';
        RF_WrEn <= '0';
        RF_WrData_sel <= '0'; 
        RF_B_sel <= '0';
        ImmExt <= "11";
        ALU_Bin_sel <= '0';
        ALU_func <= "0000";
        MEM_WrEn <= '0';
        ByteOp <= '0';
        Instr <= "11111100000000001111111111111110";
		  wait for 200 ns;

        -- addi r1, r0, 1
        PC_Sel <= '0';
        PC_LdEn <= '1';
        RF_WrEn <= '0';
        RF_WrData_sel <= '0'; 
        RF_B_sel <= '0';
        ImmExt <= "00";
        ALU_Bin_sel <= '0';
        ALU_func <= "0101";
        MEM_WrEn <= '0';
        ByteOp <= '0';
        Instr <= "11000000000000010000000000000001";
		  
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;

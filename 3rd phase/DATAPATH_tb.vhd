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
			signal Clk: std_logic;
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


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY CONTROL_MC_tb IS
END CONTROL_MC_tb;
 
ARCHITECTURE behavior OF CONTROL_MC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CONTROL_MC
    PORT(
         Inst_in : IN  std_logic_vector(31 downto 0);
         ALU_zero : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         PC_Sel_con : OUT  std_logic;
         PC_LdEn_con : OUT  std_logic;
         RF_WrData_sel_con : OUT  std_logic;
         RF_B_sel_con : OUT  std_logic;
         RF_WrEn_con : OUT  std_logic;
         ImmExt_con : OUT  std_logic_vector(1 downto 0);
         ALU_Bin_sel_con : OUT  std_logic;
         ALU_func_con : OUT  std_logic_vector(3 downto 0);
         ByteOp_con : OUT  std_logic;
         MEM_WrEn_con : OUT  std_logic;
         instr_reg_we_con : OUT  std_logic;
         immed_reg_we_con : OUT  std_logic;
         A_reg_we_con : OUT  std_logic;
         B_reg_we_con : OUT  std_logic;
         ALU_reg_we_con : OUT  std_logic;
         MEM_data_reg_we_con : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Inst_in : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_zero : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal PC_Sel_con : std_logic;
   signal PC_LdEn_con : std_logic;
   signal RF_WrData_sel_con : std_logic;
   signal RF_B_sel_con : std_logic;
   signal RF_WrEn_con : std_logic;
   signal ImmExt_con : std_logic_vector(1 downto 0);
   signal ALU_Bin_sel_con : std_logic;
   signal ALU_func_con : std_logic_vector(3 downto 0);
   signal ByteOp_con : std_logic;
   signal MEM_WrEn_con : std_logic;
   signal instr_reg_we_con : std_logic;
   signal immed_reg_we_con : std_logic;
   signal A_reg_we_con : std_logic;
   signal B_reg_we_con : std_logic;
   signal ALU_reg_we_con : std_logic;
   signal MEM_data_reg_we_con : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROL_MC PORT MAP (
          Inst_in => Inst_in,
          ALU_zero => ALU_zero,
          Reset => Reset,
          Clk => Clk,
          PC_Sel_con => PC_Sel_con,
          PC_LdEn_con => PC_LdEn_con,
          RF_WrData_sel_con => RF_WrData_sel_con,
          RF_B_sel_con => RF_B_sel_con,
          RF_WrEn_con => RF_WrEn_con,
          ImmExt_con => ImmExt_con,
          ALU_Bin_sel_con => ALU_Bin_sel_con,
          ALU_func_con => ALU_func_con,
          ByteOp_con => ByteOp_con,
          MEM_WrEn_con => MEM_WrEn_con,
          instr_reg_we_con => instr_reg_we_con,
          immed_reg_we_con => immed_reg_we_con,
          A_reg_we_con => A_reg_we_con,
          B_reg_we_con => B_reg_we_con,
          ALU_reg_we_con => ALU_reg_we_con,
          MEM_data_reg_we_con => MEM_data_reg_we_con
        );

   -- Clock process definitions
	Clk <= not Clk after 20 ns;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Reset <= '1';
		wait for 30 ns; -- wait until global set/reset completes
		Reset <= '0';
		
		-- add
		Inst_in <= b"100000_00000000000000000000_110000";
		wait for 150 ns;
		
		-- sub
		Inst_in <= b"100000_00000000000000000000_110001";
		wait for 160 ns;

		-- lb
		Inst_in <= b"000011_00000000000000000000_000000";
		wait for 200 ns;
		
		-- sb
		Inst_in <= b"000111_00000000000000000000_000000";
		wait for 160 ns;
		
		-- lw
		Inst_in <= b"001111_00000000000000000000_000000";
		wait for 200 ns;
		
		-- sw
		Inst_in <= b"011111_00000000000000000000_000000";
		wait for 160 ns;		
	
		-- b
		Inst_in <= b"111111_00000000000000000000_000000";
		wait for 120 ns;
		
		-- beq and RF[rs] == RF [rd]
		ALU_zero <= '1';
		Inst_in <= b"000000_00000000000000000000_000000";
		wait for 120 ns;
		
		-- beq and RF[rs] != RF [rd]
		ALU_zero <= '0';
		Inst_in <= b"000000_00000000000000000000_000000";
		wait for 120 ns;
		
		-- bne and RF[rs] != RF [rd]
		ALU_zero <= '0';
		Inst_in <= b"000001_00000000000000000000_000000";
		wait for 160 ns;
		
		-- bne and RF[rs] == RF [rd]
		ALU_zero <= '1';
		Inst_in <= b"000001_00000000000000000000_000000";
		wait for 160 ns;

		wait;
   end process;

END;

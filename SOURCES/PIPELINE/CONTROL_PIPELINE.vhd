----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     21/05/2021 
-- Module Name:     CONTROL_PIPELINE - control_unit 
-- Project Name:    HPY302_LAB
-- Description: The control unit controls almost all signals entering DATAPATH
-- depending on the instruction it receives from the RAM.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CONTROL_PIPELINE is
	port(
	Instr: in std_logic_vector(31 downto 0);
	Reset: in std_logic;
	Clk: in std_logic;
	
	PC_LdEn: out std_logic;
	A_sel: out std_logic_vector(1 downto 0);
	B_sel: out std_logic_vector(1 downto 0);
	WB_control: out std_logic_vector(1 downto 0);
	MEM_control: out std_logic_vector(3 downto 0);
	EX_control: out std_logic_vector(4 downto 0);
	RF_B_sel: out std_logic;
	ImmExt: out std_logic_vector(1 downto 0);
	MEM_DataIn_sel: out std_logic;
	IF_DEC_WE: out std_logic;
	DEC_EX_WE: out std_logic
	);
end CONTROL_PIPELINE;

architecture control of CONTROL_PIPELINE is
	
	component regist is
    port(
		 
		 --Inputs
		 CLK: in std_logic;    
		 RST: in std_logic;
		 Datain: in std_logic_vector(31 downto 0);
		 WE: in std_logic;	--write enable
		 
		 --Outputs
		 Dataout: out std_logic_vector(31 downto 0)
		 );
		 
	end component;
		
	
	signal opcode: std_logic_vector(5 downto 0);
	signal rs: std_logic_vector(4 downto 0);
	signal rd: std_logic_vector(4 downto 0);
	signal rt: std_logic_vector(4 downto 0);
	signal func: std_logic_vector(5 downto 0);
	signal immed: std_logic_vector(15 downto 0);
	signal instr_0: std_logic_vector(31 downto 0);
	signal instr_1: std_logic_vector(31 downto 0);
	signal instr_2: std_logic_vector(31 downto 0);
	signal instr_3: std_logic_vector(31 downto 0);
	signal instr_4: std_logic_vector(31 downto 0);
	signal instr_1_reg_we: std_logic;
	signal instr_2_reg_we: std_logic;
	
begin
	
	instr_1_reg: regist port map(
		CLK => Clk,
		RST => '0',
		Datain => instr_0,
		WE => instr_1_reg_we,

		Dataout => instr_1
	);
	
	instr_2_reg: regist port map(
		CLK => Clk,
		RST => '0',
		Datain => instr_1,
		WE => instr_2_reg_we,

		Dataout => instr_2
	);
	
	instr_3_reg: regist port map(
		CLK => Clk,
		RST => '0',
		Datain => instr_2,
		WE => '1',

		Dataout => instr_3
	);
	
	instr_4_reg: regist port map(
		CLK => Clk,
		RST => '0',
		Datain => instr_3,
		WE => '1',

		Dataout => instr_4
	);
	
	opcode <= Instr(31 downto 26);
	rs <= Instr(25 downto 21);
	rd <= Instr(20 downto 16);
	rt <= Instr(15 downto 11);
	func <= Instr(5 downto 0);
	immed <= Instr(15 downto 0);
	
	
	instr_0 <= x"b8000000" 
		when(instr_1(31 downto 26) = "111111" or
			instr_1(31 downto 26) = "000000" or
			instr_1(31 downto 26) = "000001") or
			(instr_2(31 downto 26) = "111111" or
			instr_2(31 downto 26) = "000000" or
			instr_2(31 downto 26) = "000001") or
			Instr = x"0000_0000"
			else Instr;
	
	
	EX_control(4) <= '0';
					
	A_sel <= "--" when Reset = '1' else
				"01" when (instr_1(25 downto 21) = instr_2(20 downto 16)) and instr_1(25 downto 21) /= "00000" else
				"10" when (instr_1(25 downto 21) = instr_3(20 downto 16)) and instr_1(25 downto 21) /= "00000"  
				else "00";
	
	B_sel <= "--" when Reset = '1' else
				"01" when instr_1(15 downto 11) = instr_2(20 downto 16) and instr_1(15 downto 11) /= "00000" else
				"10" when instr_1(15 downto 11) = instr_3(20 downto 16) and instr_1(15 downto 11) /= "00000" else
				"00" when instr_2(31 downto 26) = "100000" or 
				instr_2(31 downto 26) = "000000" or instr_2(31 downto 26) = "000001"
				or instr_2 = x"0000_0000"
				else "11"; 
				
	MEM_DataIn_sel <= '1' when instr_2(20 downto 16) = instr_3(20 downto 16) and 
						(instr_2(31 downto 26) = "000111" or instr_2(31 downto 26) = "011111")
						else '0';
	
	PC_LdEn <= '0' when (instr_1(31 downto 26) = "111111" or
								instr_1(31 downto 26) = "000000" or
								instr_1(31 downto 26) = "000001") or
								(instr_2(31 downto 26) = "111111" or
								instr_2(31 downto 26) = "000000" or
								instr_2(31 downto 26) = "000001") or 
								((
								(Instr(25 downto 21) = instr_1(20 downto 16) and instr_1(31 downto 26) = "000011") or
								(Instr(15 downto 11) = instr_1(20 downto 16) and instr_1(31 downto 26) = "000011") or
								(Instr(25 downto 21) = instr_2(20 downto 16) and instr_2(31 downto 26) = "000011") or
								(Instr(15 downto 11) = instr_2(20 downto 16) and instr_2(31 downto 26) = "000011")) and 
								(instr_3(31 downto 26) /= "000011")) or
								Reset = '1' 
					else '1';
	
	--RF_WrData_sel is '0' when the instruction is ALU related
	--and '1' when it is memory related
	WB_control(0) <= '0' 
		when( (opcode = "100000") or (opcode(5 downto 4) = "11"))
			else '1';
			
	--RF_B_sel is '1' only when there is need to read the register RF[rd]
	--So only for the instructions: 'beq', 'bne', 'sb' and 'sw'
	RF_B_sel <= '1' 
		when(opcode = "000000") or
			(opcode = "000001") or
			(opcode = "000111") or
			(opcode = "011111")
			else '0';	
					
	--RF_WrEn is '0' only when there is no need to write in register RF[rd]
	--So only for the instructions: 'b', 'beq', 'bne', 'sb' and 'sw'
	WB_control(1) <= '0' 
		when(opcode = "111111") or
			(opcode = "000000") or
			(opcode = "000001") or
			(opcode = "000111") or
			(opcode = "011111")
			else '1';	
	
	--ImmExt is assigned its value depending on the type of immediate extension that each instruction needs
	--The types of immediate extension are the following four:
				 --Zero fill
	ImmExt <= "00" when ((opcode = "110010") or (opcode = "110011")) else	
				     --Sign extend
				     "10" when ((opcode="111000") or (opcode="110000") or
					    			 (opcode="000011") or (opcode="000111") or
						   		 (opcode="001111") or (opcode="011111")) else
				     --Zero fill and 16 bits shift left logical
				     "01" when  (opcode="111001") else
				     --Sign extend and 2 bits shift left logical
				     "11" when ((opcode="111111") or (opcode="000000") or
						     		 (opcode="000001"))
						else "--";	
	
	--The ALU_func_con sets the function to be performed in the EXSTAGE by the ALU
	EX_control(3 downto 0) <= func(3 downto 0) when (opcode="100000") else
						 --Immediate ALU operations
						 "0000" when ((opcode="111000") or (opcode="110000") or
						 (opcode="111001") or (opcode="110000") or
						 ((opcode(5)='0') and (opcode(1 downto 0)="11"))) else
						 "0001" when (opcode="000000") or (opcode="000001") else
						 "0101" when (opcode="110010") else
						 "0011" when (opcode="110011");
						 
	--ByteOp is '1' only when storing/loading bytes
	--So only for the instructions 'lb' and 'sb'
	MEM_control(3) <= '1' when ((opcode="000011") or (opcode="000111")) 
					  else '0';	
					  				  					  
	MEM_control(2) <= '1' when ((opcode="000111") or (opcode="011111")) 
					    else '0';
	
	MEM_control(1 downto 0) <= "11" when (opcode="111111") else
				"01" when (opcode="000000") else
				"10" when (opcode="000001")
				else "00";

	IF_DEC_WE <=  '1' when instr_4(31 downto 26) = "000011" else
					'0' when (Instr(25 downto 21) = instr_1(20 downto 16) and instr_1(31 downto 26) = "000011") or
					(Instr(15 downto 11) = instr_1(20 downto 16) and instr_1(31 downto 26) = "000011") or
					(Instr(25 downto 21) = instr_2(20 downto 16) and instr_2(31 downto 26) = "000011") or
					(Instr(15 downto 11) = instr_2(20 downto 16) and instr_2(31 downto 26) = "000011") 
					else '1';
	
	DEC_EX_WE <= '1' when instr_4(31 downto 26) = "000011" else
					'0' when (Instr(25 downto 21) = instr_1(20 downto 16) and instr_1(31 downto 26) = "000011") or
					(Instr(15 downto 11) = instr_1(20 downto 16) and instr_1(31 downto 26) = "000011") or
					(Instr(25 downto 21) = instr_2(20 downto 16) and instr_2(31 downto 26) = "000011") or
					(Instr(15 downto 11) = instr_2(20 downto 16) and instr_2(31 downto 26) = "000011") 
					else '1';

	instr_1_reg_we <= '0' when ((Instr(25 downto 21) = instr_1(20 downto 16) and instr_1(31 downto 26) = "000011") or
					(Instr(15 downto 11) = instr_1(20 downto 16) and instr_1(31 downto 26) = "000011") or
					(Instr(25 downto 21) = instr_2(20 downto 16) and instr_2(31 downto 26) = "000011") or
					(Instr(15 downto 11) = instr_2(20 downto 16) and instr_2(31 downto 26) = "000011")) and 
					(instr_3(31 downto 26) /= "000011")
					else '1';
					
	instr_2_reg_we <= '1';
end control;
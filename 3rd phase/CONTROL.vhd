----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     1/4/2021 
-- Module Name:     CONTROL - control_unit 
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

entity CONTROL is
	port(
		Inst_in: in std_logic_vector(31 downto 0);
		RF_A_in: in std_logic_vector(31 downto 0);
		RF_B_in: in std_logic_vector(31 downto 0);
		
		PC_Sel_con: out std_logic;
		PC_LdEn_con: out std_logic;
		RF_WrData_sel_con: out std_logic;
		RF_B_sel_con: out std_logic;
		RF_WrEn_con: out std_logic;
		ImmExt_con: out std_logic_vector(1 downto 0);
		ALU_Bin_sel_con: out std_logic;
		ALU_func_con: out std_logic_vector(3 downto 0);
		ByteOp_con: out std_logic;
		MEM_WrEn_con: out std_logic
		
	);
end CONTROL;

architecture control_unit of CONTROL is
	
begin
	
	--PC_sel is '1' only for instructions 'b' , 'beq'(when RF(rs)==RF(rd)) and 'bne' (when RF(rs)!=RF(rd))
	PC_sel_con <= '1' 
		when( (Inst_in(31 downto 26) = "111111") or 
			((Inst_in(31 downto 26) = "000000") and (RF_A_in = RF_B_in)) or 
			((Inst_in(31 downto 26) = "000001") and (RF_A_in /= RF_B_in)))
			else '0';
	
	--PC_LdEn is always enabled
	PC_LdEn_con <= '1';
	
	--RF_WrData_sel is '0' when the instruction is ALU related
	--and '1' when it is memory related
	RF_WrData_sel_con <= '0' 
		when( (Inst_in(31 downto 31) = '1') and (Inst_in(29 downto 29) = '0'))
			else '1';
	
	--RF_B_sel is '1' only when there is need to read the register RF[rd]
	--So only for the instructions: 'beq', 'bne', 'sb' and 'sw'
	RF_B_sel_con <= '1' 
		when(Inst_in(31 downto 26) = "000000") or
			(Inst_in(31 downto 26) = "000001") or
			(Inst_in(31 downto 26) = "000111") or
			(Inst_in(31 downto 26) = "011111")
			else '0';
	
	--RF_WrEn is '0' only when there is no need to write in register RF[rd]
	--So only for the instructions: 'b', 'beq', 'bne', 'sb' and 'sw'
	RF_WrEn_con <= '0' 
		when(Inst_in(31 downto 26) = "111111") or
			(Inst_in(31 downto 26) = "000000") or
			(Inst_in(31 downto 26) = "000001") or
			(Inst_in(31 downto 26) = "000111") or
			(Inst_in(31 downto 26) = "011111")
			else '1';
	
	
	--ImmExt is assigned its value depending on the type of immediate extension that each instruction needs
	--The types of immediate extension are the following four:
				 --Zero fill
	ImmExt_con <= "00" when ((Inst_in(31 downto 26)="110010") or (Inst_in(31 downto 26)="110011")) else	
				     --Sign extend
				     "10" when ((Inst_in(31 downto 26)="111000") or (Inst_in(31 downto 26)="110000") or
					    			 (Inst_in(31 downto 26)="000011") or (Inst_in(31 downto 26)="000111") or
						   		 (Inst_in(31 downto 26)="001111") or (Inst_in(31 downto 26)="011111")) else
				     --Zero fill and 16 bits shift left logical
				     "01" when  (Inst_in(31 downto 26)="111001") else
				     --Sign extend and 2 bits shift left logical
				     "11" when ((Inst_in(31 downto 26)="111111") or (Inst_in(31 downto 26)="000000") or
						     		 (Inst_in(31 downto 26)="000001"));
	
	--ALU_Bin_sel is '0' when ALU is used without immediate
	ALU_Bin_sel_con <= '0' when (Inst_in(31 downto 26)="100000")
							else '1';
	
	--The ALU_func_con sets the function to be performed in the EXSTAGE by the ALU
	ALU_func_con <= Inst_in(3 downto 0) when (Inst_in(31 downto 26)="100000") else
						 --Immediate ALU operations
						 "0000" when ((Inst_in(31 downto 26)="111000") 
						 or (Inst_in(31 downto 26)="111001") or (Inst_in(31 downto 26)="110000")) else
						 "0101" when (Inst_in(31 downto 26)="110010") else
						 "0011" when (Inst_in(31 downto 26)="110011");
	
	--ByteOp is '1' only when storing/loading bytes
	--So only for the instructions 'lb' and 'sb'
	ByteOp_con <= '1' when ((Inst_in(31 downto 26)="000011") or (Inst_in(31 downto 26)="000111")) 
					  else '0';
					  
	--ByteOp is '1' only when storing data
	--So only for the instructions 'sb' and 'sw'					  					  
	MEM_WrEn_con <= '1' when ((Inst_in(31 downto 26)="000111") or (Inst_in(31 downto 26)="011111")) 
					    else '0';						
						 
end control_unit;


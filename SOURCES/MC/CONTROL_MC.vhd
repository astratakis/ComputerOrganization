----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     9/5/2021 
-- Module Name:     CONTROL_MC - control_unit 
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
use IEEE.NUMERIC_STD.ALL;
entity CONTROL_MC is
	port(
		Inst_in: in std_logic_vector(31 downto 0);
		ALU_zero: in std_logic;
		Reset: in std_logic;
		Clk: in std_logic;
		
		PC_Sel_con: out std_logic;
		PC_LdEn_con: out std_logic;
		RF_WrData_sel_con: out std_logic;
		RF_B_sel_con: out std_logic;
		RF_WrEn_con: out std_logic;
		ImmExt_con: out std_logic_vector(1 downto 0);
		ALU_Bin_sel_con: out std_logic;
		ALU_func_con: out std_logic_vector(3 downto 0);
		ByteOp_con: out std_logic;
		MEM_WrEn_con: out std_logic;
		instr_reg_we_con: out std_logic;	
		immed_reg_we_con: out std_logic;		
		A_reg_we_con: out std_logic;	
		B_reg_we_con: out std_logic;	
		ALU_reg_we_con: out std_logic;
		MEM_data_reg_we_con: out std_logic	
	);
end CONTROL_MC;

architecture control_unit of CONTROL_MC is

   type t_State is (
	if_state,
	dec_state_read,
	dec_state_write,
	ex_state,
	mem_state_load,
	mem_state_store
	);
	
	signal State : t_State;
	signal sig_inst: std_logic_vector(31 downto 0);
	
begin

	process(Clk) is
	begin		
			--RF_WrData_sel is '0' when the instruction is ALU related
			--and '1' when it is memory related
			if ( (sig_inst(31 downto 26) = "100000") or (sig_inst(31 downto 30) = "11")) then
				RF_WrData_sel_con <= '0';
			else 
				RF_WrData_sel_con <= '1';
			end if;
			
			--RF_B_sel is '1' only when there is need to read the register RF[rd]
			--So only for the instructions: 'beq', 'bne', 'sb' and 'sw' 
			if(sig_inst(31 downto 26) = "000000") or
					(sig_inst(31 downto 26) = "000001") or
					(sig_inst(31 downto 26) = "000111") or
					(sig_inst(31 downto 26) = "011111") then
				RF_B_sel_con <= '1';
			else 
				RF_B_sel_con <= '0';
			end if;
			
			--ImmExt is assigned its value depending on the type of immediate extension that each instruction needs
			--The types of immediate extension are the following four:

			if ((sig_inst(31 downto 26)="110010") or (sig_inst(31 downto 26)="110011")) then
				ImmExt_con <= "00";
			elsif ((sig_inst(31 downto 26)="111000") or (sig_inst(31 downto 26)="110000") or
						(sig_inst(31 downto 26)="000011") or (sig_inst(31 downto 26)="000111") or
						(sig_inst(31 downto 26)="001111") or (sig_inst(31 downto 26)="011111")) then
				ImmExt_con <= "10";
			elsif (sig_inst(31 downto 26)="111001") then
				ImmExt_con <= "01";
			elsif ((sig_inst(31 downto 26)="111111") or (sig_inst(31 downto 26)="000000") or
						(sig_inst(31 downto 26)="000001")) then
				ImmExt_con <= "11";
			end if;


			
			--ALU_Bin_sel is '0' when ALU is used without immediate
			if (sig_inst(31 downto 26)="100000") or (sig_inst(31 downto 26)="000000") or 
					(sig_inst(31 downto 26)="000001") then
				ALU_Bin_sel_con <= '0';
			else
				ALU_Bin_sel_con <= '1';
			end if;
			
			--The ALU_func_con sets the function to be performed in the EXSTAGE by the ALU
			if (sig_inst(31 downto 26)="100000") then
				ALU_func_con <= sig_inst(3 downto 0);
			elsif ((sig_inst(31 downto 26)="111000") or (sig_inst(31 downto 26)="110000") or
								 (sig_inst(31 downto 26)="111001") or (sig_inst(31 downto 26)="110000") or
								 ((sig_inst(31)='0') and (sig_inst(27 downto 26)="11"))) then
				ALU_func_con <= "0000";
			elsif (sig_inst(31 downto 26)="000000") or (sig_inst(31 downto 26)="000001") then
				ALU_func_con <= "0001";
			elsif (sig_inst(31 downto 26)="110010") then
				ALU_func_con <= "0101";
			elsif (sig_inst(31 downto 26)="110011") then
				ALU_func_con <= "0011";
			end if;
			
			--ByteOp is '1' only when storing/loading bytes
			--So only for the instructions 'lb' and 'sb'
			if ((sig_inst(31 downto 26)="000011") or (sig_inst(31 downto 26)="000111")) then 
				ByteOp_con <= '1';
			else
				ByteOp_con <= '0';
			end if;
			
		if rising_edge(Clk) then 
			if Reset = '1' then
				State <= if_state;
				PC_Sel_con <= '0';
				PC_LdEn_con <= '1';
				instr_reg_we_con <= '1';			
				sig_inst <= "--------------------------------";
		else
			
			case State is
				
				when if_state =>
				
					sig_inst <= Inst_in;
					
					PC_LdEn_con <= '0';
					RF_WrEn_con <= '0';
					MEM_WrEn_con <= '0';
					instr_reg_we_con <= '0';
					immed_reg_we_con <= '1';
					A_reg_we_con <= '1';
					B_reg_we_con <= '1';
					ALU_reg_we_con <= '0';
					MEM_data_reg_we_con <= '0';
					
					PC_sel_con <= '0';
										
					State <= dec_state_read;
				
				when dec_state_read =>
					
					PC_LdEn_con <= '0';
					RF_WrEn_con <= '0';
					MEM_WrEn_con <= '0';
					instr_reg_we_con <= '0';
					immed_reg_we_con <= '0';
					A_reg_we_con <= '0';
					B_reg_we_con <= '0';
					ALU_reg_we_con <= '1';
					MEM_data_reg_we_con <= '0';
					
					State <= ex_state;
				
				when ex_state => 
					
					if (sig_inst(31 downto 26) = "111111") or 
					(sig_inst(31 downto 26) = "000000") or 
					(sig_inst(31 downto 26) = "000001") then
						PC_LdEn_con <= '1';
						RF_WrEn_con <= '0';
						MEM_WrEn_con <= '0';
						instr_reg_we_con <= '1';
						immed_reg_we_con <= '0';
						A_reg_we_con <= '0';
						B_reg_we_con <= '0';
						ALU_reg_we_con <= '0';
						MEM_data_reg_we_con <= '0';
						
						if (sig_inst(31 downto 26) = "111111") or 
								((sig_inst(31 downto 26) = "000000") and ALU_zero = '1') or 
								((sig_inst(31 downto 26) = "000001") and ALU_zero = '0') then
							PC_sel_con <= '1';
						else
							PC_sel_con <= '0';
						end if;
						
						State <= if_state;
						
					elsif (sig_inst(31 downto 31) = "1" and sig_inst(28 downto 28) = "0") then
						PC_LdEn_con <= '0';
						RF_WrEn_con <= '1';
						MEM_WrEn_con <= '0';
						instr_reg_we_con <= '0';
						immed_reg_we_con <= '1';
						A_reg_we_con <= '0';
						B_reg_we_con <= '0';
						ALU_reg_we_con <= '0';
						MEM_data_reg_we_con <= '0';
						
						State <= dec_state_write;
						
					elsif (sig_inst(31 downto 26) = "000011" or sig_inst(31 downto 26) = "001111") then
						PC_LdEn_con <= '0';
						RF_WrEn_con <= '0';
						MEM_WrEn_con <= '0';
						instr_reg_we_con <= '0';
						immed_reg_we_con <= '0';
						A_reg_we_con <= '0';
						B_reg_we_con <= '0';
						ALU_reg_we_con <= '0';
						MEM_data_reg_we_con <= '1';
						
						State <= mem_state_load;
						
					else
						PC_LdEn_con <= '0';
						RF_WrEn_con <= '0';
						MEM_WrEn_con <= '1';
						instr_reg_we_con <= '0';
						immed_reg_we_con <= '0';
						A_reg_we_con <= '0';
						B_reg_we_con <= '0';
						ALU_reg_we_con <= '0';
						MEM_data_reg_we_con <= '0';
						
						State <= mem_state_store;
						
					end if;
					
				when mem_state_store =>
			
					PC_LdEn_con <= '1';
					RF_WrEn_con <= '0';
					MEM_WrEn_con <= '0';
					instr_reg_we_con <= '1';
					immed_reg_we_con <= '0';
					A_reg_we_con <= '0';
					B_reg_we_con <= '0';
					ALU_reg_we_con <= '0';
					MEM_data_reg_we_con <= '0';
						
					State <= if_state;
					
				when mem_state_load =>

					PC_LdEn_con <= '0';
					RF_WrEn_con <= '1';
					MEM_WrEn_con <= '0';
					instr_reg_we_con <= '0';
					immed_reg_we_con <= '1';
					A_reg_we_con <= '0';
					B_reg_we_con <= '0';
					ALU_reg_we_con <= '0';
					MEM_data_reg_we_con <= '0';
					
					State <= dec_state_write;
					
				when dec_state_write =>

					PC_LdEn_con <= '1';
					RF_WrEn_con <= '0';
					MEM_WrEn_con <= '0';
					instr_reg_we_con <= '1';
					immed_reg_we_con <= '0';
					A_reg_we_con <= '0';
					B_reg_we_con <= '0';
					ALU_reg_we_con <= '0';
					MEM_data_reg_we_con <= '0';
					
					State <= if_state;
			
			end case;
		end if;
		end if;
	end process;
	
					

end control_unit;


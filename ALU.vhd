----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     16/03/2021 
-- Module Name:    ALU - Behavioral 
-- Project Name:    HPY302_LAB
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity ALU is
    port(

    --Inputs
    A: in std_logic_vector(31 downto 0);    --first operand
    B: in std_logic_vector(31 downto 0);    --second operand
    Op: in std_logic_vector(3 downto 0);    --operator
	 Clock: in std_logic; 
	 
    --Outputs
    Output: out std_logic_vector(31 downto 0); --output result
    Zero: out std_logic;                    --if output = 0
    Cout: out std_logic;                    --if there is carry out
    Ovf: out std_logic);                     --if there is overflow
    
end ALU;

architecture Behavioral of ALU is

    --Temporary signals for output
    signal tOutput: std_logic_vector(31 downto 0);
    signal tOvf: std_logic;
	 signal tmp: std_logic_vector(32 downto 0);
begin

    process
	 
    begin
			wait until clock' event and clock = '1';
			
        if Op = "0000" then
            tOutput <= A + B;   --addition
            tmp <= std_logic_vector(unsigned('0' & A) + unsigned('0' & B));

            if (A(31)=B(31) and tmp(31)/=A(31)) then
                tOvf <= '1' after 10ns;
            else
                tOvf <= '0' after 10ns;
            end if;
				
        elsif Op = "0001" then
            tOutput <= A - B;   --subtraction
            tmp <= std_logic_vector(unsigned('0' & A) - unsigned('0' & B));
				
            if (A(31)/=B(31) and tmp(31)=B(31)) then
                tOvf <= '1' after 10ns;
            else
                tOvf <= '0' after 10ns;
            end if;

        elsif Op = "0010" then
            tOutput <= A and B;   --logic AND
        elsif Op = "0011" then
            tOutput <= A or B;   --logic OR
        elsif Op = "0100" then
            tOutput <= not A;     --inversion (NOT)
        elsif Op = "0110" then
            tOutput <= A nand B;  --logic NAND
        elsif Op = "1000" then
            tOutput <= A(31) & A(31 downto 1);  --arithmetic shift right
        elsif Op = "1001" then
            tOutput <= std_logic_vector(unsigned(A) srl 1);    --logic shift right
        elsif Op = "1010" then
            tOutput <= std_logic_vector(unsigned(A) sll 1);    --logic shift left
        elsif Op = "1100" then
            tOutput <= std_logic_vector(unsigned(A) rol 1);    --circular shift left
        elsif Op = "1101" then
            tOutput <= std_logic_vector(unsigned(A) ror 1);	 --circular shift right
        end if;
	end process;
	
	Output <= tOutput after 10ns;
	Zero <= '1' after 10ns when tOutput = x"00000000" else '0' after 10ns;
	Cout <= tmp(32) after 10ns;
	Ovf <= tOvf after 10ns;
	--Ovf <= '1' after 10ns when tOverflow = '1' and tOutput = else '0' after 10ns;
end Behavioral;


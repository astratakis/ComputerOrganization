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
	 --Out33: out std_logic_vector(32 downto 0);
    Zero: out std_logic;                    --if output = 0
    Cout: out std_logic;                    --if there is carry out
    Ovf: out std_logic	                    --if there is overflow
	 );
    
end ALU;

architecture Behavioral of ALU is

    --Temporary signals for output
    signal tOutput: std_logic_vector(31 downto 0); --signal for the output
    signal tOvf: std_logic;                         --signal to store Ovf variable
	 signal tmp33: std_logic_vector(32 downto 0);   --signal for the output in 33 bits to calculate Cout
begin

    process
		variable OvfCheck: std_logic_vector(31 downto 0) := x"00000000";    --variable used to check if there is an Ovf
    begin
			wait until clock' event and clock = '1';
			
        if Op = "0000" then
            tOutput <= A + B;   --addition
				OvfCheck := std_logic_vector(unsigned(a) + unsigned(b));
            tmp33 <= std_logic_vector(unsigned('0' & A) + unsigned('0' & B));
				
            if (A(31)=B(31) and OvfCheck(31)/=A(31)) then   --if A and B have the same sign and the result has the opposite
                tOvf <= '1';
            else
                tOvf <= '0';
            end if;
				
        elsif Op = "0001" then
            tOutput <= A - B;   --subtraction
				OvfCheck := std_logic_vector(unsigned(a) - unsigned(b));
            tmp33 <= std_logic_vector(unsigned('0' & A) - unsigned('0' & B));
				
            if (A(31)/=B(31) and OvfCheck(31)=B(31)) then   --if A and B have opposite signs and the result has the same as the subtrahend
                tOvf <= '1';
            else
                tOvf <= '0';
            end if;

        elsif Op = "0010" then
            tOutput <= A and B;   --logic AND
				tOvf <= '0';
				tmp33(32) <= '0';
        elsif Op = "0011" then
            tOutput <= A or B;   --logic OR
            tOvf <= '0';
				tmp33(32) <= '0';
        elsif Op = "0100" then
            tOutput <= not A;     --inversion (NOT)
            tOvf <= '0';
				tmp33(32) <= '0';
        elsif Op = "0110" then
            tOutput <= A nand B;  --logic NAND
            tOvf <= '0';
				tmp33(32) <= '0';
        elsif Op = "1000" then
            tOutput <= A(31) & A(31 downto 1);  --arithmetic shift right
            tOvf <= '0';
				tmp33(32) <= '0';
        elsif Op = "1001" then
            tOutput <= std_logic_vector(unsigned(A) srl 1);    --logic shift right
            tOvf <= '0';
				tmp33(32) <= '0';
        elsif Op = "1010" then
            tOutput <= std_logic_vector(unsigned(A) sll 1);    --logic shift left
            tOvf <= '0';
				tmp33(32) <= '0';
        elsif Op = "1100" then
            tOutput <= std_logic_vector(unsigned(A) rol 1);    --circular shift left
            tOvf <= '0';
				tmp33(32) <= '0';
        elsif Op = "1101" then
            tOutput <= std_logic_vector(unsigned(A) ror 1);	 --circular shift right
            tOvf <= '0';
				tmp33(32) <= '0';
        end if;
	end process;
	
	Output <= tOutput after 10ns;
	Zero <= '1' after 10ns when tOutput = x"00000000" else '0' after 10ns; --if the result is 0 Zero='0'
	Cout <= tmp33(32) after 10ns;   --check if there is carry out in the 33rd bit
	Ovf <= tOvf after 10ns;
	--Out33 <= tmp33 after 10ns;
	
	end Behavioral;


----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     16/03/2021 
-- Module Name:    ALU - Behavioral 
-- Project Name:    HPY302_LAB
-- Description: Implementation of the module for the Arithmetic Logic Unit as
-- described in the project description
--  
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: Implementation of the 
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
	 
    --Outputs
    Output: out std_logic_vector(31 downto 0); --output result
	 --Out33: out std_logic_vector(32 downto 0);
    Zero: out std_logic;                    --if output = 0
    Cout: out std_logic;                    --if there is carry out
    Ovf: out std_logic	                    --if there is overflow
	 );
    
end ALU;

architecture alu of ALU is

    --Temporary signals for output
    signal tOutput: std_logic_vector(31 downto 0); --signal for the output
	 signal tmp33: std_logic_vector(32 downto 0);   --signal for the output in 33 bits to calculate Cout and Ovf

begin
    
    with Op select 
	 
		  --Saving the result of addition and subtraction as a 33 bit vector
        --to calculate carry out and overflow later
		  
        tmp33 <=      std_logic_vector(unsigned('0' & A) + unsigned('0' & B)) when "0000",
                        std_logic_vector(unsigned('0' & A) - unsigned('0' & B)) when "0001",
                        "000000000000000000000000000000000" when others;
								
    --Calculating the output                    
    with Op select
        tOutput <=  		std_logic_vector(unsigned(A) + unsigned(B)) when "0000",	--addition
                        std_logic_vector(unsigned(A) - unsigned(B)) when "0001",	--subtraction	
                        A and B when "0010",							--and
                        A or B when "0011",							--or
                        not A when "0100",							--not
                        A nand B when "0101",						--nand
								A nor B when "0110",							--nor
                        A(31) & A(31 downto 1) when "1000",		--right shift arithmetic 
                        '0' & A(31 downto 1) when "1001",		--right shift logical
                        A(30 downto 0) & '0' when "1010",		--left shift logical
                        A(30 downto 0) & A(31) when "1100",		--rotate left
                        A(0) & A(31 downto 1) when "1101";		--rotate right
                        
                        
    
    Output <= tOutput after 10ns; --Output
	 --Calculating the overflow value using the carry out and the signs of A and B
	 Ovf <= '1' after 10ns when (Op = x"0" and A(31) = B(31) and tmp33(31) /= A(31)) or (Op = x"1" and A(31) /= B(31) and tmp33(31) /= A(31)) else '0' after 10ns; 
    Zero <= '1' after 10ns when tOutput = x"00000000" else '0' after 10ns; --Zero
    Cout <= tmp33(32) after 10ns;	--Carry out
	end alu;


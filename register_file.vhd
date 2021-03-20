----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:29:42 03/19/2021 
-- Design Name: 
-- Module Name:    register_file - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

entity register_file is

	port(
		CLK: in std_logic;
		WrEn: in std_logic;
		Awr: in std_logic_vector(4 downto 0);
		Ard1: in std_logic_vector(4 downto 0);
		Ard2: in std_logic_vector(4 downto 0);
		Din: in std_logic_vector(31 downto 0);
		
		Dout1: out std_logic_vector(31 downto 0);
		Dout2: out std_logic_vector(31 downto 0)
		);
		
end register_file;

architecture Behavioral of register_file is

component decoder_5to32 is 

	port(
		Awr: in std_logic_vector(4 downto 0);
		
		Aout: out std_logic_vector(31 downto 0)
		);

end component;

component regist is

	port(
		CLK: in std_logic;
		RST: in std_logic;
		Datain: in std_logic_vector(31 downto 0);
		WE: in std_logic;
		
		Dataout: out std_logic_vector(31 downto 0)
		);

end component;

component mux_32to1 is

	port(
		--Inputs
		Ard: in std_logic_vector(4 downto 0);		--selects which bit will be in the output
		Datain0: in std_logic_vector(31 downto 0);
		Datain1: in std_logic_vector(31 downto 0);
		Datain2: in std_logic_vector(31 downto 0);
		Datain3: in std_logic_vector(31 downto 0);
		Datain4: in std_logic_vector(31 downto 0);
		Datain5: in std_logic_vector(31 downto 0);
		Datain6: in std_logic_vector(31 downto 0);
		Datain7: in std_logic_vector(31 downto 0);
		Datain8: in std_logic_vector(31 downto 0);
		Datain9: in std_logic_vector(31 downto 0);
		Datain10: in std_logic_vector(31 downto 0);
		Datain11: in std_logic_vector(31 downto 0);
		Datain12: in std_logic_vector(31 downto 0);
		Datain13: in std_logic_vector(31 downto 0);
		Datain14: in std_logic_vector(31 downto 0);
		Datain15: in std_logic_vector(31 downto 0);
		Datain16: in std_logic_vector(31 downto 0);
		Datain17: in std_logic_vector(31 downto 0);
		Datain18: in std_logic_vector(31 downto 0);
		Datain19: in std_logic_vector(31 downto 0);
		Datain20: in std_logic_vector(31 downto 0);
		Datain21: in std_logic_vector(31 downto 0);
		Datain22: in std_logic_vector(31 downto 0);
		Datain23: in std_logic_vector(31 downto 0);
		Datain24: in std_logic_vector(31 downto 0);
		Datain25: in std_logic_vector(31 downto 0);
		Datain26: in std_logic_vector(31 downto 0);
		Datain27: in std_logic_vector(31 downto 0);
		Datain28: in std_logic_vector(31 downto 0);
		Datain29: in std_logic_vector(31 downto 0);
		Datain30: in std_logic_vector(31 downto 0);
		Datain31: in std_logic_vector(31 downto 0);
		
		--Output
		Dataout: out std_logic_vector(31 downto 0)	--the bit output
	);
	
end component;

begin

	register_generator:
		for i in 0 to 31 generate
			registers: regist port map(
				CLK,
				Din(i),
				WrEn,
				reset
			);
	end generate register_generator;


end Behavioral;


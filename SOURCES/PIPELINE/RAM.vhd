----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     26/03/2021 
-- Module Name:     RAM - ram 
-- Project Name:    HPY302_LAB
-- Description: Implementation of a 2048x32 RAM module
-- the first 1024 memory addresses are instructions initialized
-- from the file rom.data and the other 1024 are data initialized to '0'.
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
use ieee.std_logic_unsigned;
use std.textio.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

entity RAM is
	port(
		--Inputs
		clk: in std_logic;
		inst_addr: in std_logic_vector(10 downto 0);
		data_we: in std_logic;
		data_addr: in std_logic_vector(10 downto 0);
		data_din: in std_logic_vector(31 downto 0);
		
		--Outputs
		inst_dout: out std_logic_vector(31 downto 0);
		data_dout: out std_logic_vector(31 downto 0)
		);
end RAM;

architecture ram of RAM is
	
	--Using 'type' to create an array of 2048 32-bit vectors
	type ram_type is array(2047 downto 0) of std_logic_vector(31 downto 0);
	
	--Function to initialize instructions from rom.data 
	impure function InitRamFromFile (RamFileName : in string) return ram_type is
	FILE ramfile : text is in RamFileName;
	variable RamFileLine : line;
	variable ram : ram_type;
	begin
		for i in 0 to 1023 loop
			readline(ramfile, RamFileLine);
			read (RamFileLine, ram(i));
		end loop;
		for i in 1024 to 2047 loop
			ram(i) := x"00000000";
		end loop;
	return ram;
	end function;
	
	--Call the function above
	signal RAM: ram_type := InitRamFromFile("testing_pipeline.data");
	
begin
	process (clk)
	begin
	--When clock at rising edge
	if clk'event and clk = '1' then
		if data_we = '1' then	--if write enable is enabled
			RAM(to_integer(unsigned((data_addr)))) <= data_din;	--add data in RAM in the address given by data_addr 
		end if;
	end if;
	end process;
	
	data_dout <= RAM(to_integer(unsigned((data_addr)))) after 12ns;	--output added data
	inst_dout <= RAM(to_integer(unsigned((inst_addr)))) after 12ns;	--output instruction

end ram;


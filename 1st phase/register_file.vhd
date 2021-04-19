----------------------------------------------------------------------------------
-- Institution:  Technical University of Crete
-- Course:      Computer Architecture (HPY302)
-- Engineer:    Georgios Frangias
-- 
-- Create Date:     22/03/2021 
-- Module Name:     register_file - Behavioral 
-- Project Name:    HPY302_LAB
-- Description: A 32 register file that writes one register
-- and reads two registers at a time
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
		--Inputs
		CLK: in std_logic;
		WrEn: in std_logic;							--write enable
		Awr: in std_logic_vector(4 downto 0);	--write address
		Ard1: in std_logic_vector(4 downto 0);	--read address 1
		Ard2: in std_logic_vector(4 downto 0);	--read address 2
		Din: in std_logic_vector(31 downto 0);	--write input
		RST: in std_logic;							--reset 
		
		--Outputs
		Dout1: out std_logic_vector(31 downto 0);	--read output 1
		Dout2: out std_logic_vector(31 downto 0) 	--read output 2
		);
		
end register_file;

architecture register_file of register_file is


--Decoder
component decoder_5to32 is 

	port(
		Awr: in std_logic_vector(4 downto 0);
		
		Aout: out std_logic_vector(31 downto 0)
		);

end component;

--Register
component regist is

	port(
		CLK: in std_logic;
		RST: in std_logic;
		Datain: in std_logic_vector(31 downto 0);
		WE: in std_logic;
		
		Dataout: out std_logic_vector(31 downto 0)
		);

end component;

--Multiplexer
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

--Using 'type' to create an array of 32 32-bit vectors
type array32 is array (0 to 31) of std_logic_vector(31 downto 0);

signal DataoutArray : array32;	--output of all registers 
signal DecoderOut: std_logic_vector(31 downto 0);	--output of the decoder
signal WriteEnable: std_logic_vector(31 downto 0);	--write enable for every register
begin
	
	--Implementing logical 'AND' of write enable and decoder
	with WrEn select
		WriteEnable <= DecoderOut and x"0000_0000" when '0',	--if write enable is disabled don't write anything
							DecoderOut and x"ffff_fffe" when '1',	--if write enable is enabled write on the decoder output 
																				--except for register R0
							x"0000_0000" when others;
	
	--Register R0 always '0'
	register0: regist port map(
		CLK => CLK,
		Datain => x"0000_0000",
		WE => WriteEnable(0),
		RST => '1',
		Dataout => DataoutArray(0)
		);
	
	--Create 32 registers using for generate
	register_generator:
		for i in 1 to 31 generate
			registers: regist port map(
				CLK => CLK,
				Datain => Din,
				WE => WriteEnable(i),
				RST => RST,
				Dataout => DataoutArray(i)
			);
	end generate register_generator;
	
	decoder_map: decoder_5to32 port map(
		Awr => Awr,
		Aout => DecoderOut
	);
	
	mux1: mux_32to1 port map(
		Ard => Ard1,
		Datain0 => DataoutArray(0),
		Datain1 => DataoutArray(1),
		Datain2 => DataoutArray(2),
		Datain3 => DataoutArray(3),
		Datain4 => DataoutArray(4),
		Datain5 => DataoutArray(5),
		Datain6 => DataoutArray(6),
		Datain7 => DataoutArray(7),
		Datain8 => DataoutArray(8),
		Datain9 => DataoutArray(9),
		Datain10 => DataoutArray(10),
		Datain11 => DataoutArray(11),
		Datain12 => DataoutArray(12),
		Datain13 => DataoutArray(13),
		Datain14 => DataoutArray(14),
		Datain15 => DataoutArray(15),
		Datain16 => DataoutArray(16),
		Datain17 => DataoutArray(17),
		Datain18 => DataoutArray(18),
		Datain19 => DataoutArray(19),
		Datain20 => DataoutArray(20),
		Datain21 => DataoutArray(21),
		Datain22 => DataoutArray(22),
		Datain23 => DataoutArray(23),
		Datain24 => DataoutArray(24),
		Datain25 => DataoutArray(25),
		Datain26 => DataoutArray(26),
		Datain27 => DataoutArray(27),
		Datain28 => DataoutArray(28),
		Datain29 => DataoutArray(29),
		Datain30 => DataoutArray(30),
		Datain31 => DataoutArray(31),
		Dataout => Dout1
	);
	
		mux2: mux_32to1 port map(
		Ard => Ard2,
		Datain0 => DataoutArray(0),
		Datain1 => DataoutArray(1),
		Datain2 => DataoutArray(2),
		Datain3 => DataoutArray(3),
		Datain4 => DataoutArray(4),
		Datain5 => DataoutArray(5),
		Datain6 => DataoutArray(6),
		Datain7 => DataoutArray(7),
		Datain8 => DataoutArray(8),
		Datain9 => DataoutArray(9),
		Datain10 => DataoutArray(10),
		Datain11 => DataoutArray(11),
		Datain12 => DataoutArray(12),
		Datain13 => DataoutArray(13),
		Datain14 => DataoutArray(14),
		Datain15 => DataoutArray(15),
		Datain16 => DataoutArray(16),
		Datain17 => DataoutArray(17),
		Datain18 => DataoutArray(18),
		Datain19 => DataoutArray(19),
		Datain20 => DataoutArray(20),
		Datain21 => DataoutArray(21),
		Datain22 => DataoutArray(22),
		Datain23 => DataoutArray(23),
		Datain24 => DataoutArray(24),
		Datain25 => DataoutArray(25),
		Datain26 => DataoutArray(26),
		Datain27 => DataoutArray(27),
		Datain28 => DataoutArray(28),
		Datain29 => DataoutArray(29),
		Datain30 => DataoutArray(30),
		Datain31 => DataoutArray(31),
		Dataout => Dout2
	);
	
end register_file;


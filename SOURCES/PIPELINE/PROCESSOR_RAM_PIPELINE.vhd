----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:13:34 05/22/2021 
-- Design Name: 
-- Module Name:    PROCESSOR_RAM_PIPELINE - Behavioral 
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

entity PROCESSOR_RAM_PIPELINE is
	port(
		Clk: in std_logic;
		Reset: in std_logic
	);
end PROCESSOR_RAM_PIPELINE;

architecture Behavioral of PROCESSOR_RAM_PIPELINE is

	component PROCESSOR_PIPELINE is
		port(
			Clk: in std_logic;
			Reset: in std_logic;
			MM_RdData: in std_logic_vector(31 downto 0);
			Instr: in std_logic_vector(31 downto 0);
			
			Instr_addr: out std_logic_vector(31 downto 0);
			MM_WrEn: out std_logic;
			MM_Addr: out std_logic_vector(10 downto 0);
			MM_WrData: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component RAM is
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
	end component;
	
	signal sig_inst_addr: std_logic_vector(31 downto 0);
	signal sig_data_we: std_logic;
	signal sig_data_addr: std_logic_vector(10 downto 0);
	signal sig_data_din: std_logic_vector(31 downto 0);
	signal sig_inst_dout: std_logic_vector(31 downto 0);
	signal sig_data_dout: std_logic_vector(31 downto 0);
	
begin

	memory: RAM port map(
			clk => Clk,
			inst_addr => sig_inst_addr(12 downto 2),
			data_we => sig_data_we,
			data_addr => sig_data_addr,
			data_din => sig_data_din,
			
			inst_dout => sig_inst_dout,
			data_dout => sig_data_dout
		);
		
	processor: PROCESSOR_PIPELINE port map(
			Clk => Clk,
			Reset => Reset,
			MM_RdData => sig_data_dout,
			Instr => sig_inst_dout,
			
			Instr_addr => sig_inst_addr,
			MM_WrEn => sig_data_we,
			MM_Addr => sig_data_addr,
			MM_WrData => sig_data_din			
	
	);


end Behavioral;


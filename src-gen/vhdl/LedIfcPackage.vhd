-- Copyright (C) 2024 Eccelerators GmbH
-- 
-- This code was generated by:
--
-- HxS Compiler 1.0.20-9104d5ff
-- VHDL Extension for HxS 1.0.24-885b57b6
-- 
-- Further information at https://eccelerators.com/hxs
-- 
-- Changes to this file may cause incorrect behavior and will be lost if the
-- code is regenerated.
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

package LedIfcPackage is

	type T_LedIfcAxi4LiteDown is
	record
		AWVALID : std_logic;
		AWADDR : std_logic_vector(3 downto 0);
		AWPROT : std_logic_vector(2 downto 0);
		WVALID : std_logic;
		WDATA : std_logic_vector(31 downto 0);
		WSTRB : std_logic_vector(3 downto 0);
		BREADY : std_logic;
		ARVALID : std_logic;
		ARADDR : std_logic_vector(3 downto 0);
		ARPROT : std_logic_vector(2 downto 0);
		RREADY : std_logic;
	end record;
	
	type T_LedIfcAxi4LiteUp is
	record
		AWREADY : std_logic;
		WREADY : std_logic;
		BVALID : std_logic;
		BRESP : std_logic_vector(1 downto 0);
		ARREADY : std_logic;
		RVALID : std_logic;
		RDATA : std_logic_vector(31 downto 0);
		RRESP : std_logic_vector(1 downto 0);
	end record;
	
	type T_LedIfcAxi4LiteAccess is
	record
		WritePrivileged : std_logic;
		WriteSecure : std_logic;
		WriteInstruction : std_logic;
		ReadPrivileged : std_logic;
		ReadSecure : std_logic;
		ReadInstruction : std_logic;
	end record;
	
	type T_LedIfcTrace is
	record
		Axi4LiteDown : T_LedIfcAxi4LiteDown;
		Axi4LiteUp : T_LedIfcAxi4LiteUp;
		Axi4LiteAccess : T_LedIfcAxi4LiteAccess;
		UnoccupiedAck : std_logic;
		TimeoutAck : std_logic;
	end record;
	
	type T_LedIfcLedBlkDown is
	record
		OnOff : std_logic;
	end record;
	
	constant LEDBLK_BASE_ADDRESS : std_logic_vector(3 downto 0) := x"0";
	constant LEDBLK_SIZE : std_logic_vector(3 downto 0) := x"4";
	
	constant CTRREG_WIDTH : integer := 32;
	constant CTRREG_ADDRESS : std_logic_vector(3 downto 0) := std_logic_vector(x"0" + unsigned(LEDBLK_BASE_ADDRESS));
	
	constant ONOFF_POSITION : integer := 0;
	constant ONOFF_WIDTH : integer := 1;
	constant ONOFF_MASK : std_logic_vector(31 downto 0) := x"00000001";
	constant LEDOFF : std_logic := '0';
	constant LEDON : std_logic := '1';
	
end;
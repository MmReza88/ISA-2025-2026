library IEEE;
use IEEE.std_logic_1164.all; 
use ieee.numeric_std.all;

entity register_bhv is
	generic (
			bit_num: integer := 9);
	Port (	Clk		: in	std_logic;
			Reset	: in	std_logic;

			Enable	: in 	std_logic;
			D		: in	std_logic_vector(bit_num-1 downto 0);
			Q		: out	std_logic_vector(bit_num-1 downto 0));
end register_bhv;


architecture Bhv of register_bhv is -- flip flop D with syncronous reset

begin
	PSYNCH: process(Clk, Reset) --is Enable included to senstivity list?
	begin
	  if Clk'event and Clk='1' then -- positive edge triggered:
	    if Reset='0' then -- active low reset 
	      Q <= (others =>'0'); 
	    elsif Enable='1' then
			Q <= D; -- logic shoft right by 1 bit
	    end if;
	  end if;
	end process;

end Bhv;




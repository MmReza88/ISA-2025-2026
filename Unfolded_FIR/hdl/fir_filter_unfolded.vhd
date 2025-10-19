library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fir_filter_advance is



generic 
(
   NBIT : integer := 9;
	ORDER: integer := 10
);
port
(
	DIN3k    : in 	signed(NBIT-1 downto 0);
	DIN3k1  	: in 	signed(NBIT-1 downto 0);
	DIN3k2  	: in 	signed(NBIT-1 downto 0);
	
	DOUT3k  	: out 	signed(NBIT-1 downto 0);
	DOUT3k1  : out 	signed(NBIT-1 downto 0);
	DOUT3k2 	: out 	signed(NBIT-1 downto 0);
	
	B0 			: in 	std_logic_vector(NBIT-1 downto 0);
	B1 			: in 	std_logic_vector(NBIT-1 downto 0);
	B2 			: in 	std_logic_vector(NBIT-1 downto 0);
	B3 			: in 	std_logic_vector(NBIT-1 downto 0);
	B4 			: in 	std_logic_vector(NBIT-1 downto 0);
	B5 			: in 	std_logic_vector(NBIT-1 downto 0);
	B6 			: in 	std_logic_vector(NBIT-1 downto 0);
	B7 			: in 	std_logic_vector(NBIT-1 downto 0);
	B8 			: in 	std_logic_vector(NBIT-1 downto 0);
	B9 			: in 	std_logic_vector(NBIT-1 downto 0);
	B10 			: in 	std_logic_vector(NBIT-1 downto 0);
	
	VIN 		: in 	std_logic;
	VOUT 		: out std_logic;
	CLK 		: in 	std_logic;
	RST_n 	: in 	std_logic
	
);


end fir_filter_advance;

architecture Behavioral of fir_filter_advance is
	type FF_type is array(10 downto 0)of signed(NBIT-1 downto 0);
	signal FF: FF_type;
	
	--signal DIN3k_temp    :  signed(NBIT-1 downto 0);
	--signal DIN3k1_temp   : 	signed(NBIT-1 downto 0);
	--signal DIN3k2_temp   :  	signed(NBIT-1 downto 0);
	
	
	
	type Mul_result is array(10 downto 0)of signed(2*NBIT-1 downto 0);
	
	signal Mul_result_3k : Mul_result;
	signal Mul_result_3k1 : Mul_result;
	signal Mul_result_3k2 : Mul_result;
	
	type Add_acc is array(ORDER downto 0)of signed(NBIT downto 0);
	
   signal Add_acc_3K_0: Add_acc;
	signal Add_acc_3K_1: Add_acc;
	signal Add_acc_3K_2: Add_acc;	
	
begin

	


	MUl_result_3k(0) <= signed(B0) * DIN3k ;
	MUl_result_3k(1) <= signed(B1) * FF(1) ;
	MUl_result_3k(2) <= signed(B2) * FF(2) ;
	MUl_result_3k(3) <= signed(B3) * FF(3) ;
	MUl_result_3k(4) <= signed(B4) * FF(4) ;
	MUl_result_3k(5) <= signed(B5) * FF(5) ;
	MUl_result_3k(6) <= signed(B6) * FF(6) ;
	MUl_result_3k(7) <= signed(B7) * FF(7) ;
	MUl_result_3k(8) <= signed(B8) * FF(8) ;
	MUl_result_3k(9) <= signed(B9) * FF(9) ;
	MUl_result_3k(10)<= signed(B10)* FF(10);
	
	Add_acc_3K_0(0) <= MUl_result_3k(0) (17 downto 8) ;
	Add_acc_3K_0(1) <= Add_acc_3K_0(0) + MUl_result_3k(1)(17 downto 8);
	Add_acc_3K_0(2) <= Add_acc_3K_0(1) + MUl_result_3k(2)(17 downto 8);
	Add_acc_3K_0(3) <= Add_acc_3K_0(2) + MUl_result_3k(3)(17 downto 8);
	Add_acc_3K_0(4) <= Add_acc_3K_0(3) + MUl_result_3k(4)(17 downto 8);
	Add_acc_3K_0(5) <= Add_acc_3K_0(4) + MUl_result_3k(5)(17 downto 8);
	Add_acc_3K_0(6) <= Add_acc_3K_0(5) + MUl_result_3k(6)(17 downto 8);
	Add_acc_3K_0(7) <= Add_acc_3K_0(6) + MUl_result_3k(7)(17 downto 8);
	Add_acc_3K_0(8) <= Add_acc_3K_0(7) + MUl_result_3k(8)(17 downto 8);
	Add_acc_3K_0(9) <= Add_acc_3K_0(8) + MUl_result_3k(9)(17 downto 8);
	Add_acc_3K_0(10) <= Add_acc_3K_0(9) + MUl_result_3k(10)(17 downto 8);
	DOUT3k <=  Add_acc_3K_0(10)(8 downto 0) ;
	
	
	MUl_result_3k1(0) <= signed(B0) * DIN3k1 ;
	MUl_result_3k1(1) <= signed(B1) * DIN3k ;
	MUl_result_3k1(2) <= signed(B2) * FF(1) ;
	MUl_result_3k1(3) <= signed(B3) * FF(2) ;
	MUl_result_3k1(4) <= signed(B4) * FF(3) ;
	MUl_result_3k1(5) <= signed(B5) * FF(4) ;
	MUl_result_3k1(6) <= signed(B6) * FF(5) ;
	MUl_result_3k1(7) <= signed(B7) * FF(6) ;
	MUl_result_3k1(8) <= signed(B8) * FF(7) ;
	MUl_result_3k1(9) <= signed(B9) * FF(8) ;
	MUl_result_3k1(10)<= signed(B10)* FF(9);
	
	Add_acc_3K_1(0) <= MUl_result_3k1(0) (17 downto 8) ;
	Add_acc_3K_1(1) <= Add_acc_3K_1(0) + MUl_result_3k1(1)(17 downto 8);
	Add_acc_3K_1(2) <= Add_acc_3K_1(1) + MUl_result_3k1(2)(17 downto 8);
	Add_acc_3K_1(3) <= Add_acc_3K_1(2) + MUl_result_3k1(3)(17 downto 8);
	Add_acc_3K_1(4) <= Add_acc_3K_1(3) + MUl_result_3k1(4)(17 downto 8);
	Add_acc_3K_1(5) <= Add_acc_3K_1(4) + MUl_result_3k1(5)(17 downto 8);
	Add_acc_3K_1(6) <= Add_acc_3K_1(5) + MUl_result_3k1(6)(17 downto 8);
	Add_acc_3K_1(7) <= Add_acc_3K_1(6) + MUl_result_3k1(7)(17 downto 8);
	Add_acc_3K_1(8) <= Add_acc_3K_1(7) + MUl_result_3k1(8)(17 downto 8);
	Add_acc_3K_1(9) <= Add_acc_3K_1(8) + MUl_result_3k1(9)(17 downto 8);
	Add_acc_3K_1(10) <= Add_acc_3K_1(9) + MUl_result_3k1(10)(17 downto 8);
	DOUT3k1 <=  Add_acc_3K_1(10)(8 downto 0) ;
	
	MUl_result_3k2(0) <= signed(B0) * DIN3k2 ;
	MUl_result_3k2(1) <= signed(B1) * DIN3k1 ;
	MUl_result_3k2(2) <= signed(B2) * DIN3k ;
	MUl_result_3k2(3) <= signed(B3) * FF(1) ;
	MUl_result_3k2(4) <= signed(B4) * FF(2) ;
	MUl_result_3k2(5) <= signed(B5) * FF(3) ;
	MUl_result_3k2(6) <= signed(B6) * FF(4) ;
	MUl_result_3k2(7) <= signed(B7) * FF(5) ;
	MUl_result_3k2(8) <= signed(B8) * FF(6) ;
	MUl_result_3k2(9) <= signed(B9) * FF(7) ;
	MUl_result_3k2(10)<= signed(B10)* FF(8);
	
	Add_acc_3K_2(0) <= MUl_result_3k2(0) (17 downto 8) ;
	Add_acc_3K_2(1) <= Add_acc_3K_2(0) + MUl_result_3k2(1)(17 downto 8);
	Add_acc_3K_2(2) <= Add_acc_3K_2(1) + MUl_result_3k2(2)(17 downto 8);
	Add_acc_3K_2(3) <= Add_acc_3K_2(2) + MUl_result_3k2(3)(17 downto 8);
	Add_acc_3K_2(4) <= Add_acc_3K_2(3) + MUl_result_3k2(4)(17 downto 8);
	Add_acc_3K_2(5) <= Add_acc_3K_2(4) + MUl_result_3k2(5)(17 downto 8);
	Add_acc_3K_2(6) <= Add_acc_3K_2(5) + MUl_result_3k2(6)(17 downto 8);
	Add_acc_3K_2(7) <= Add_acc_3K_2(6) + MUl_result_3k2(7)(17 downto 8);
	Add_acc_3K_2(8) <= Add_acc_3K_2(7) + MUl_result_3k2(8)(17 downto 8);
	Add_acc_3K_2(9) <= Add_acc_3K_2(8) + MUl_result_3k2(9)(17 downto 8);
	Add_acc_3K_2(10) <= Add_acc_3K_2(9) + MUl_result_3k2(10)(17 downto 8);
	DOUT3k2 <=  Add_acc_3K_2(10)(8 downto 0) ;
	
	process (clk , RST_n)
		variable i: integer;
		begin 
		
			if (clk'event and clk= '1') then
				-- 3k   >> 3k -3
				-- 3k+1 >> 3k -2
				-- 3k+2 >> 3k -1
				if (VIN = '1' ) then
					FF(3) <= DIN3k;
					FF(2) <= DIN3k1;
					FF(1) <= DIN3k2;
					FF(6) <= FF(3);
					FF(5) <= FF(2);
					FF(4) <= FF(1);
					FF(9) <= FF(6);
					FF(8) <= FF(5);
					FF(7) <= FF(4);
					FF(10)<= FF(7);	
				end if ;
			end if ;
	end process;
	
	
	--temporary :
	
	




end Behavioral;


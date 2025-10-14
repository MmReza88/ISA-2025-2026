library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Fir_01 is
	generic (
				nb : integer := 9;
				N 	: integer := 10);
    Port ( 
	 
           VIN 	: 		in  STD_LOGIC;
           RST_n 	: 		in  STD_LOGIC;
           CLK 	: 		in  STD_LOGIC;
           
			  Din 	: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  
			  b0 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b1 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b2 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b3 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b4 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b5 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b6 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b7 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b8 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b9 		: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  b10 	: 		in  STD_LOGIC_VECTOR (nb-1 downto 0);
			  
			  Dout 	: 		out  STD_LOGIC_VECTOR (nb-1 downto 0); 
			  VOUT 	: 		out STD_LOGIC		
			  );
end Fir_01;

architecture Behavioral of Fir_01 is
			
			signal FF_Din 	:  signed (8 downto 0);
			
			subtype Number_of_FF is natural range 0 to 9 ;
			type FF_array is array (Number_of_FF) of signed (8 downto 0);
			signal FF : FF_array;
			
			signal FF_Dout 	:  signed (8 downto 0);
			
			subtype Number_of_Mul is natural range 0 to 10 ;
			type Mul_array is array (Number_of_Mul) of signed (17 downto 0);
			signal Mul : Mul_array;
			
			subtype Number_of_shifted is natural range 0 to 10 ;
			type Shifted_array is array (Number_of_shifted) of signed (9 downto 0);
			signal Shifted : Shifted_array;
			
			subtype Number_of_adder is natural range 0 to 9 ;
			type Adder_array is array (Number_of_adder) of signed (9 downto 0);
			signal Adder : Adder_array;
			
			
			
			
			
begin
	
	
	Dout <= std_logic_vector(FF_Dout);
	
	process (RST_n , clk)
	begin
		if (RST_n = '0') then
			FF_Din 	<= (others => '0');
			FF(0)  	<= (others => '0');
			FF(1)  	<= (others => '0');
			FF(2)  	<= (others => '0');
			FF(3)  	<= (others => '0');
			FF(4)  	<= (others => '0');
			FF(5)  	<= (others => '0');
			FF(6)  	<= (others => '0');
			FF(7)  	<= (others => '0');
			FF(8)  	<= (others => '0');
			FF(9)  	<= (others => '0');
			FF_Dout 	<= (others => '0');
			VOUT 		<= '0';
		end  if ;
		if (CLK'event and CLK = '1') then 
			
			FF_Din <= signed(Din);
			FF(0)	<= FF_Din;
			FF(1) <= FF(0);
			FF(2) <= FF(1);
			FF(3) <= FF(2);
			FF(4) <= FF(3);
			FF(5) <= FF(4);
			FF(6) <= FF(5);
			FF(7) <= FF(6);
			FF(8) <= FF(7);
			FF(9) <= FF(8);
			FF_Dout <= Adder(9)(8 downto 0);
		
		end if ;
	end process;
	
			mul(0) <= FF_Din * signed(b0);
			mul(1) <= FF(0) * signed(b1);
			mul(2) <= FF(1) * signed(b2);
			mul(3) <= FF(2) * signed(b3);
			mul(4) <= FF(3) * signed(b4);
			mul(5) <= FF(4) * signed(b5);
			mul(6) <= FF(5) * signed(b6);
			mul(7) <= FF(6) * signed(b7);
			mul(8) <= FF(7) * signed(b8);
			mul(9) <= FF(8) * signed(b9);
			mul(10)<= FF(9) * signed(b10);
			
			Shifted(0) <= mul(0)(17 downto 8);
			Shifted(1) <= mul(1)(17 downto 8);
			Shifted(2) <= mul(2)(17 downto 8);
			Shifted(3) <= mul(3)(17 downto 8);
			Shifted(4) <= mul(4)(17 downto 8);
			Shifted(5) <= mul(5)(17 downto 8);
			Shifted(6) <= mul(6)(17 downto 8);
			Shifted(7) <= mul(7)(17 downto 8);
			Shifted(8) <= mul(8)(17 downto 8);
			Shifted(9) <= mul(9)(17 downto 8);
			Shifted(10) <= mul(10)(17 downto 8);
			
			
			Adder(0) <= Shifted(0) + Shifted (1) ;
			Adder (1)<= Shifted(2) + Adder(0);
			Adder (2)<= Shifted(3) + Adder(1);
			Adder (3)<= Shifted(4) + Adder(2);
			Adder (4)<= Shifted(5) + Adder(3);
			Adder (5)<= Shifted(6) + Adder(4);
			Adder (6)<= Shifted(7) + Adder(5);
			Adder (7)<= Shifted(8) + Adder(6);
			Adder (8)<= Shifted(9) + Adder(7);
			Adder (9)<= Shifted(10) + Adder(8);
					
				
	

end Behavioral;


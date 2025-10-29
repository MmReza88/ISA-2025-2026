library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity myfir is 
    generic (NBIT : integer := 9);
    port (
        CLK : in std_logic;    
        RST : in std_logic;   

        DIN : in std_logic_vector(NBIT-1 downto 0);
        VIN : in std_logic;

        --a : in std_logic_vector(NBIT-1 downto 0);
        --b : in coeff_array(0 to 9)(NBIT-1 downto 0)    --b(0)....b(9) each 9 bits

        --same as data_maker
        B0  : in std_logic_vector(NBIT-1 downto 0);
        B1  : in std_logic_vector(NBIT-1 downto 0);
        B2  : in std_logic_vector(NBIT-1 downto 0);
        B3  : in std_logic_vector(NBIT-1 downto 0);
        B4  : in std_logic_vector(NBIT-1 downto 0);
        B5  : in std_logic_vector(NBIT-1 downto 0);
        B6  : in std_logic_vector(NBIT-1 downto 0);
        B7  : in std_logic_vector(NBIT-1 downto 0);
        B8  : in std_logic_vector(NBIT-1 downto 0);
        B9  : in std_logic_vector(NBIT-1 downto 0);
        B10 : in std_logic_vector(NBIT-1 downto 0);

        DOUT : out std_logic_vector(NBIT-1 downto 0);
        Vout : out std_logic
    );
end entity;

--Note: All filter inputs and outputs must be stored in registers.
--at the end add regiters for storing inputs and outputs!!!

architecture combinational of myfir is

    type coeff_array is array (0 to 10) of std_logic_vector(NBIT-1 downto 0);
    type product_array is array (0 to 10) of std_logic_vector(2*NBIT-1 downto 0);

component register_bhv 
	generic (
			bit_num: integer := 9);
	Port (	Clk		: in	std_logic;
			Reset	: in	std_logic;

			Enable	: in 	std_logic;
			D		: in	std_logic_vector(bit_num-1 downto 0);
			Q		: out	std_logic_vector(bit_num-1 downto 0));
end component;

--signal Din_shifted1,Din_shifted2, Din_shifted3, Din_shifted4, Din_shifted5, Din_shifted6, Din_shifted7, 
--Din_shifted8, Din_shifted9, Din_shifted10 : std_logic_vector (NBIT-1 downto 0);

signal Din_shifted  : coeff_array; 

--signal product0, product1, product2, product3, product4, product5, product6, product7, product8 , 
--product9, product10: std_logic_vector(2*NBIT-1 downto 0); -- Din_shifted_i * b(i)

signal product      : product_array;   -- Din_shifted_i * b(i)

signal b            : coeff_array; -- wanna make the coeff_array just an internal mess

signal acc_result   : std_logic_vector(NBIT-1 downto 0);
signal acc_result_shifted : std_logic_vector(NBIT-1 downto 0);

signal temp_sum     : std_logic_vector(2*NBIT-1 downto 0);

signal vin_shift    : std_logic_vector(10 downto 0);  -- tracks 10 past VINs

signal Dout_sig     : std_logic_vector(NBIT-1 downto 0);

begin

b(0) <= B0;
b(1) <= B1;
b(2) <= B2;
b(3) <= B3;
b(4) <= B4;
b(5) <= B5;
b(6) <= B6;
b(7) <= B7;
b(8) <= B8;
b(9) <= B9;
b(10) <= B10;
------------------------------------------------------------------
--shift combinational
------------------------------------------------------------------
    first_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => DIN,
        Q     => Din_shifted(0)
    );

    second_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(0),
        Q     => Din_shifted(1)
    );

    third_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(1),
        Q     => Din_shifted(2)
    );

    forth_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(2),
        Q     => Din_shifted(3)
    );

    fifth_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(3),
        Q     => Din_shifted(4)
    );

    sixth_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(4),
        Q     => Din_shifted(5)
    );

    seventh_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(5),
        Q     => Din_shifted(6)
    );

    eithsth_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(6),
        Q     => Din_shifted(7)
    );

    ninthth_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(7),
        Q     => Din_shifted(8)
    );

    tenth_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(8),
        Q     => Din_shifted(9)
    );

    eleventh_shifter : register_bhv
    generic map (
        bit_num => NBIT
    )
    port map (
        Clk   => CLK,
        Reset => RST,
        Enable => VIN, 
        D     => Din_shifted(9),
        Q     => Din_shifted(10)
    );


------------------------------------------------------------------
--Behavioral multiplication with B coeff
------------------------------------------------------------------
product(0) <= std_logic_vector(signed(Din_shifted(0)) * signed(b(0)));

gen_products: for i in 1 to 10 generate
    begin
        product(i) <= std_logic_vector(signed(Din_shifted(i)) * signed(b(i)));
end generate;

------------------------------------------------------------------
--Behavioral summation 
------------------------------------------------------------------
summation : process (CLK, RST)
    variable temp : signed(2*NBIT-1 downto 0);
    variable temp_scaled : signed(NBIT-1 downto 0);
begin
    if RST = '0' then
        DOUT <= (others => '0');
        Vout <= '0';

    elsif rising_edge(CLK) then
        vin_shift <= vin_shift(9 downto 0) & VIN;
        temp := (others => '0');

        for i in 0 to 10 loop
            temp := temp + shift_right(signed(product(i)), 8);
        end loop;

        -- extract the lower NBIT bits of the scaled result
        temp_scaled := temp(NBIT-1 downto 0);
        DOUT <= std_logic_vector(temp_scaled);

        Vout <= vin_shift(0);
        --Dout_sig <= std_logic_vector(temp_scaled);

    end if;
end process;

end architecture;



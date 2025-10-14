
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_Fir_01 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_Fir_01;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_10 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_10;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_9 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_9;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_8 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_8;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_7 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_7;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_6 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_6;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_5 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_5;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_4 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_4;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_3 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_3;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_2 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_2;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_1 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_1;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW_mult_tc_0 is

   port( a, b : in std_logic_vector (8 downto 0);  product : out 
         std_logic_vector (17 downto 0));

end Fir_01_DW_mult_tc_0;

architecture SYN_USE_DEFA_ARCH_NAME of Fir_01_DW_mult_tc_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, 
      n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71
      , n72, n73, n74, n75, n76, n77, n78, n79, n95, n96, n100, n101, n102, 
      n104, n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n126, n127, n128, n129, n130, 
      n131, n132, n133, n136, n137, n138, n139, n140, n141, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366 : std_logic;

begin
   
   U3 : FA_X1 port map( A => n20, B => n19, CI => n3, CO => n2, S => 
                           product(15));
   U4 : FA_X1 port map( A => n21, B => n24, CI => n4, CO => n3, S => 
                           product(14));
   U5 : FA_X1 port map( A => n25, B => n28, CI => n5, CO => n4, S => 
                           product(13));
   U6 : FA_X1 port map( A => n29, B => n34, CI => n6, CO => n5, S => 
                           product(12));
   U7 : FA_X1 port map( A => n35, B => n40, CI => n7, CO => n6, S => 
                           product(11));
   U8 : FA_X1 port map( A => n41, B => n48, CI => n8, CO => n7, S => 
                           product(10));
   U9 : FA_X1 port map( A => n49, B => n56, CI => n9, CO => n8, S => product(9)
                           );
   U10 : FA_X1 port map( A => n57, B => n62, CI => n280, CO => n9, S => 
                           product(8));
   U19 : FA_X1 port map( A => n100, B => n281, CI => n279, CO => n18, S => n19)
                           ;
   U20 : FA_X1 port map( A => n106, B => n23, CI => n26, CO => n20, S => n21);
   U22 : FA_X1 port map( A => n30, B => n278, CI => n27, CO => n24, S => n25);
   U23 : FA_X1 port map( A => n101, B => n284, CI => n107, CO => n26, S => n27)
                           ;
   U24 : FA_X1 port map( A => n31, B => n38, CI => n36, CO => n28, S => n29);
   U25 : FA_X1 port map( A => n116, B => n33, CI => n108, CO => n30, S => n31);
   U27 : FA_X1 port map( A => n42, B => n39, CI => n37, CO => n34, S => n35);
   U28 : FA_X1 port map( A => n277, B => n109, CI => n44, CO => n36, S => n37);
   U29 : FA_X1 port map( A => n102, B => n287, CI => n117, CO => n38, S => n39)
                           ;
   U30 : FA_X1 port map( A => n50, B => n45, CI => n43, CO => n40, S => n41);
   U31 : FA_X1 port map( A => n54, B => n118, CI => n52, CO => n42, S => n43);
   U32 : FA_X1 port map( A => n126, B => n47, CI => n110, CO => n44, S => n45);
   U34 : FA_X1 port map( A => n53, B => n58, CI => n51, CO => n48, S => n49);
   U35 : FA_X1 port map( A => n55, B => n127, CI => n60, CO => n50, S => n51);
   U36 : FA_X1 port map( A => n111, B => n119, CI => n276, CO => n52, S => n53)
                           ;
   U39 : FA_X1 port map( A => n61, B => n64, CI => n59, CO => n56, S => n57);
   U40 : FA_X1 port map( A => n112, B => n128, CI => n66, CO => n58, S => n59);
   U41 : FA_X1 port map( A => n120, B => n104, CI => n136, CO => n60, S => n61)
                           ;
   U42 : FA_X1 port map( A => n70, B => n67, CI => n65, CO => n62, S => n63);
   U43 : FA_X1 port map( A => n121, B => n137, CI => n129, CO => n64, S => n65)
                           ;
   U44 : HA_X1 port map( A => n95, B => n113, CO => n66, S => n67);
   U45 : FA_X1 port map( A => n74, B => n122, CI => n71, CO => n68, S => n69);
   U46 : FA_X1 port map( A => n138, B => n114, CI => n130, CO => n70, S => n71)
                           ;
   U47 : FA_X1 port map( A => n131, B => n139, CI => n75, CO => n72, S => n73);
   U48 : HA_X1 port map( A => n96, B => n123, CO => n74, S => n75);
   U49 : FA_X1 port map( A => n140, B => n124, CI => n132, CO => n76, S => n77)
                           ;
   U50 : HA_X1 port map( A => n133, B => n141, CO => n78, S => n79);
   U210 : INV_X1 port map( A => n358, ZN => n282);
   U211 : INV_X1 port map( A => n359, ZN => n283);
   U212 : INV_X1 port map( A => n357, ZN => n280);
   U213 : INV_X1 port map( A => n360, ZN => n285);
   U214 : INV_X1 port map( A => n361, ZN => n286);
   U215 : INV_X1 port map( A => n364, ZN => n294);
   U216 : INV_X1 port map( A => n320, ZN => n276);
   U217 : INV_X1 port map( A => n331, ZN => n277);
   U218 : INV_X1 port map( A => n311, ZN => n290);
   U219 : INV_X1 port map( A => n47, ZN => n287);
   U220 : INV_X1 port map( A => n341, ZN => n278);
   U221 : INV_X1 port map( A => n33, ZN => n284);
   U222 : INV_X1 port map( A => n23, ZN => n281);
   U223 : INV_X1 port map( A => n352, ZN => n279);
   U224 : MUX2_X1 port map( A => n274, B => n275, S => n289, Z => n273);
   U225 : AND2_X1 port map( A1 => n364, A2 => n366, ZN => n274);
   U226 : AND3_X1 port map( A1 => n366, A2 => n288, A3 => a(1), ZN => n275);
   U227 : INV_X1 port map( A => b(0), ZN => n289);
   U228 : INV_X1 port map( A => b(1), ZN => n288);
   U229 : INV_X1 port map( A => a(3), ZN => n293);
   U230 : XOR2_X1 port map( A => a(4), B => n293, Z => n301);
   U231 : INV_X1 port map( A => a(0), ZN => n295);
   U232 : INV_X1 port map( A => a(5), ZN => n292);
   U233 : XOR2_X1 port map( A => a(6), B => n292, Z => n304);
   U234 : INV_X1 port map( A => a(7), ZN => n291);
   U235 : XOR2_X1 port map( A => n296, B => n297, Z => product(16));
   U236 : XOR2_X1 port map( A => n2, B => n18, Z => n297);
   U237 : NAND2_X1 port map( A1 => n298, A2 => n290, ZN => n296);
   U238 : XOR2_X1 port map( A => b(8), B => a(8), Z => n298);
   U239 : OAI21_X1 port map( B1 => n292, B2 => n299, A => n300, ZN => n96);
   U240 : OR3_X1 port map( A1 => n301, A2 => b(0), A3 => n292, ZN => n300);
   U241 : OAI21_X1 port map( B1 => n291, B2 => n302, A => n303, ZN => n95);
   U242 : OR3_X1 port map( A1 => n304, A2 => b(0), A3 => n291, ZN => n303);
   U243 : XNOR2_X1 port map( A => n305, B => n306, ZN => n55);
   U244 : NAND2_X1 port map( A1 => n305, A2 => n306, ZN => n54);
   U245 : NAND2_X1 port map( A1 => n307, A2 => n290, ZN => n306);
   U246 : XNOR2_X1 port map( A => n288, B => a(8), ZN => n307);
   U247 : NAND3_X1 port map( A1 => n290, A2 => n289, A3 => a(8), ZN => n305);
   U248 : NAND2_X1 port map( A1 => n308, A2 => n290, ZN => n47);
   U249 : XOR2_X1 port map( A => b(2), B => a(8), Z => n308);
   U250 : NAND2_X1 port map( A1 => n309, A2 => n290, ZN => n33);
   U251 : XOR2_X1 port map( A => b(4), B => a(8), Z => n309);
   U252 : NAND2_X1 port map( A1 => n310, A2 => n290, ZN => n23);
   U253 : XOR2_X1 port map( A => b(6), B => a(8), Z => n310);
   U254 : OAI22_X1 port map( A1 => n312, A2 => n313, B1 => n314, B2 => n295, ZN
                           => n141);
   U255 : OAI22_X1 port map( A1 => n314, A2 => n313, B1 => n315, B2 => n295, ZN
                           => n140);
   U256 : XNOR2_X1 port map( A => b(3), B => a(1), ZN => n314);
   U257 : OAI22_X1 port map( A1 => n315, A2 => n313, B1 => n316, B2 => n295, ZN
                           => n139);
   U258 : XNOR2_X1 port map( A => b(4), B => a(1), ZN => n315);
   U259 : OAI22_X1 port map( A1 => n316, A2 => n313, B1 => n317, B2 => n295, ZN
                           => n138);
   U260 : XNOR2_X1 port map( A => b(5), B => a(1), ZN => n316);
   U261 : OAI22_X1 port map( A1 => n317, A2 => n313, B1 => n318, B2 => n295, ZN
                           => n137);
   U262 : XNOR2_X1 port map( A => b(6), B => a(1), ZN => n317);
   U263 : OAI22_X1 port map( A1 => n318, A2 => n313, B1 => n319, B2 => n295, ZN
                           => n136);
   U264 : XNOR2_X1 port map( A => b(7), B => a(1), ZN => n318);
   U265 : OAI22_X1 port map( A1 => n295, A2 => n319, B1 => n313, B2 => n319, ZN
                           => n320);
   U266 : XNOR2_X1 port map( A => b(8), B => a(1), ZN => n319);
   U267 : OAI22_X1 port map( A1 => n321, A2 => n322, B1 => n294, B2 => n323, ZN
                           => n133);
   U268 : XNOR2_X1 port map( A => b(0), B => a(3), ZN => n321);
   U269 : OAI22_X1 port map( A1 => n323, A2 => n322, B1 => n294, B2 => n324, ZN
                           => n132);
   U270 : XNOR2_X1 port map( A => b(1), B => a(3), ZN => n323);
   U271 : OAI22_X1 port map( A1 => n324, A2 => n322, B1 => n294, B2 => n325, ZN
                           => n131);
   U272 : XNOR2_X1 port map( A => b(2), B => a(3), ZN => n324);
   U273 : OAI22_X1 port map( A1 => n325, A2 => n322, B1 => n294, B2 => n326, ZN
                           => n130);
   U274 : XNOR2_X1 port map( A => b(3), B => a(3), ZN => n325);
   U275 : OAI22_X1 port map( A1 => n326, A2 => n322, B1 => n294, B2 => n327, ZN
                           => n129);
   U276 : XNOR2_X1 port map( A => b(4), B => a(3), ZN => n326);
   U277 : OAI22_X1 port map( A1 => n327, A2 => n322, B1 => n294, B2 => n328, ZN
                           => n128);
   U278 : XNOR2_X1 port map( A => b(5), B => a(3), ZN => n327);
   U279 : OAI22_X1 port map( A1 => n328, A2 => n322, B1 => n294, B2 => n329, ZN
                           => n127);
   U280 : XNOR2_X1 port map( A => b(6), B => a(3), ZN => n328);
   U281 : OAI22_X1 port map( A1 => n329, A2 => n322, B1 => n294, B2 => n330, ZN
                           => n126);
   U282 : XNOR2_X1 port map( A => b(7), B => a(3), ZN => n329);
   U283 : OAI22_X1 port map( A1 => n330, A2 => n294, B1 => n322, B2 => n330, ZN
                           => n331);
   U284 : XNOR2_X1 port map( A => b(8), B => a(3), ZN => n330);
   U285 : NOR2_X1 port map( A1 => n301, A2 => n289, ZN => n124);
   U286 : OAI22_X1 port map( A1 => n332, A2 => n299, B1 => n301, B2 => n333, ZN
                           => n123);
   U287 : XNOR2_X1 port map( A => b(0), B => a(5), ZN => n332);
   U288 : OAI22_X1 port map( A1 => n333, A2 => n299, B1 => n301, B2 => n334, ZN
                           => n122);
   U289 : XNOR2_X1 port map( A => b(1), B => a(5), ZN => n333);
   U290 : OAI22_X1 port map( A1 => n334, A2 => n299, B1 => n301, B2 => n335, ZN
                           => n121);
   U291 : XNOR2_X1 port map( A => b(2), B => a(5), ZN => n334);
   U292 : OAI22_X1 port map( A1 => n335, A2 => n299, B1 => n301, B2 => n336, ZN
                           => n120);
   U293 : XNOR2_X1 port map( A => b(3), B => a(5), ZN => n335);
   U294 : OAI22_X1 port map( A1 => n336, A2 => n299, B1 => n301, B2 => n337, ZN
                           => n119);
   U295 : XNOR2_X1 port map( A => b(4), B => a(5), ZN => n336);
   U296 : OAI22_X1 port map( A1 => n337, A2 => n299, B1 => n301, B2 => n338, ZN
                           => n118);
   U297 : XNOR2_X1 port map( A => b(5), B => a(5), ZN => n337);
   U298 : OAI22_X1 port map( A1 => n338, A2 => n299, B1 => n301, B2 => n339, ZN
                           => n117);
   U299 : XNOR2_X1 port map( A => b(6), B => a(5), ZN => n338);
   U300 : OAI22_X1 port map( A1 => n339, A2 => n299, B1 => n301, B2 => n340, ZN
                           => n116);
   U301 : XNOR2_X1 port map( A => b(7), B => a(5), ZN => n339);
   U302 : OAI22_X1 port map( A1 => n340, A2 => n301, B1 => n299, B2 => n340, ZN
                           => n341);
   U303 : NAND2_X1 port map( A1 => n301, A2 => n342, ZN => n299);
   U304 : XNOR2_X1 port map( A => n292, B => a(4), ZN => n342);
   U305 : XNOR2_X1 port map( A => b(8), B => a(5), ZN => n340);
   U306 : NOR2_X1 port map( A1 => n304, A2 => n289, ZN => n114);
   U307 : OAI22_X1 port map( A1 => n343, A2 => n302, B1 => n304, B2 => n344, ZN
                           => n113);
   U308 : XNOR2_X1 port map( A => b(0), B => a(7), ZN => n343);
   U309 : OAI22_X1 port map( A1 => n344, A2 => n302, B1 => n304, B2 => n345, ZN
                           => n112);
   U310 : XNOR2_X1 port map( A => b(1), B => a(7), ZN => n344);
   U311 : OAI22_X1 port map( A1 => n345, A2 => n302, B1 => n304, B2 => n346, ZN
                           => n111);
   U312 : XNOR2_X1 port map( A => b(2), B => a(7), ZN => n345);
   U313 : OAI22_X1 port map( A1 => n346, A2 => n302, B1 => n304, B2 => n347, ZN
                           => n110);
   U314 : XNOR2_X1 port map( A => b(3), B => a(7), ZN => n346);
   U315 : OAI22_X1 port map( A1 => n347, A2 => n302, B1 => n304, B2 => n348, ZN
                           => n109);
   U316 : XNOR2_X1 port map( A => b(4), B => a(7), ZN => n347);
   U317 : OAI22_X1 port map( A1 => n348, A2 => n302, B1 => n304, B2 => n349, ZN
                           => n108);
   U318 : XNOR2_X1 port map( A => b(5), B => a(7), ZN => n348);
   U319 : OAI22_X1 port map( A1 => n349, A2 => n302, B1 => n304, B2 => n350, ZN
                           => n107);
   U320 : XNOR2_X1 port map( A => b(6), B => a(7), ZN => n349);
   U321 : OAI22_X1 port map( A1 => n350, A2 => n302, B1 => n304, B2 => n351, ZN
                           => n106);
   U322 : XNOR2_X1 port map( A => b(7), B => a(7), ZN => n350);
   U323 : OAI22_X1 port map( A1 => n351, A2 => n304, B1 => n302, B2 => n351, ZN
                           => n352);
   U324 : NAND2_X1 port map( A1 => n304, A2 => n353, ZN => n302);
   U325 : XNOR2_X1 port map( A => n291, B => a(6), ZN => n353);
   U326 : XNOR2_X1 port map( A => b(8), B => a(7), ZN => n351);
   U327 : NOR2_X1 port map( A1 => n311, A2 => n289, ZN => n104);
   U328 : NOR2_X1 port map( A1 => n311, A2 => n354, ZN => n102);
   U329 : XNOR2_X1 port map( A => b(3), B => a(8), ZN => n354);
   U330 : NOR2_X1 port map( A1 => n311, A2 => n355, ZN => n101);
   U331 : XNOR2_X1 port map( A => b(5), B => a(8), ZN => n355);
   U332 : NOR2_X1 port map( A1 => n311, A2 => n356, ZN => n100);
   U333 : XNOR2_X1 port map( A => b(7), B => a(8), ZN => n356);
   U334 : XOR2_X1 port map( A => a(8), B => n291, Z => n311);
   U335 : AOI222_X1 port map( A1 => n282, A2 => n63, B1 => n282, B2 => n68, C1 
                           => n68, C2 => n63, ZN => n357);
   U336 : AOI222_X1 port map( A1 => n283, A2 => n69, B1 => n283, B2 => n72, C1 
                           => n72, C2 => n69, ZN => n358);
   U337 : AOI222_X1 port map( A1 => n285, A2 => n73, B1 => n285, B2 => n76, C1 
                           => n76, C2 => n73, ZN => n359);
   U338 : AOI222_X1 port map( A1 => n286, A2 => n77, B1 => n286, B2 => n78, C1 
                           => n78, C2 => n77, ZN => n360);
   U339 : AOI222_X1 port map( A1 => n273, A2 => n79, B1 => n362, B2 => n273, C1
                           => n362, C2 => n79, ZN => n361);
   U340 : OAI21_X1 port map( B1 => n293, B2 => n322, A => n363, ZN => n362);
   U341 : NAND3_X1 port map( A1 => n364, A2 => n289, A3 => a(3), ZN => n363);
   U342 : NAND2_X1 port map( A1 => n294, A2 => n365, ZN => n322);
   U343 : XNOR2_X1 port map( A => n293, B => a(2), ZN => n365);
   U344 : OAI22_X1 port map( A1 => b(1), A2 => n313, B1 => n312, B2 => n295, ZN
                           => n366);
   U345 : XNOR2_X1 port map( A => b(2), B => a(1), ZN => n312);
   U346 : NAND2_X1 port map( A1 => a(1), A2 => n295, ZN => n313);
   U347 : XOR2_X1 port map( A => a(2), B => a(1), Z => n364);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_9 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_9;

architecture SYN_rpl of Fir_01_DW01_add_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1101 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1101, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_8 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_8;

architecture SYN_rpl of Fir_01_DW01_add_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1104 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1104, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_7 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_7;

architecture SYN_rpl of Fir_01_DW01_add_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1107 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1107, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_6 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_6;

architecture SYN_rpl of Fir_01_DW01_add_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1110 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1110, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_5 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_5;

architecture SYN_rpl of Fir_01_DW01_add_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1113 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1113, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_4 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_4;

architecture SYN_rpl of Fir_01_DW01_add_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1116 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1116, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_3 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_3;

architecture SYN_rpl of Fir_01_DW01_add_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1119 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1119, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_2 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_2;

architecture SYN_rpl of Fir_01_DW01_add_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1122 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1122, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_1 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_1;

architecture SYN_rpl of Fir_01_DW01_add_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1125 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1125, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01_DW01_add_0 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end Fir_01_DW01_add_0;

architecture SYN_rpl of Fir_01_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1128 : std_logic;

begin
   
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1128, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Fir_01.all;

entity Fir_01 is

   port( VIN, RST_n, CLK : in std_logic;  Din, b0, b1, b2, b3, b4, b5, b6, b7, 
         b8, b9, b10 : in std_logic_vector (8 downto 0);  Dout : out 
         std_logic_vector (8 downto 0);  VOUT : out std_logic);

end Fir_01;

architecture SYN_Behavioral of Fir_01 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component Fir_01_DW01_add_0
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW01_add_1
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW01_add_2
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW01_add_3
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW01_add_4
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW01_add_5
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW01_add_6
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW01_add_7
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW01_add_8
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW01_add_9
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component Fir_01_DW_mult_tc_0
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_1
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_2
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_3
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_4
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_5
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_6
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_7
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_8
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_9
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component Fir_01_DW_mult_tc_10
      port( a, b : in std_logic_vector (8 downto 0);  product : out 
            std_logic_vector (17 downto 0));
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal FF_Din_8_port, FF_Din_7_port, FF_Din_6_port, FF_Din_5_port, 
      FF_Din_4_port, FF_Din_3_port, FF_Din_2_port, FF_Din_1_port, FF_Din_0_port
      , FF_0_8_port, FF_0_7_port, FF_0_6_port, FF_0_5_port, FF_0_4_port, 
      FF_0_3_port, FF_0_2_port, FF_0_1_port, FF_0_0_port, FF_1_8_port, 
      FF_1_7_port, FF_1_6_port, FF_1_5_port, FF_1_4_port, FF_1_3_port, 
      FF_1_2_port, FF_1_1_port, FF_1_0_port, FF_2_8_port, FF_2_7_port, 
      FF_2_6_port, FF_2_5_port, FF_2_4_port, FF_2_3_port, FF_2_2_port, 
      FF_2_1_port, FF_2_0_port, FF_3_8_port, FF_3_7_port, FF_3_6_port, 
      FF_3_5_port, FF_3_4_port, FF_3_3_port, FF_3_2_port, FF_3_1_port, 
      FF_3_0_port, FF_4_8_port, FF_4_7_port, FF_4_6_port, FF_4_5_port, 
      FF_4_4_port, FF_4_3_port, FF_4_2_port, FF_4_1_port, FF_4_0_port, 
      FF_5_8_port, FF_5_7_port, FF_5_6_port, FF_5_5_port, FF_5_4_port, 
      FF_5_3_port, FF_5_2_port, FF_5_1_port, FF_5_0_port, FF_6_8_port, 
      FF_6_7_port, FF_6_6_port, FF_6_5_port, FF_6_4_port, FF_6_3_port, 
      FF_6_2_port, FF_6_1_port, FF_6_0_port, FF_7_8_port, FF_7_7_port, 
      FF_7_6_port, FF_7_5_port, FF_7_4_port, FF_7_3_port, FF_7_2_port, 
      FF_7_1_port, FF_7_0_port, FF_8_8_port, FF_8_7_port, FF_8_6_port, 
      FF_8_5_port, FF_8_4_port, FF_8_3_port, FF_8_2_port, FF_8_1_port, 
      FF_8_0_port, FF_9_8_port, FF_9_7_port, FF_9_6_port, FF_9_5_port, 
      FF_9_4_port, FF_9_3_port, FF_9_2_port, FF_9_1_port, FF_9_0_port, 
      Adder_9_8_port, Adder_9_7_port, Adder_9_6_port, Adder_9_5_port, 
      Adder_9_4_port, Adder_9_3_port, Adder_9_2_port, Adder_9_1_port, 
      Adder_9_0_port, Mul_9_9_port, Mul_9_8_port, Mul_9_16_port, Mul_9_15_port,
      Mul_9_14_port, Mul_9_13_port, Mul_9_12_port, Mul_9_11_port, Mul_9_10_port
      , Mul_8_9_port, Mul_8_8_port, Mul_8_16_port, Mul_8_15_port, Mul_8_14_port
      , Mul_8_13_port, Mul_8_12_port, Mul_8_11_port, Mul_8_10_port, 
      Mul_7_9_port, Mul_7_8_port, Mul_7_16_port, Mul_7_15_port, Mul_7_14_port, 
      Mul_7_13_port, Mul_7_12_port, Mul_7_11_port, Mul_7_10_port, Mul_6_9_port,
      Mul_6_8_port, Mul_6_16_port, Mul_6_15_port, Mul_6_14_port, Mul_6_13_port,
      Mul_6_12_port, Mul_6_11_port, Mul_6_10_port, Mul_5_9_port, Mul_5_8_port, 
      Mul_5_16_port, Mul_5_15_port, Mul_5_14_port, Mul_5_13_port, Mul_5_12_port
      , Mul_5_11_port, Mul_5_10_port, Mul_4_9_port, Mul_4_8_port, Mul_4_16_port
      , Mul_4_15_port, Mul_4_14_port, Mul_4_13_port, Mul_4_12_port, 
      Mul_4_11_port, Mul_4_10_port, Mul_3_9_port, Mul_3_8_port, Mul_3_16_port, 
      Mul_3_15_port, Mul_3_14_port, Mul_3_13_port, Mul_3_12_port, Mul_3_11_port
      , Mul_3_10_port, Mul_2_9_port, Mul_2_8_port, Mul_2_16_port, Mul_2_15_port
      , Mul_2_14_port, Mul_2_13_port, Mul_2_12_port, Mul_2_11_port, 
      Mul_2_10_port, Mul_1_9_port, Mul_1_8_port, Mul_1_16_port, Mul_1_15_port, 
      Mul_1_14_port, Mul_1_13_port, Mul_1_12_port, Mul_1_11_port, Mul_1_10_port
      , Mul_10_9_port, Mul_10_8_port, Mul_10_16_port, Mul_10_15_port, 
      Mul_10_14_port, Mul_10_13_port, Mul_10_12_port, Mul_10_11_port, 
      Mul_10_10_port, Mul_0_9_port, Mul_0_8_port, Mul_0_16_port, Mul_0_15_port,
      Mul_0_14_port, Mul_0_13_port, Mul_0_12_port, Mul_0_11_port, Mul_0_10_port
      , Adder_8_8_port, Adder_8_7_port, Adder_8_6_port, Adder_8_5_port, 
      Adder_8_4_port, Adder_8_3_port, Adder_8_2_port, Adder_8_1_port, 
      Adder_8_0_port, Adder_7_8_port, Adder_7_7_port, Adder_7_6_port, 
      Adder_7_5_port, Adder_7_4_port, Adder_7_3_port, Adder_7_2_port, 
      Adder_7_1_port, Adder_7_0_port, Adder_6_8_port, Adder_6_7_port, 
      Adder_6_6_port, Adder_6_5_port, Adder_6_4_port, Adder_6_3_port, 
      Adder_6_2_port, Adder_6_1_port, Adder_6_0_port, Adder_5_8_port, 
      Adder_5_7_port, Adder_5_6_port, Adder_5_5_port, Adder_5_4_port, 
      Adder_5_3_port, Adder_5_2_port, Adder_5_1_port, Adder_5_0_port, 
      Adder_4_8_port, Adder_4_7_port, Adder_4_6_port, Adder_4_5_port, 
      Adder_4_4_port, Adder_4_3_port, Adder_4_2_port, Adder_4_1_port, 
      Adder_4_0_port, Adder_3_8_port, Adder_3_7_port, Adder_3_6_port, 
      Adder_3_5_port, Adder_3_4_port, Adder_3_3_port, Adder_3_2_port, 
      Adder_3_1_port, Adder_3_0_port, Adder_2_8_port, Adder_2_7_port, 
      Adder_2_6_port, Adder_2_5_port, Adder_2_4_port, Adder_2_3_port, 
      Adder_2_2_port, Adder_2_1_port, Adder_2_0_port, Adder_1_8_port, 
      Adder_1_7_port, Adder_1_6_port, Adder_1_5_port, Adder_1_4_port, 
      Adder_1_3_port, Adder_1_2_port, Adder_1_1_port, Adder_1_0_port, 
      Adder_0_8_port, Adder_0_7_port, Adder_0_6_port, Adder_0_5_port, 
      Adder_0_4_port, Adder_0_3_port, Adder_0_2_port, Adder_0_1_port, 
      Adder_0_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, 
      n14, n15, n16, n17, n18, n19, n20, n21, n22, n_1129, n_1130, n_1131, 
      n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, n_1139, n_1140, 
      n_1141, n_1142, n_1143, n_1144, n_1145, n_1146, n_1147, n_1148, n_1149, 
      n_1150, n_1151, n_1152, n_1153, n_1154, n_1155, n_1156, n_1157, n_1158, 
      n_1159, n_1160, n_1161, n_1162, n_1163, n_1164, n_1165, n_1166, n_1167, 
      n_1168, n_1169, n_1170, n_1171, n_1172, n_1173, n_1174, n_1175, n_1176, 
      n_1177, n_1178, n_1179, n_1180, n_1181, n_1182, n_1183, n_1184, n_1185, 
      n_1186, n_1187, n_1188, n_1189, n_1190, n_1191, n_1192, n_1193, n_1194, 
      n_1195, n_1196, n_1197, n_1198, n_1199, n_1200, n_1201, n_1202, n_1203, 
      n_1204, n_1205, n_1206, n_1207, n_1208, n_1209, n_1210, n_1211, n_1212, 
      n_1213, n_1214, n_1215, n_1216, n_1217, n_1218, n_1219, n_1220, n_1221, 
      n_1222, n_1223, n_1224, n_1225, n_1226, n_1227, n_1228, n_1229, n_1230, 
      n_1231, n_1232, n_1233, n_1234, n_1235, n_1236, n_1237, n_1238, n_1239, 
      n_1240, n_1241, n_1242, n_1243, n_1244, n_1245, n_1246, n_1247, n_1248, 
      n_1249, n_1250, n_1251, n_1252, n_1253, n_1254, n_1255, n_1256, n_1257, 
      n_1258, n_1259, n_1260, n_1261, n_1262, n_1263, n_1264, n_1265, n_1266, 
      n_1267, n_1268, n_1269, n_1270, n_1271, n_1272, n_1273, n_1274, n_1275, 
      n_1276, n_1277, n_1278, n_1279, n_1280, n_1281, n_1282, n_1283, n_1284, 
      n_1285, n_1286, n_1287, n_1288, n_1289, n_1290, n_1291, n_1292, n_1293, 
      n_1294, n_1295, n_1296, n_1297, n_1298, n_1299, n_1300, n_1301, n_1302, 
      n_1303, n_1304, n_1305, n_1306, n_1307, n_1308, n_1309, n_1310, n_1311, 
      n_1312, n_1313, n_1314, n_1315, n_1316, n_1317, n_1318, n_1319, n_1320, 
      n_1321, n_1322, n_1323, n_1324, n_1325, n_1326, n_1327, n_1328, n_1329, 
      n_1330, n_1331, n_1332, n_1333, n_1334, n_1335, n_1336, n_1337, n_1338, 
      n_1339, n_1340, n_1341, n_1342, n_1343, n_1344, n_1345 : std_logic;

begin
   
   FF_Din_reg_8_inst : DFFR_X1 port map( D => Din(8), CK => CLK, RN => n9, Q =>
                           FF_Din_8_port, QN => n_1129);
   FF_Din_reg_7_inst : DFFR_X1 port map( D => Din(7), CK => CLK, RN => n9, Q =>
                           FF_Din_7_port, QN => n_1130);
   FF_Din_reg_6_inst : DFFR_X1 port map( D => Din(6), CK => CLK, RN => n9, Q =>
                           FF_Din_6_port, QN => n_1131);
   FF_Din_reg_5_inst : DFFR_X1 port map( D => Din(5), CK => CLK, RN => n9, Q =>
                           FF_Din_5_port, QN => n_1132);
   FF_Din_reg_4_inst : DFFR_X1 port map( D => Din(4), CK => CLK, RN => n9, Q =>
                           FF_Din_4_port, QN => n_1133);
   FF_Din_reg_3_inst : DFFR_X1 port map( D => Din(3), CK => CLK, RN => n9, Q =>
                           FF_Din_3_port, QN => n_1134);
   FF_Din_reg_2_inst : DFFR_X1 port map( D => Din(2), CK => CLK, RN => n9, Q =>
                           FF_Din_2_port, QN => n_1135);
   FF_Din_reg_1_inst : DFFR_X1 port map( D => Din(1), CK => CLK, RN => n9, Q =>
                           FF_Din_1_port, QN => n_1136);
   FF_Din_reg_0_inst : DFFR_X1 port map( D => Din(0), CK => CLK, RN => n9, Q =>
                           FF_Din_0_port, QN => n_1137);
   FF_reg_0_8_inst : DFFR_X1 port map( D => FF_Din_8_port, CK => CLK, RN => n9,
                           Q => FF_0_8_port, QN => n_1138);
   FF_reg_0_7_inst : DFFR_X1 port map( D => FF_Din_7_port, CK => CLK, RN => n9,
                           Q => FF_0_7_port, QN => n_1139);
   FF_reg_0_6_inst : DFFR_X1 port map( D => FF_Din_6_port, CK => CLK, RN => n9,
                           Q => FF_0_6_port, QN => n_1140);
   FF_reg_0_5_inst : DFFR_X1 port map( D => FF_Din_5_port, CK => CLK, RN => n8,
                           Q => FF_0_5_port, QN => n_1141);
   FF_reg_0_4_inst : DFFR_X1 port map( D => FF_Din_4_port, CK => CLK, RN => n8,
                           Q => FF_0_4_port, QN => n_1142);
   FF_reg_0_3_inst : DFFR_X1 port map( D => FF_Din_3_port, CK => CLK, RN => n8,
                           Q => FF_0_3_port, QN => n_1143);
   FF_reg_0_2_inst : DFFR_X1 port map( D => FF_Din_2_port, CK => CLK, RN => n8,
                           Q => FF_0_2_port, QN => n_1144);
   FF_reg_0_1_inst : DFFR_X1 port map( D => FF_Din_1_port, CK => CLK, RN => n8,
                           Q => FF_0_1_port, QN => n_1145);
   FF_reg_0_0_inst : DFFR_X1 port map( D => FF_Din_0_port, CK => CLK, RN => n8,
                           Q => FF_0_0_port, QN => n_1146);
   FF_reg_1_8_inst : DFFR_X1 port map( D => FF_0_8_port, CK => CLK, RN => n8, Q
                           => FF_1_8_port, QN => n_1147);
   FF_reg_1_7_inst : DFFR_X1 port map( D => FF_0_7_port, CK => CLK, RN => n8, Q
                           => FF_1_7_port, QN => n_1148);
   FF_reg_1_6_inst : DFFR_X1 port map( D => FF_0_6_port, CK => CLK, RN => n8, Q
                           => FF_1_6_port, QN => n_1149);
   FF_reg_1_5_inst : DFFR_X1 port map( D => FF_0_5_port, CK => CLK, RN => n8, Q
                           => FF_1_5_port, QN => n_1150);
   FF_reg_1_4_inst : DFFR_X1 port map( D => FF_0_4_port, CK => CLK, RN => n8, Q
                           => FF_1_4_port, QN => n_1151);
   FF_reg_1_3_inst : DFFR_X1 port map( D => FF_0_3_port, CK => CLK, RN => n8, Q
                           => FF_1_3_port, QN => n_1152);
   FF_reg_1_2_inst : DFFR_X1 port map( D => FF_0_2_port, CK => CLK, RN => n7, Q
                           => FF_1_2_port, QN => n_1153);
   FF_reg_1_1_inst : DFFR_X1 port map( D => FF_0_1_port, CK => CLK, RN => n7, Q
                           => FF_1_1_port, QN => n_1154);
   FF_reg_1_0_inst : DFFR_X1 port map( D => FF_0_0_port, CK => CLK, RN => n7, Q
                           => FF_1_0_port, QN => n_1155);
   FF_reg_2_8_inst : DFFR_X1 port map( D => FF_1_8_port, CK => CLK, RN => n7, Q
                           => FF_2_8_port, QN => n_1156);
   FF_reg_2_7_inst : DFFR_X1 port map( D => FF_1_7_port, CK => CLK, RN => n7, Q
                           => FF_2_7_port, QN => n_1157);
   FF_reg_2_6_inst : DFFR_X1 port map( D => FF_1_6_port, CK => CLK, RN => n7, Q
                           => FF_2_6_port, QN => n_1158);
   FF_reg_2_5_inst : DFFR_X1 port map( D => FF_1_5_port, CK => CLK, RN => n7, Q
                           => FF_2_5_port, QN => n_1159);
   FF_reg_2_4_inst : DFFR_X1 port map( D => FF_1_4_port, CK => CLK, RN => n7, Q
                           => FF_2_4_port, QN => n_1160);
   FF_reg_2_3_inst : DFFR_X1 port map( D => FF_1_3_port, CK => CLK, RN => n7, Q
                           => FF_2_3_port, QN => n_1161);
   FF_reg_2_2_inst : DFFR_X1 port map( D => FF_1_2_port, CK => CLK, RN => n7, Q
                           => FF_2_2_port, QN => n_1162);
   FF_reg_2_1_inst : DFFR_X1 port map( D => FF_1_1_port, CK => CLK, RN => n7, Q
                           => FF_2_1_port, QN => n_1163);
   FF_reg_2_0_inst : DFFR_X1 port map( D => FF_1_0_port, CK => CLK, RN => n7, Q
                           => FF_2_0_port, QN => n_1164);
   FF_reg_3_8_inst : DFFR_X1 port map( D => FF_2_8_port, CK => CLK, RN => n6, Q
                           => FF_3_8_port, QN => n_1165);
   FF_reg_3_7_inst : DFFR_X1 port map( D => FF_2_7_port, CK => CLK, RN => n6, Q
                           => FF_3_7_port, QN => n_1166);
   FF_reg_3_6_inst : DFFR_X1 port map( D => FF_2_6_port, CK => CLK, RN => n6, Q
                           => FF_3_6_port, QN => n_1167);
   FF_reg_3_5_inst : DFFR_X1 port map( D => FF_2_5_port, CK => CLK, RN => n6, Q
                           => FF_3_5_port, QN => n_1168);
   FF_reg_3_4_inst : DFFR_X1 port map( D => FF_2_4_port, CK => CLK, RN => n6, Q
                           => FF_3_4_port, QN => n_1169);
   FF_reg_3_3_inst : DFFR_X1 port map( D => FF_2_3_port, CK => CLK, RN => n6, Q
                           => FF_3_3_port, QN => n_1170);
   FF_reg_3_2_inst : DFFR_X1 port map( D => FF_2_2_port, CK => CLK, RN => n6, Q
                           => FF_3_2_port, QN => n_1171);
   FF_reg_3_1_inst : DFFR_X1 port map( D => FF_2_1_port, CK => CLK, RN => n6, Q
                           => FF_3_1_port, QN => n_1172);
   FF_reg_3_0_inst : DFFR_X1 port map( D => FF_2_0_port, CK => CLK, RN => n6, Q
                           => FF_3_0_port, QN => n_1173);
   FF_reg_4_8_inst : DFFR_X1 port map( D => FF_3_8_port, CK => CLK, RN => n6, Q
                           => FF_4_8_port, QN => n_1174);
   FF_reg_4_7_inst : DFFR_X1 port map( D => FF_3_7_port, CK => CLK, RN => n6, Q
                           => FF_4_7_port, QN => n_1175);
   FF_reg_4_6_inst : DFFR_X1 port map( D => FF_3_6_port, CK => CLK, RN => n6, Q
                           => FF_4_6_port, QN => n_1176);
   FF_reg_4_5_inst : DFFR_X1 port map( D => FF_3_5_port, CK => CLK, RN => n5, Q
                           => FF_4_5_port, QN => n_1177);
   FF_reg_4_4_inst : DFFR_X1 port map( D => FF_3_4_port, CK => CLK, RN => n5, Q
                           => FF_4_4_port, QN => n_1178);
   FF_reg_4_3_inst : DFFR_X1 port map( D => FF_3_3_port, CK => CLK, RN => n5, Q
                           => FF_4_3_port, QN => n_1179);
   FF_reg_4_2_inst : DFFR_X1 port map( D => FF_3_2_port, CK => CLK, RN => n5, Q
                           => FF_4_2_port, QN => n_1180);
   FF_reg_4_1_inst : DFFR_X1 port map( D => FF_3_1_port, CK => CLK, RN => n5, Q
                           => FF_4_1_port, QN => n_1181);
   FF_reg_4_0_inst : DFFR_X1 port map( D => FF_3_0_port, CK => CLK, RN => n5, Q
                           => FF_4_0_port, QN => n_1182);
   FF_reg_5_8_inst : DFFR_X1 port map( D => FF_4_8_port, CK => CLK, RN => n5, Q
                           => FF_5_8_port, QN => n_1183);
   FF_reg_5_7_inst : DFFR_X1 port map( D => FF_4_7_port, CK => CLK, RN => n5, Q
                           => FF_5_7_port, QN => n_1184);
   FF_reg_5_6_inst : DFFR_X1 port map( D => FF_4_6_port, CK => CLK, RN => n5, Q
                           => FF_5_6_port, QN => n_1185);
   FF_reg_5_5_inst : DFFR_X1 port map( D => FF_4_5_port, CK => CLK, RN => n5, Q
                           => FF_5_5_port, QN => n_1186);
   FF_reg_5_4_inst : DFFR_X1 port map( D => FF_4_4_port, CK => CLK, RN => n5, Q
                           => FF_5_4_port, QN => n_1187);
   FF_reg_5_3_inst : DFFR_X1 port map( D => FF_4_3_port, CK => CLK, RN => n5, Q
                           => FF_5_3_port, QN => n_1188);
   FF_reg_5_2_inst : DFFR_X1 port map( D => FF_4_2_port, CK => CLK, RN => n4, Q
                           => FF_5_2_port, QN => n_1189);
   FF_reg_5_1_inst : DFFR_X1 port map( D => FF_4_1_port, CK => CLK, RN => n4, Q
                           => FF_5_1_port, QN => n_1190);
   FF_reg_5_0_inst : DFFR_X1 port map( D => FF_4_0_port, CK => CLK, RN => n4, Q
                           => FF_5_0_port, QN => n_1191);
   FF_reg_6_8_inst : DFFR_X1 port map( D => FF_5_8_port, CK => CLK, RN => n4, Q
                           => FF_6_8_port, QN => n_1192);
   FF_reg_6_7_inst : DFFR_X1 port map( D => FF_5_7_port, CK => CLK, RN => n4, Q
                           => FF_6_7_port, QN => n_1193);
   FF_reg_6_6_inst : DFFR_X1 port map( D => FF_5_6_port, CK => CLK, RN => n4, Q
                           => FF_6_6_port, QN => n_1194);
   FF_reg_6_5_inst : DFFR_X1 port map( D => FF_5_5_port, CK => CLK, RN => n4, Q
                           => FF_6_5_port, QN => n_1195);
   FF_reg_6_4_inst : DFFR_X1 port map( D => FF_5_4_port, CK => CLK, RN => n4, Q
                           => FF_6_4_port, QN => n_1196);
   FF_reg_6_3_inst : DFFR_X1 port map( D => FF_5_3_port, CK => CLK, RN => n4, Q
                           => FF_6_3_port, QN => n_1197);
   FF_reg_6_2_inst : DFFR_X1 port map( D => FF_5_2_port, CK => CLK, RN => n4, Q
                           => FF_6_2_port, QN => n_1198);
   FF_reg_6_1_inst : DFFR_X1 port map( D => FF_5_1_port, CK => CLK, RN => n4, Q
                           => FF_6_1_port, QN => n_1199);
   FF_reg_6_0_inst : DFFR_X1 port map( D => FF_5_0_port, CK => CLK, RN => n4, Q
                           => FF_6_0_port, QN => n_1200);
   FF_reg_7_8_inst : DFFR_X1 port map( D => FF_6_8_port, CK => CLK, RN => n3, Q
                           => FF_7_8_port, QN => n_1201);
   FF_reg_7_7_inst : DFFR_X1 port map( D => FF_6_7_port, CK => CLK, RN => n3, Q
                           => FF_7_7_port, QN => n_1202);
   FF_reg_7_6_inst : DFFR_X1 port map( D => FF_6_6_port, CK => CLK, RN => n3, Q
                           => FF_7_6_port, QN => n_1203);
   FF_reg_7_5_inst : DFFR_X1 port map( D => FF_6_5_port, CK => CLK, RN => n3, Q
                           => FF_7_5_port, QN => n_1204);
   FF_reg_7_4_inst : DFFR_X1 port map( D => FF_6_4_port, CK => CLK, RN => n3, Q
                           => FF_7_4_port, QN => n_1205);
   FF_reg_7_3_inst : DFFR_X1 port map( D => FF_6_3_port, CK => CLK, RN => n3, Q
                           => FF_7_3_port, QN => n_1206);
   FF_reg_7_2_inst : DFFR_X1 port map( D => FF_6_2_port, CK => CLK, RN => n3, Q
                           => FF_7_2_port, QN => n_1207);
   FF_reg_7_1_inst : DFFR_X1 port map( D => FF_6_1_port, CK => CLK, RN => n3, Q
                           => FF_7_1_port, QN => n_1208);
   FF_reg_7_0_inst : DFFR_X1 port map( D => FF_6_0_port, CK => CLK, RN => n3, Q
                           => FF_7_0_port, QN => n_1209);
   FF_reg_8_8_inst : DFFR_X1 port map( D => FF_7_8_port, CK => CLK, RN => n3, Q
                           => FF_8_8_port, QN => n_1210);
   FF_reg_8_7_inst : DFFR_X1 port map( D => FF_7_7_port, CK => CLK, RN => n3, Q
                           => FF_8_7_port, QN => n_1211);
   FF_reg_8_6_inst : DFFR_X1 port map( D => FF_7_6_port, CK => CLK, RN => n3, Q
                           => FF_8_6_port, QN => n_1212);
   FF_reg_8_5_inst : DFFR_X1 port map( D => FF_7_5_port, CK => CLK, RN => n2, Q
                           => FF_8_5_port, QN => n_1213);
   FF_reg_8_4_inst : DFFR_X1 port map( D => FF_7_4_port, CK => CLK, RN => n2, Q
                           => FF_8_4_port, QN => n_1214);
   FF_reg_8_3_inst : DFFR_X1 port map( D => FF_7_3_port, CK => CLK, RN => n2, Q
                           => FF_8_3_port, QN => n_1215);
   FF_reg_8_2_inst : DFFR_X1 port map( D => FF_7_2_port, CK => CLK, RN => n2, Q
                           => FF_8_2_port, QN => n_1216);
   FF_reg_8_1_inst : DFFR_X1 port map( D => FF_7_1_port, CK => CLK, RN => n2, Q
                           => FF_8_1_port, QN => n_1217);
   FF_reg_8_0_inst : DFFR_X1 port map( D => FF_7_0_port, CK => CLK, RN => n2, Q
                           => FF_8_0_port, QN => n_1218);
   FF_reg_9_8_inst : DFFR_X1 port map( D => FF_8_8_port, CK => CLK, RN => n2, Q
                           => FF_9_8_port, QN => n_1219);
   FF_reg_9_7_inst : DFFR_X1 port map( D => FF_8_7_port, CK => CLK, RN => n2, Q
                           => FF_9_7_port, QN => n_1220);
   FF_reg_9_6_inst : DFFR_X1 port map( D => FF_8_6_port, CK => CLK, RN => n2, Q
                           => FF_9_6_port, QN => n_1221);
   FF_reg_9_5_inst : DFFR_X1 port map( D => FF_8_5_port, CK => CLK, RN => n2, Q
                           => FF_9_5_port, QN => n_1222);
   FF_reg_9_4_inst : DFFR_X1 port map( D => FF_8_4_port, CK => CLK, RN => n2, Q
                           => FF_9_4_port, QN => n_1223);
   FF_reg_9_3_inst : DFFR_X1 port map( D => FF_8_3_port, CK => CLK, RN => n2, Q
                           => FF_9_3_port, QN => n_1224);
   FF_reg_9_2_inst : DFFR_X1 port map( D => FF_8_2_port, CK => CLK, RN => n1, Q
                           => FF_9_2_port, QN => n_1225);
   FF_reg_9_1_inst : DFFR_X1 port map( D => FF_8_1_port, CK => CLK, RN => n1, Q
                           => FF_9_1_port, QN => n_1226);
   FF_reg_9_0_inst : DFFR_X1 port map( D => FF_8_0_port, CK => CLK, RN => n1, Q
                           => FF_9_0_port, QN => n_1227);
   FF_Dout_reg_8_inst : DFFR_X1 port map( D => Adder_9_8_port, CK => CLK, RN =>
                           n1, Q => Dout(8), QN => n_1228);
   FF_Dout_reg_7_inst : DFFR_X1 port map( D => Adder_9_7_port, CK => CLK, RN =>
                           n1, Q => Dout(7), QN => n_1229);
   FF_Dout_reg_6_inst : DFFR_X1 port map( D => Adder_9_6_port, CK => CLK, RN =>
                           n1, Q => Dout(6), QN => n_1230);
   FF_Dout_reg_5_inst : DFFR_X1 port map( D => Adder_9_5_port, CK => CLK, RN =>
                           n1, Q => Dout(5), QN => n_1231);
   FF_Dout_reg_4_inst : DFFR_X1 port map( D => Adder_9_4_port, CK => CLK, RN =>
                           n1, Q => Dout(4), QN => n_1232);
   FF_Dout_reg_3_inst : DFFR_X1 port map( D => Adder_9_3_port, CK => CLK, RN =>
                           n1, Q => Dout(3), QN => n_1233);
   FF_Dout_reg_2_inst : DFFR_X1 port map( D => Adder_9_2_port, CK => CLK, RN =>
                           n1, Q => Dout(2), QN => n_1234);
   FF_Dout_reg_1_inst : DFFR_X1 port map( D => Adder_9_1_port, CK => CLK, RN =>
                           n1, Q => Dout(1), QN => n_1235);
   FF_Dout_reg_0_inst : DFFR_X1 port map( D => Adder_9_0_port, CK => CLK, RN =>
                           n1, Q => Dout(0), QN => n_1236);
   VOUT <= '0';
   mult_101 : Fir_01_DW_mult_tc_10 port map( a(8) => FF_Din_8_port, a(7) => 
                           FF_Din_7_port, a(6) => FF_Din_6_port, a(5) => 
                           FF_Din_5_port, a(4) => FF_Din_4_port, a(3) => 
                           FF_Din_3_port, a(2) => FF_Din_2_port, a(1) => 
                           FF_Din_1_port, a(0) => FF_Din_0_port, b(8) => b0(8),
                           b(7) => b0(7), b(6) => b0(6), b(5) => b0(5), b(4) =>
                           b0(4), b(3) => b0(3), b(2) => b0(2), b(1) => b0(1), 
                           b(0) => b0(0), product(17) => n_1237, product(16) =>
                           Mul_0_16_port, product(15) => Mul_0_15_port, 
                           product(14) => Mul_0_14_port, product(13) => 
                           Mul_0_13_port, product(12) => Mul_0_12_port, 
                           product(11) => Mul_0_11_port, product(10) => 
                           Mul_0_10_port, product(9) => Mul_0_9_port, 
                           product(8) => Mul_0_8_port, product(7) => n_1238, 
                           product(6) => n_1239, product(5) => n_1240, 
                           product(4) => n_1241, product(3) => n_1242, 
                           product(2) => n_1243, product(1) => n_1244, 
                           product(0) => n_1245);
   mult_102 : Fir_01_DW_mult_tc_9 port map( a(8) => FF_0_8_port, a(7) => 
                           FF_0_7_port, a(6) => FF_0_6_port, a(5) => 
                           FF_0_5_port, a(4) => FF_0_4_port, a(3) => 
                           FF_0_3_port, a(2) => FF_0_2_port, a(1) => 
                           FF_0_1_port, a(0) => FF_0_0_port, b(8) => b1(8), 
                           b(7) => b1(7), b(6) => b1(6), b(5) => b1(5), b(4) =>
                           b1(4), b(3) => b1(3), b(2) => b1(2), b(1) => b1(1), 
                           b(0) => b1(0), product(17) => n_1246, product(16) =>
                           Mul_1_16_port, product(15) => Mul_1_15_port, 
                           product(14) => Mul_1_14_port, product(13) => 
                           Mul_1_13_port, product(12) => Mul_1_12_port, 
                           product(11) => Mul_1_11_port, product(10) => 
                           Mul_1_10_port, product(9) => Mul_1_9_port, 
                           product(8) => Mul_1_8_port, product(7) => n_1247, 
                           product(6) => n_1248, product(5) => n_1249, 
                           product(4) => n_1250, product(3) => n_1251, 
                           product(2) => n_1252, product(1) => n_1253, 
                           product(0) => n_1254);
   mult_103 : Fir_01_DW_mult_tc_8 port map( a(8) => FF_1_8_port, a(7) => 
                           FF_1_7_port, a(6) => FF_1_6_port, a(5) => 
                           FF_1_5_port, a(4) => FF_1_4_port, a(3) => 
                           FF_1_3_port, a(2) => FF_1_2_port, a(1) => 
                           FF_1_1_port, a(0) => FF_1_0_port, b(8) => b2(8), 
                           b(7) => b2(7), b(6) => b2(6), b(5) => b2(5), b(4) =>
                           b2(4), b(3) => b2(3), b(2) => b2(2), b(1) => b2(1), 
                           b(0) => b2(0), product(17) => n_1255, product(16) =>
                           Mul_2_16_port, product(15) => Mul_2_15_port, 
                           product(14) => Mul_2_14_port, product(13) => 
                           Mul_2_13_port, product(12) => Mul_2_12_port, 
                           product(11) => Mul_2_11_port, product(10) => 
                           Mul_2_10_port, product(9) => Mul_2_9_port, 
                           product(8) => Mul_2_8_port, product(7) => n_1256, 
                           product(6) => n_1257, product(5) => n_1258, 
                           product(4) => n_1259, product(3) => n_1260, 
                           product(2) => n_1261, product(1) => n_1262, 
                           product(0) => n_1263);
   mult_104 : Fir_01_DW_mult_tc_7 port map( a(8) => FF_2_8_port, a(7) => 
                           FF_2_7_port, a(6) => FF_2_6_port, a(5) => 
                           FF_2_5_port, a(4) => FF_2_4_port, a(3) => 
                           FF_2_3_port, a(2) => FF_2_2_port, a(1) => 
                           FF_2_1_port, a(0) => FF_2_0_port, b(8) => b3(8), 
                           b(7) => b3(7), b(6) => b3(6), b(5) => b3(5), b(4) =>
                           b3(4), b(3) => b3(3), b(2) => b3(2), b(1) => b3(1), 
                           b(0) => b3(0), product(17) => n_1264, product(16) =>
                           Mul_3_16_port, product(15) => Mul_3_15_port, 
                           product(14) => Mul_3_14_port, product(13) => 
                           Mul_3_13_port, product(12) => Mul_3_12_port, 
                           product(11) => Mul_3_11_port, product(10) => 
                           Mul_3_10_port, product(9) => Mul_3_9_port, 
                           product(8) => Mul_3_8_port, product(7) => n_1265, 
                           product(6) => n_1266, product(5) => n_1267, 
                           product(4) => n_1268, product(3) => n_1269, 
                           product(2) => n_1270, product(1) => n_1271, 
                           product(0) => n_1272);
   mult_105 : Fir_01_DW_mult_tc_6 port map( a(8) => FF_3_8_port, a(7) => 
                           FF_3_7_port, a(6) => FF_3_6_port, a(5) => 
                           FF_3_5_port, a(4) => FF_3_4_port, a(3) => 
                           FF_3_3_port, a(2) => FF_3_2_port, a(1) => 
                           FF_3_1_port, a(0) => FF_3_0_port, b(8) => b4(8), 
                           b(7) => b4(7), b(6) => b4(6), b(5) => b4(5), b(4) =>
                           b4(4), b(3) => b4(3), b(2) => b4(2), b(1) => b4(1), 
                           b(0) => b4(0), product(17) => n_1273, product(16) =>
                           Mul_4_16_port, product(15) => Mul_4_15_port, 
                           product(14) => Mul_4_14_port, product(13) => 
                           Mul_4_13_port, product(12) => Mul_4_12_port, 
                           product(11) => Mul_4_11_port, product(10) => 
                           Mul_4_10_port, product(9) => Mul_4_9_port, 
                           product(8) => Mul_4_8_port, product(7) => n_1274, 
                           product(6) => n_1275, product(5) => n_1276, 
                           product(4) => n_1277, product(3) => n_1278, 
                           product(2) => n_1279, product(1) => n_1280, 
                           product(0) => n_1281);
   mult_106 : Fir_01_DW_mult_tc_5 port map( a(8) => FF_4_8_port, a(7) => 
                           FF_4_7_port, a(6) => FF_4_6_port, a(5) => 
                           FF_4_5_port, a(4) => FF_4_4_port, a(3) => 
                           FF_4_3_port, a(2) => FF_4_2_port, a(1) => 
                           FF_4_1_port, a(0) => FF_4_0_port, b(8) => b5(8), 
                           b(7) => b5(7), b(6) => b5(6), b(5) => b5(5), b(4) =>
                           b5(4), b(3) => b5(3), b(2) => b5(2), b(1) => b5(1), 
                           b(0) => b5(0), product(17) => n_1282, product(16) =>
                           Mul_5_16_port, product(15) => Mul_5_15_port, 
                           product(14) => Mul_5_14_port, product(13) => 
                           Mul_5_13_port, product(12) => Mul_5_12_port, 
                           product(11) => Mul_5_11_port, product(10) => 
                           Mul_5_10_port, product(9) => Mul_5_9_port, 
                           product(8) => Mul_5_8_port, product(7) => n_1283, 
                           product(6) => n_1284, product(5) => n_1285, 
                           product(4) => n_1286, product(3) => n_1287, 
                           product(2) => n_1288, product(1) => n_1289, 
                           product(0) => n_1290);
   mult_107 : Fir_01_DW_mult_tc_4 port map( a(8) => FF_5_8_port, a(7) => 
                           FF_5_7_port, a(6) => FF_5_6_port, a(5) => 
                           FF_5_5_port, a(4) => FF_5_4_port, a(3) => 
                           FF_5_3_port, a(2) => FF_5_2_port, a(1) => 
                           FF_5_1_port, a(0) => FF_5_0_port, b(8) => b6(8), 
                           b(7) => b6(7), b(6) => b6(6), b(5) => b6(5), b(4) =>
                           b6(4), b(3) => b6(3), b(2) => b6(2), b(1) => b6(1), 
                           b(0) => b6(0), product(17) => n_1291, product(16) =>
                           Mul_6_16_port, product(15) => Mul_6_15_port, 
                           product(14) => Mul_6_14_port, product(13) => 
                           Mul_6_13_port, product(12) => Mul_6_12_port, 
                           product(11) => Mul_6_11_port, product(10) => 
                           Mul_6_10_port, product(9) => Mul_6_9_port, 
                           product(8) => Mul_6_8_port, product(7) => n_1292, 
                           product(6) => n_1293, product(5) => n_1294, 
                           product(4) => n_1295, product(3) => n_1296, 
                           product(2) => n_1297, product(1) => n_1298, 
                           product(0) => n_1299);
   mult_108 : Fir_01_DW_mult_tc_3 port map( a(8) => FF_6_8_port, a(7) => 
                           FF_6_7_port, a(6) => FF_6_6_port, a(5) => 
                           FF_6_5_port, a(4) => FF_6_4_port, a(3) => 
                           FF_6_3_port, a(2) => FF_6_2_port, a(1) => 
                           FF_6_1_port, a(0) => FF_6_0_port, b(8) => b7(8), 
                           b(7) => b7(7), b(6) => b7(6), b(5) => b7(5), b(4) =>
                           b7(4), b(3) => b7(3), b(2) => b7(2), b(1) => b7(1), 
                           b(0) => b7(0), product(17) => n_1300, product(16) =>
                           Mul_7_16_port, product(15) => Mul_7_15_port, 
                           product(14) => Mul_7_14_port, product(13) => 
                           Mul_7_13_port, product(12) => Mul_7_12_port, 
                           product(11) => Mul_7_11_port, product(10) => 
                           Mul_7_10_port, product(9) => Mul_7_9_port, 
                           product(8) => Mul_7_8_port, product(7) => n_1301, 
                           product(6) => n_1302, product(5) => n_1303, 
                           product(4) => n_1304, product(3) => n_1305, 
                           product(2) => n_1306, product(1) => n_1307, 
                           product(0) => n_1308);
   mult_109 : Fir_01_DW_mult_tc_2 port map( a(8) => FF_7_8_port, a(7) => 
                           FF_7_7_port, a(6) => FF_7_6_port, a(5) => 
                           FF_7_5_port, a(4) => FF_7_4_port, a(3) => 
                           FF_7_3_port, a(2) => FF_7_2_port, a(1) => 
                           FF_7_1_port, a(0) => FF_7_0_port, b(8) => b8(8), 
                           b(7) => b8(7), b(6) => b8(6), b(5) => b8(5), b(4) =>
                           b8(4), b(3) => b8(3), b(2) => b8(2), b(1) => b8(1), 
                           b(0) => b8(0), product(17) => n_1309, product(16) =>
                           Mul_8_16_port, product(15) => Mul_8_15_port, 
                           product(14) => Mul_8_14_port, product(13) => 
                           Mul_8_13_port, product(12) => Mul_8_12_port, 
                           product(11) => Mul_8_11_port, product(10) => 
                           Mul_8_10_port, product(9) => Mul_8_9_port, 
                           product(8) => Mul_8_8_port, product(7) => n_1310, 
                           product(6) => n_1311, product(5) => n_1312, 
                           product(4) => n_1313, product(3) => n_1314, 
                           product(2) => n_1315, product(1) => n_1316, 
                           product(0) => n_1317);
   mult_110 : Fir_01_DW_mult_tc_1 port map( a(8) => FF_8_8_port, a(7) => 
                           FF_8_7_port, a(6) => FF_8_6_port, a(5) => 
                           FF_8_5_port, a(4) => FF_8_4_port, a(3) => 
                           FF_8_3_port, a(2) => FF_8_2_port, a(1) => 
                           FF_8_1_port, a(0) => FF_8_0_port, b(8) => b9(8), 
                           b(7) => b9(7), b(6) => b9(6), b(5) => b9(5), b(4) =>
                           b9(4), b(3) => b9(3), b(2) => b9(2), b(1) => b9(1), 
                           b(0) => b9(0), product(17) => n_1318, product(16) =>
                           Mul_9_16_port, product(15) => Mul_9_15_port, 
                           product(14) => Mul_9_14_port, product(13) => 
                           Mul_9_13_port, product(12) => Mul_9_12_port, 
                           product(11) => Mul_9_11_port, product(10) => 
                           Mul_9_10_port, product(9) => Mul_9_9_port, 
                           product(8) => Mul_9_8_port, product(7) => n_1319, 
                           product(6) => n_1320, product(5) => n_1321, 
                           product(4) => n_1322, product(3) => n_1323, 
                           product(2) => n_1324, product(1) => n_1325, 
                           product(0) => n_1326);
   mult_111 : Fir_01_DW_mult_tc_0 port map( a(8) => FF_9_8_port, a(7) => 
                           FF_9_7_port, a(6) => FF_9_6_port, a(5) => 
                           FF_9_5_port, a(4) => FF_9_4_port, a(3) => 
                           FF_9_3_port, a(2) => FF_9_2_port, a(1) => 
                           FF_9_1_port, a(0) => FF_9_0_port, b(8) => b10(8), 
                           b(7) => b10(7), b(6) => b10(6), b(5) => b10(5), b(4)
                           => b10(4), b(3) => b10(3), b(2) => b10(2), b(1) => 
                           b10(1), b(0) => b10(0), product(17) => n_1327, 
                           product(16) => Mul_10_16_port, product(15) => 
                           Mul_10_15_port, product(14) => Mul_10_14_port, 
                           product(13) => Mul_10_13_port, product(12) => 
                           Mul_10_12_port, product(11) => Mul_10_11_port, 
                           product(10) => Mul_10_10_port, product(9) => 
                           Mul_10_9_port, product(8) => Mul_10_8_port, 
                           product(7) => n_1328, product(6) => n_1329, 
                           product(5) => n_1330, product(4) => n_1331, 
                           product(3) => n_1332, product(2) => n_1333, 
                           product(1) => n_1334, product(0) => n_1335);
   add_8_root_add_0_root_add_135 : Fir_01_DW01_add_9 port map( A(8) => 
                           Mul_5_16_port, A(7) => Mul_5_15_port, A(6) => 
                           Mul_5_14_port, A(5) => Mul_5_13_port, A(4) => 
                           Mul_5_12_port, A(3) => Mul_5_11_port, A(2) => 
                           Mul_5_10_port, A(1) => Mul_5_9_port, A(0) => 
                           Mul_5_8_port, B(8) => Mul_7_16_port, B(7) => 
                           Mul_7_15_port, B(6) => Mul_7_14_port, B(5) => 
                           Mul_7_13_port, B(4) => Mul_7_12_port, B(3) => 
                           Mul_7_11_port, B(2) => Mul_7_10_port, B(1) => 
                           Mul_7_9_port, B(0) => Mul_7_8_port, CI => n13, 
                           SUM(8) => Adder_1_8_port, SUM(7) => Adder_1_7_port, 
                           SUM(6) => Adder_1_6_port, SUM(5) => Adder_1_5_port, 
                           SUM(4) => Adder_1_4_port, SUM(3) => Adder_1_3_port, 
                           SUM(2) => Adder_1_2_port, SUM(1) => Adder_1_1_port, 
                           SUM(0) => Adder_1_0_port, CO => n_1336);
   add_9_root_add_0_root_add_135 : Fir_01_DW01_add_8 port map( A(8) => 
                           Mul_3_16_port, A(7) => Mul_3_15_port, A(6) => 
                           Mul_3_14_port, A(5) => Mul_3_13_port, A(4) => 
                           Mul_3_12_port, A(3) => Mul_3_11_port, A(2) => 
                           Mul_3_10_port, A(1) => Mul_3_9_port, A(0) => 
                           Mul_3_8_port, B(8) => Mul_0_16_port, B(7) => 
                           Mul_0_15_port, B(6) => Mul_0_14_port, B(5) => 
                           Mul_0_13_port, B(4) => Mul_0_12_port, B(3) => 
                           Mul_0_11_port, B(2) => Mul_0_10_port, B(1) => 
                           Mul_0_9_port, B(0) => Mul_0_8_port, CI => n14, 
                           SUM(8) => Adder_2_8_port, SUM(7) => Adder_2_7_port, 
                           SUM(6) => Adder_2_6_port, SUM(5) => Adder_2_5_port, 
                           SUM(4) => Adder_2_4_port, SUM(3) => Adder_2_3_port, 
                           SUM(2) => Adder_2_2_port, SUM(1) => Adder_2_1_port, 
                           SUM(0) => Adder_2_0_port, CO => n_1337);
   add_3_root_add_0_root_add_135 : Fir_01_DW01_add_7 port map( A(8) => 
                           Adder_1_8_port, A(7) => Adder_1_7_port, A(6) => 
                           Adder_1_6_port, A(5) => Adder_1_5_port, A(4) => 
                           Adder_1_4_port, A(3) => Adder_1_3_port, A(2) => 
                           Adder_1_2_port, A(1) => Adder_1_1_port, A(0) => 
                           Adder_1_0_port, B(8) => Adder_2_8_port, B(7) => 
                           Adder_2_7_port, B(6) => Adder_2_6_port, B(5) => 
                           Adder_2_5_port, B(4) => Adder_2_4_port, B(3) => 
                           Adder_2_3_port, B(2) => Adder_2_2_port, B(1) => 
                           Adder_2_1_port, B(0) => Adder_2_0_port, CI => n15, 
                           SUM(8) => Adder_4_8_port, SUM(7) => Adder_4_7_port, 
                           SUM(6) => Adder_4_6_port, SUM(5) => Adder_4_5_port, 
                           SUM(4) => Adder_4_4_port, SUM(3) => Adder_4_3_port, 
                           SUM(2) => Adder_4_2_port, SUM(1) => Adder_4_1_port, 
                           SUM(0) => Adder_4_0_port, CO => n_1338);
   add_6_root_add_0_root_add_135 : Fir_01_DW01_add_6 port map( A(8) => 
                           Mul_2_16_port, A(7) => Mul_2_15_port, A(6) => 
                           Mul_2_14_port, A(5) => Mul_2_13_port, A(4) => 
                           Mul_2_12_port, A(3) => Mul_2_11_port, A(2) => 
                           Mul_2_10_port, A(1) => Mul_2_9_port, A(0) => 
                           Mul_2_8_port, B(8) => Mul_6_16_port, B(7) => 
                           Mul_6_15_port, B(6) => Mul_6_14_port, B(5) => 
                           Mul_6_13_port, B(4) => Mul_6_12_port, B(3) => 
                           Mul_6_11_port, B(2) => Mul_6_10_port, B(1) => 
                           Mul_6_9_port, B(0) => Mul_6_8_port, CI => n16, 
                           SUM(8) => Adder_0_8_port, SUM(7) => Adder_0_7_port, 
                           SUM(6) => Adder_0_6_port, SUM(5) => Adder_0_5_port, 
                           SUM(4) => Adder_0_4_port, SUM(3) => Adder_0_3_port, 
                           SUM(2) => Adder_0_2_port, SUM(1) => Adder_0_1_port, 
                           SUM(0) => Adder_0_0_port, CO => n_1339);
   add_7_root_add_0_root_add_135 : Fir_01_DW01_add_5 port map( A(8) => 
                           Mul_9_16_port, A(7) => Mul_9_15_port, A(6) => 
                           Mul_9_14_port, A(5) => Mul_9_13_port, A(4) => 
                           Mul_9_12_port, A(3) => Mul_9_11_port, A(2) => 
                           Mul_9_10_port, A(1) => Mul_9_9_port, A(0) => 
                           Mul_9_8_port, B(8) => Mul_4_16_port, B(7) => 
                           Mul_4_15_port, B(6) => Mul_4_14_port, B(5) => 
                           Mul_4_13_port, B(4) => Mul_4_12_port, B(3) => 
                           Mul_4_11_port, B(2) => Mul_4_10_port, B(1) => 
                           Mul_4_9_port, B(0) => Mul_4_8_port, CI => n17, 
                           SUM(8) => Adder_6_8_port, SUM(7) => Adder_6_7_port, 
                           SUM(6) => Adder_6_6_port, SUM(5) => Adder_6_5_port, 
                           SUM(4) => Adder_6_4_port, SUM(3) => Adder_6_3_port, 
                           SUM(2) => Adder_6_2_port, SUM(1) => Adder_6_1_port, 
                           SUM(0) => Adder_6_0_port, CO => n_1340);
   add_2_root_add_0_root_add_135 : Fir_01_DW01_add_4 port map( A(8) => 
                           Adder_0_8_port, A(7) => Adder_0_7_port, A(6) => 
                           Adder_0_6_port, A(5) => Adder_0_5_port, A(4) => 
                           Adder_0_4_port, A(3) => Adder_0_3_port, A(2) => 
                           Adder_0_2_port, A(1) => Adder_0_1_port, A(0) => 
                           Adder_0_0_port, B(8) => Adder_6_8_port, B(7) => 
                           Adder_6_7_port, B(6) => Adder_6_6_port, B(5) => 
                           Adder_6_5_port, B(4) => Adder_6_4_port, B(3) => 
                           Adder_6_3_port, B(2) => Adder_6_2_port, B(1) => 
                           Adder_6_1_port, B(0) => Adder_6_0_port, CI => n18, 
                           SUM(8) => Adder_3_8_port, SUM(7) => Adder_3_7_port, 
                           SUM(6) => Adder_3_6_port, SUM(5) => Adder_3_5_port, 
                           SUM(4) => Adder_3_4_port, SUM(3) => Adder_3_3_port, 
                           SUM(2) => Adder_3_2_port, SUM(1) => Adder_3_1_port, 
                           SUM(0) => Adder_3_0_port, CO => n_1341);
   add_5_root_add_0_root_add_135 : Fir_01_DW01_add_3 port map( A(8) => 
                           Mul_10_16_port, A(7) => Mul_10_15_port, A(6) => 
                           Mul_10_14_port, A(5) => Mul_10_13_port, A(4) => 
                           Mul_10_12_port, A(3) => Mul_10_11_port, A(2) => 
                           Mul_10_10_port, A(1) => Mul_10_9_port, A(0) => 
                           Mul_10_8_port, B(8) => Mul_1_16_port, B(7) => 
                           Mul_1_15_port, B(6) => Mul_1_14_port, B(5) => 
                           Mul_1_13_port, B(4) => Mul_1_12_port, B(3) => 
                           Mul_1_11_port, B(2) => Mul_1_10_port, B(1) => 
                           Mul_1_9_port, B(0) => Mul_1_8_port, CI => n19, 
                           SUM(8) => Adder_5_8_port, SUM(7) => Adder_5_7_port, 
                           SUM(6) => Adder_5_6_port, SUM(5) => Adder_5_5_port, 
                           SUM(4) => Adder_5_4_port, SUM(3) => Adder_5_3_port, 
                           SUM(2) => Adder_5_2_port, SUM(1) => Adder_5_1_port, 
                           SUM(0) => Adder_5_0_port, CO => n_1342);
   add_4_root_add_0_root_add_135 : Fir_01_DW01_add_2 port map( A(8) => 
                           Mul_8_16_port, A(7) => Mul_8_15_port, A(6) => 
                           Mul_8_14_port, A(5) => Mul_8_13_port, A(4) => 
                           Mul_8_12_port, A(3) => Mul_8_11_port, A(2) => 
                           Mul_8_10_port, A(1) => Mul_8_9_port, A(0) => 
                           Mul_8_8_port, B(8) => Adder_5_8_port, B(7) => 
                           Adder_5_7_port, B(6) => Adder_5_6_port, B(5) => 
                           Adder_5_5_port, B(4) => Adder_5_4_port, B(3) => 
                           Adder_5_3_port, B(2) => Adder_5_2_port, B(1) => 
                           Adder_5_1_port, B(0) => Adder_5_0_port, CI => n20, 
                           SUM(8) => Adder_8_8_port, SUM(7) => Adder_8_7_port, 
                           SUM(6) => Adder_8_6_port, SUM(5) => Adder_8_5_port, 
                           SUM(4) => Adder_8_4_port, SUM(3) => Adder_8_3_port, 
                           SUM(2) => Adder_8_2_port, SUM(1) => Adder_8_1_port, 
                           SUM(0) => Adder_8_0_port, CO => n_1343);
   add_1_root_add_0_root_add_135 : Fir_01_DW01_add_1 port map( A(8) => 
                           Adder_8_8_port, A(7) => Adder_8_7_port, A(6) => 
                           Adder_8_6_port, A(5) => Adder_8_5_port, A(4) => 
                           Adder_8_4_port, A(3) => Adder_8_3_port, A(2) => 
                           Adder_8_2_port, A(1) => Adder_8_1_port, A(0) => 
                           Adder_8_0_port, B(8) => Adder_3_8_port, B(7) => 
                           Adder_3_7_port, B(6) => Adder_3_6_port, B(5) => 
                           Adder_3_5_port, B(4) => Adder_3_4_port, B(3) => 
                           Adder_3_3_port, B(2) => Adder_3_2_port, B(1) => 
                           Adder_3_1_port, B(0) => Adder_3_0_port, CI => n21, 
                           SUM(8) => Adder_7_8_port, SUM(7) => Adder_7_7_port, 
                           SUM(6) => Adder_7_6_port, SUM(5) => Adder_7_5_port, 
                           SUM(4) => Adder_7_4_port, SUM(3) => Adder_7_3_port, 
                           SUM(2) => Adder_7_2_port, SUM(1) => Adder_7_1_port, 
                           SUM(0) => Adder_7_0_port, CO => n_1344);
   add_0_root_add_0_root_add_135 : Fir_01_DW01_add_0 port map( A(8) => 
                           Adder_4_8_port, A(7) => Adder_4_7_port, A(6) => 
                           Adder_4_6_port, A(5) => Adder_4_5_port, A(4) => 
                           Adder_4_4_port, A(3) => Adder_4_3_port, A(2) => 
                           Adder_4_2_port, A(1) => Adder_4_1_port, A(0) => 
                           Adder_4_0_port, B(8) => Adder_7_8_port, B(7) => 
                           Adder_7_7_port, B(6) => Adder_7_6_port, B(5) => 
                           Adder_7_5_port, B(4) => Adder_7_4_port, B(3) => 
                           Adder_7_3_port, B(2) => Adder_7_2_port, B(1) => 
                           Adder_7_1_port, B(0) => Adder_7_0_port, CI => n22, 
                           SUM(8) => Adder_9_8_port, SUM(7) => Adder_9_7_port, 
                           SUM(6) => Adder_9_6_port, SUM(5) => Adder_9_5_port, 
                           SUM(4) => Adder_9_4_port, SUM(3) => Adder_9_3_port, 
                           SUM(2) => Adder_9_2_port, SUM(1) => Adder_9_1_port, 
                           SUM(0) => Adder_9_0_port, CO => n_1345);
   U5 : BUF_X1 port map( A => RST_n, Z => n12);
   U6 : BUF_X1 port map( A => RST_n, Z => n11);
   U7 : BUF_X1 port map( A => RST_n, Z => n10);
   U8 : BUF_X1 port map( A => n12, Z => n1);
   U9 : BUF_X1 port map( A => n12, Z => n2);
   U10 : BUF_X1 port map( A => n12, Z => n3);
   U11 : BUF_X1 port map( A => n11, Z => n4);
   U12 : BUF_X1 port map( A => n11, Z => n5);
   U13 : BUF_X1 port map( A => n11, Z => n6);
   U14 : BUF_X1 port map( A => n10, Z => n7);
   U15 : BUF_X1 port map( A => n10, Z => n8);
   U16 : BUF_X1 port map( A => n10, Z => n9);
   n13 <= '0';
   n14 <= '0';
   n15 <= '0';
   n16 <= '0';
   n17 <= '0';
   n18 <= '0';
   n19 <= '0';
   n20 <= '0';
   n21 <= '0';
   n22 <= '0';

end SYN_Behavioral;

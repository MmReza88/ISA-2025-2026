
analyze -library WORK -format vhdl {

  ../src/clk_gen.vhd
  ../src/data_maker_new.vhd
  ../src/data_sink.vhd
  ../src/Fir_01.vhd
  
}


elaborate Fir_01 -architecture Behavioral -library WORK 

compile -exact_map
write -hierarchy -format ddc -output fir01.ddc
write -hierarchy -format vhdl -output fir01.vhdl
report_timing > fir01.txt
report_power > fir01.txt
report_area > fir01.txt







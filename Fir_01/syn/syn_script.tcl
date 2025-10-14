
analyze -library WORK -format vhdl {

  ../src/clk_gen.vhd
  ../src/data_maker_new.vhd
  ../src/data_sink.vhd
  ../src/Fir_01.vhd
  
}


elaborate Fir_01 -architecture Behavioral -library WORK 

create_clock -name my_clk -period 4 [get_ports CLK]
set_max_delay 4 -from[all_inputs] -to [all_outputs]

set_dont_touch_network my_clk
set_clock_uncertainty 0.07 [get_clocks my_clk]
set_input_delay 0.5 -max -clock my_clk [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock my_clk [all_outputs]

set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]

compile -exact_map
write -hierarchy -format ddc -output ../netlist/fir01.ddc
write -hierarchy -format vhdl -output ../netlist/fir01.vhdl
report_timing > ../netlist/timing_4ns_fir01.txt
report_power > ../netlist/power_4ns_fir01.txt
report_area > ../netlist/area_4ns_fir01.txt


ungroup -all -flatten
change_names -hierarchy -rules verilog
write_sdf ../netlist//myfir_4.sdf
write -f verilog -hierarchy -output ../netlist//myfir_4.v
write_sdc ../netlist/myfir_4.sdc









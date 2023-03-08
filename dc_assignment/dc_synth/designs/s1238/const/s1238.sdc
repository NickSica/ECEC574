###################################################################

# Created by write_sdc on Mon Mar  6 15:57:10 2023

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
set_load -pin_load 0.3 [get_ports G45]
set_load -pin_load 0.3 [get_ports G530]
set_load -pin_load 0.3 [get_ports G532]
set_load -pin_load 0.3 [get_ports G535]
set_load -pin_load 0.3 [get_ports G537]
set_load -pin_load 0.3 [get_ports G539]
set_load -pin_load 0.3 [get_ports G542]
set_load -pin_load 0.3 [get_ports G546]
set_load -pin_load 0.3 [get_ports G547]
set_load -pin_load 0.3 [get_ports G548]
set_load -pin_load 0.3 [get_ports G549]
set_load -pin_load 0.3 [get_ports G550]
set_load -pin_load 0.3 [get_ports G551]
set_load -pin_load 0.3 [get_ports G552]
create_clock [get_ports CK]  -name ideal_clock1  -period 10  -waveform {0 5}
set_clock_uncertainty 0.05  [get_clocks ideal_clock1]
set_clock_transition -max -rise 0.1 [get_clocks ideal_clock1]
set_clock_transition -max -fall 0.1 [get_clocks ideal_clock1]
set_clock_transition -min -rise 0.1 [get_clocks ideal_clock1]
set_clock_transition -min -fall 0.1 [get_clocks ideal_clock1]
set_input_delay -clock ideal_clock1  2  [get_ports GND]
set_input_delay -clock ideal_clock1  2  [get_ports VDD]
set_input_delay -clock ideal_clock1  2  [get_ports G0]
set_input_delay -clock ideal_clock1  2  [get_ports G1]
set_input_delay -clock ideal_clock1  2  [get_ports G10]
set_input_delay -clock ideal_clock1  2  [get_ports G11]
set_input_delay -clock ideal_clock1  2  [get_ports G12]
set_input_delay -clock ideal_clock1  2  [get_ports G13]
set_input_delay -clock ideal_clock1  2  [get_ports G2]
set_input_delay -clock ideal_clock1  2  [get_ports G3]
set_input_delay -clock ideal_clock1  2  [get_ports G4]
set_input_delay -clock ideal_clock1  2  [get_ports G5]
set_input_delay -clock ideal_clock1  2  [get_ports G6]
set_input_delay -clock ideal_clock1  2  [get_ports G7]
set_input_delay -clock ideal_clock1  2  [get_ports G8]
set_input_delay -clock ideal_clock1  2  [get_ports G9]
set_output_delay -clock ideal_clock1  2  [get_ports G45]
set_output_delay -clock ideal_clock1  2  [get_ports G530]
set_output_delay -clock ideal_clock1  2  [get_ports G532]
set_output_delay -clock ideal_clock1  2  [get_ports G535]
set_output_delay -clock ideal_clock1  2  [get_ports G537]
set_output_delay -clock ideal_clock1  2  [get_ports G539]
set_output_delay -clock ideal_clock1  2  [get_ports G542]
set_output_delay -clock ideal_clock1  2  [get_ports G546]
set_output_delay -clock ideal_clock1  2  [get_ports G547]
set_output_delay -clock ideal_clock1  2  [get_ports G548]
set_output_delay -clock ideal_clock1  2  [get_ports G549]
set_output_delay -clock ideal_clock1  2  [get_ports G550]
set_output_delay -clock ideal_clock1  2  [get_ports G551]
set_output_delay -clock ideal_clock1  2  [get_ports G552]
set_clock_latency 0.4  -clock [get_clocks ideal_clock1]  [get_ports CK]

create_clock -period 2.5 clock_50
set_input_delay 0.1 -clock clock_50 [get_ports {*}]
set_output_delay 0.1 -clock clock_50 [get_ports {*}]
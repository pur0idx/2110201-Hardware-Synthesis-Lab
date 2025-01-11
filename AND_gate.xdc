## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Switches
set_property PACKAGE_PIN V17 [get_ports A]
	set_property IOSTANDARD LVCMOS33 [get_ports A]
set_property PACKAGE_PIN V16 [get_ports B]
	set_property IOSTANDARD LVCMOS33 [get_ports B]

## LEDs
set_property PACKAGE_PIN U16 [get_ports out]
	set_property IOSTANDARD LVCMOS33 [get_ports out]

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
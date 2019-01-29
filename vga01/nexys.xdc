## FPGA VGA Graphics Part 1: Nexys Video Board Constraints
## Learn more at https://timetoexplore.net/blog/arty-fpga-vga-verilog-01

## Clock
set_property -dict {PACKAGE_PIN R4  IOSTANDARD LVCMOS33} [get_ports {CLK}];
create_clock -add -name sys_clk_pin -period 10.00 \
	-waveform {0 5} [get_ports {CLK}];

## Reset Button (active low)
set_property -dict {PACKAGE_PIN G4  IOSTANDARD LVCMOS15} [get_ports {RST_BTN}];

## VGA Pmod Header JB
set_property -dict {PACKAGE_PIN V9  IOSTANDARD LVCMOS33} [get_ports {VGA_R[0]}];
set_property -dict {PACKAGE_PIN V8  IOSTANDARD LVCMOS33} [get_ports {VGA_R[1]}];
set_property -dict {PACKAGE_PIN V7  IOSTANDARD LVCMOS33} [get_ports {VGA_R[2]}];
set_property -dict {PACKAGE_PIN W7  IOSTANDARD LVCMOS33} [get_ports {VGA_R[3]}];
set_property -dict {PACKAGE_PIN W9  IOSTANDARD LVCMOS33} [get_ports {VGA_B[0]}];
set_property -dict {PACKAGE_PIN Y9  IOSTANDARD LVCMOS33} [get_ports {VGA_B[1]}];
set_property -dict {PACKAGE_PIN Y8  IOSTANDARD LVCMOS33} [get_ports {VGA_B[2]}];
set_property -dict {PACKAGE_PIN Y7  IOSTANDARD LVCMOS33} [get_ports {VGA_B[3]}];

## VGA Pmod Header JC
set_property -dict {PACKAGE_PIN Y6  IOSTANDARD LVCMOS33} [get_ports {VGA_G[0]}];
set_property -dict {PACKAGE_PIN AA6 IOSTANDARD LVCMOS33} [get_ports {VGA_G[1]}];
set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS33} [get_ports {VGA_G[2]}];
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS33} [get_ports {VGA_G[3]}];
set_property -dict {PACKAGE_PIN R6  IOSTANDARD LVCMOS33} [get_ports {VGA_HS_O}];
set_property -dict {PACKAGE_PIN T6  IOSTANDARD LVCMOS33} [get_ports {VGA_VS_O}];

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

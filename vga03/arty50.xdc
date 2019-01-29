## FPGA VGA Graphics Part 1: Arty S7-50T Board Constraints
## Learn more at https://timetoexplore.net/blog/arty-fpga-vga-verilog-03

## Clock
set_property -dict {PACKAGE_PIN R2  IOSTANDARD LVCMOS33} [get_ports {CLK}];
create_clock -add -name sys_clk_pin -period 10.00 \
    -waveform {0 5} [get_ports {CLK}];

## Reset Button (active low)
set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS33} [get_ports {RST_BTN}];

## Slide Switches
set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports {sw[0]}];
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports {sw[1]}];
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports {sw[2]}];
set_property -dict {PACKAGE_PIN M5  IOSTANDARD SSTL135 } [get_ports {sw[3]}];

## VGA Pmod Header JB
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports {VGA_R[0]}];
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {VGA_R[1]}];
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {VGA_R[2]}];
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {VGA_R[3]}];
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {VGA_B[0]}];
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports {VGA_B[1]}];
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {VGA_B[2]}];
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports {VGA_B[3]}];

## VGA Pmod Header JC
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {VGA_G[0]}];
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {VGA_G[1]}];
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {VGA_G[2]}];
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {VGA_G[3]}];
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {VGA_HS_O}];
set_property -dict {PACKAGE_PIN P13 IOSTANDARD LVCMOS33} [get_ports {VGA_VS_O}];

## FPGA Configuration I/O Options
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

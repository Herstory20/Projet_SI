# Cheat sheet :
# Switches:
# R2, T1, U1, W2, R3, T2, T3, V2, W13, W14, V15, W15, W17, W16, V16, V17
# Buttons:
# T18, W19, U18, T17, U17
# LEDs:
# L1, P1, N3, P3, U3, W3, V3, V13, V14, U14, U15, W18, V19, U19, E19, U16
#Horloge sur un bouton
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports CLK]
#Horloge avec un oscillateur
#set_property -dist { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports { NOM_HORLOGE } ]
#create_clock -add -name sysclk_pin -period 10.00 -waveform { 0 5 } [get_ports { NOM_HORLOGE } ]
# Signal binaire
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports RST]


# Signal vectoriel
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {Qa[0]}]
set_property -dict {PACKAGE_PIN V3 IOSTANDARD LVCMOS33} [get_ports {Qa[1]}]
set_property -dict {PACKAGE_PIN W3 IOSTANDARD LVCMOS33} [get_ports {Qa[2]}]
set_property -dict {PACKAGE_PIN U3 IOSTANDARD LVCMOS33} [get_ports {Qa[3]}]
set_property -dict {PACKAGE_PIN P3 IOSTANDARD LVCMOS33} [get_ports {Qa[4]}]
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS33} [get_ports {Qa[5]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports {Qa[6]}]
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33} [get_ports {Qa[7]}]

set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {Qb[0]}]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {Qb[1]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {Qb[2]}]
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {Qb[3]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {Qb[4]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {Qb[5]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {Qb[6]}]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {Qb[7]}]
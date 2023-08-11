# XDC constraints for the XEM8320
# part: xcau25p-ffvb676-2-e

# General configuration
set_property CFGBVS GND                                      [current_design]
set_property CONFIG_VOLTAGE 1.8                              [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true                 [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup               [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 31.9                [current_design]
set_property BITSTREAM.CONFIG.BPI_PAGE_SIZE 8                [current_design]
set_property BITSTREAM.CONFIG.BPI_1ST_READ_CYCLE 4           [current_design]
set_property CONFIG_MODE BPI16                               [current_design]
set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN Enable        [current_design]

# 10 MHz TXCO
#set_property -dict {LOC D14  IOSTANDARD LVCMOS33} [get_ports clk_10mhz]
#create_clock -period 100 -name clk_100mhz [get_ports clk_10mhz]

# LEDs
# -- Bank 66 and 67 -- SFP and SMA LEDs (VIO1 1v8)
set_property -dict {LOC G19 IOSTANDARD LVCMOS18} [get_ports {sfp_1_led[0]}] ;# LED 1, Bank 67, VIO1, (SYZYGY mainly port C, but also port B)
set_property -dict {LOC B16 IOSTANDARD LVCMOS18} [get_ports {sfp_1_led[1]}] ;# LED 2, Bank 67, VIO1, (SYZYGY mainly port C, but also port B)
set_property -dict {LOC F22 IOSTANDARD LVCMOS18} [get_ports {sfp_2_led[0]}] ;# LED 3, Bank 66, VIO1, (SYZYGY mainly port A, but also port B)
set_property -dict {LOC E22 IOSTANDARD LVCMOS18} [get_ports {sfp_2_led[1]}] ;# LED 4, Bank 67, VIO1, (SYZYGY mainly port C, but also port B)
set_false_path -to [get_ports {sfp_1_led[*] sfp_2_led[*]}]
set_output_delay 0 [get_ports {sfp_1_led[*] sfp_2_led[*]}]

# GPIO
#set_property -dict {LOC F9   IOSTANDARD LVCMOS18} [get_ports gpio[0]]
#set_property -dict {LOC F10  IOSTANDARD LVCMOS18} [get_ports gpio[1]]
#set_property -dict {LOC G9   IOSTANDARD LVCMOS18} [get_ports gpio[2]]
#set_property -dict {LOC G10  IOSTANDARD LVCMOS18} [get_ports gpio[3]]

# SMA
#set_property -dict {LOC A14  IOSTANDARD LVCMOS33} [get_ports sma_in]
#set_property -dict {LOC A12  IOSTANDARD LVCMOS33 SLEW FAST DRIVE 12} [get_ports sma_out]
#set_property -dict {LOC A13  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports sma_out_en]
#set_property -dict {LOC B12  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports sma_term_en]

#set_false_path -to [get_ports {sma_out sma_term sma_term_en}]
#set_output_delay 0 [get_ports {sma_out sma_term sma_term_en}]
#set_false_path -from [get_ports {sma_in}]
#set_input_delay 0 [get_ports {sma_in}]

# Config
#set_property -dict {LOC C14  IOSTANDARD LVCMOS33} [get_ports ddr_npres]

# SFP28 Interfaces
#set_property -dict {LOC D2  } [get_ports sfp_1_rx_p] ;# MGTYRXP0_227 GTYE4_CHANNEL_X0Y12 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC D1  } [get_ports sfp_1_rx_n] ;# MGTYRXN0_227 GTYE4_CHANNEL_X0Y12 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC A4  } [get_ports sfp_2_rx_p] ;# MGTYRXP3_227 GTYE4_CHANNEL_X0Y15 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC A3  } [get_ports sfp_2_rx_n] ;# MGTYRXN3_227 GTYE4_CHANNEL_X0Y15 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC F7  } [get_ports sfp_1_tx_p] ;# MGTYTXP0_227 GTYE4_CHANNEL_X0Y12 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC F6  } [get_ports sfp_1_tx_n] ;# MGTYTXN0_227 GTYE4_CHANNEL_X0Y12 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC B7  } [get_ports sfp_2_tx_p] ;# MGTYTXP3_227 GTYE4_CHANNEL_X0Y15 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC B6  } [get_ports sfp_2_tx_n] ;# MGTYTXN3_227 GTYE4_CHANNEL_X0Y15 / GTYE4_COMMON_X0Y3
#set_property -dict {LOC K7  } [get_ports sfp_mgt_refclk_p] ;# MGTREFCLK0P_227 from X2
#set_property -dict {LOC K6  } [get_ports sfp_mgt_refclk_n] ;# MGTREFCLK0N_227 from X2
#set_property -dict {LOC AC17 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports sfp_1_tx_disable]
#set_property -dict {LOC AA17 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12} [get_ports sfp_2_tx_disable]
#set_property -dict {LOC F12  IOSTANDARD LVCMOS33 PULLUP true} [get_ports sfp_1_npres]
#set_property -dict {LOC F14  IOSTANDARD LVCMOS33 PULLUP true} [get_ports sfp_2_npres]
#set_property -dict {LOC AC16 IOSTANDARD LVCMOS18 PULLUP true} [get_ports sfp_1_los]
#set_property -dict {LOC Y17  IOSTANDARD LVCMOS18 PULLUP true} [get_ports sfp_2_los]
#set_property -dict {LOC G14  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports sfp_1_rs]
#set_property -dict {LOC H14  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports sfp_2_rs]
#set_property -dict {LOC A10  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12 PULLUP true} [get_ports sfp_i2c_scl]
#set_property -dict {LOC C11  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12 PULLUP true} [get_ports sfp_1_i2c_sda]
#set_property -dict {LOC B11  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12 PULLUP true} [get_ports sfp_2_i2c_sda]

# 161.1328125 MHz MGT reference clock
#create_clock -period 6.206 -name sfp_mgt_refclk [get_ports sfp_mgt_refclk_p]

#set_false_path -to [get_ports {sfp_1_tx_disable sfp_2_tx_disable sfp_1_rs sfp_2_rs}]
#set_output_delay 0 [get_ports {sfp_1_tx_disable sfp_2_tx_disable sfp_1_rs sfp_2_rs}]
#set_false_path -from [get_ports {sfp_1_npres sfp_2_npres sfp_1_los sfp_2_los}]
#set_input_delay 0 [get_ports {sfp_1_npres sfp_2_npres sfp_1_los sfp_2_los}]

#set_false_path -to [get_ports {sfp_1_i2c_sda sfp_2_i2c_sda sfp_i2c_scl}]
#set_output_delay 0 [get_ports {sfp_1_i2c_sda sfp_2_i2c_sda sfp_i2c_scl}]
#set_false_path -from [get_ports {sfp_1_i2c_sda sfp_2_i2c_sda sfp_i2c_scl}]
#set_input_delay 0 [get_ports {sfp_1_i2c_sda sfp_2_i2c_sda sfp_i2c_scl}]

# I2C interface
#set_property -dict {LOC B9 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12 PULLUP true} [get_ports eeprom_i2c_scl]
#set_property -dict {LOC A9 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12 PULLUP true} [get_ports eeprom_i2c_sda]

#set_false_path -to [get_ports {eeprom_i2c_sda eeprom_i2c_scl}]
#set_output_delay 0 [get_ports {eeprom_i2c_sda eeprom_i2c_scl}]
#set_false_path -from [get_ports {eeprom_i2c_sda eeprom_i2c_scl}]
#set_input_delay 0 [get_ports {eeprom_i2c_sda eeprom_i2c_scl}]

# SZG-PCIEX4 x4 PCIe card on Port E (Bank 224)
# PCIe Lane 0
set_property -dict {LOC AF2} [get_ports {pcie_rx_p[0]}] ;# SZG_PORTE_RX0P (MGTYRXP0_224 GTYE4_CHANNEL_X0Y7 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AF1} [get_ports {pcie_rx_n[0]}] ;# SZG_PORTE_RX0N (MGTYRXN0_224 GTYE4_CHANNEL_X0Y7 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AF7} [get_ports {pcie_tx_p[0]}] ;# SZG_PORTE_TX0P (MGTYTXP0_224 GTYE4_CHANNEL_X0Y7 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AF6} [get_ports {pcie_tx_n[0]}] ;# SZG_PORTE_TX0N (MGTYTXN0_224 GTYE4_CHANNEL_X0Y7 / GTYE4_COMMON_X0Y1)
# PCIe Lane 1
set_property -dict {LOC AE4} [get_ports {pcie_rx_p[1]}] ;# SZG_PORTE_RX1P (MGTYRXP1_224 GTYE4_CHANNEL_X0Y6 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AE3} [get_ports {pcie_rx_n[1]}] ;# SZG_PORTE_RX1N (MGTYRXN1_224 GTYE4_CHANNEL_X0Y6 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AE9} [get_ports {pcie_tx_p[1]}] ;# SZG_PORTE_TX1P (MGTYTXP1_224 GTYE4_CHANNEL_X0Y6 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AE8} [get_ports {pcie_tx_n[1]}] ;# SZG_PORTE_TX1N (MGTYTXN1_224 GTYE4_CHANNEL_X0Y6 / GTYE4_COMMON_X0Y1)
# PCIe Lane 2
set_property -dict {LOC AD2} [get_ports {pcie_rx_p[2]}] ;# SZG_PORTE_RX2P (MGTYRXP2_224 GTYE4_CHANNEL_X0Y5 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AD1} [get_ports {pcie_rx_n[2]}] ;# SZG_PORTE_RX2N (MGTYRXN2_224 GTYE4_CHANNEL_X0Y5 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AD7} [get_ports {pcie_tx_p[2]}] ;# SZG_PORTE_TX2P (MGTYTXP2_224 GTYE4_CHANNEL_X0Y5 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AD6} [get_ports {pcie_tx_n[2]}] ;# SZG_PORTE_TX2N (MGTYTXN2_224 GTYE4_CHANNEL_X0Y5 / GTYE4_COMMON_X0Y1)
# PCIe Lane 3
set_property -dict {LOC AB2} [get_ports {pcie_rx_p[3]}] ;# SZG_PORTE_RX3P (MGTYRXP3_224 GTYE4_CHANNEL_X0Y4 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AB1} [get_ports {pcie_rx_n[3]}] ;# SZG_PORTE_RX3N (MGTYRXN3_224 GTYE4_CHANNEL_X0Y4 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AC5} [get_ports {pcie_tx_p[3]}] ;# SZG_PORTE_TX3P (MGTYTXP3_224 GTYE4_CHANNEL_X0Y4 / GTYE4_COMMON_X0Y1)
set_property -dict {LOC AC4} [get_ports {pcie_tx_n[3]}] ;# SZG_PORTE_TX3N (MGTYTXN3_224 GTYE4_CHANNEL_X0Y4 / GTYE4_COMMON_X0Y1)
# PCIe 100MHz reference clock
set_property -dict {LOC AB7} [get_ports pcie_refclk_p] ;# SZG_PORTE_REFCLK0P (MGTREFCLK0P_224)
set_property -dict {LOC AB6} [get_ports pcie_refclk_n] ;# SZG_PORTE_REFCLK0N (MGTREFCLK0N_224)
#
# Bank 86 (VIO3 1v8)
set_property -dict {LOC J10 IOSTANDARD LVCMOS18 PULLUP true} [get_ports pcie_reset_n]
set_false_path -from [get_ports {pcie_reset_n}]
set_input_delay 0 [get_ports {pcie_reset_n}]

# 100 MHz MGT reference clock
create_clock -period 10 -name pcie_mgt_refclk [get_ports pcie_refclk_p]

# BPI flash
#set_property -dict {LOC AF20 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[0]}]
#set_property -dict {LOC AE18 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[1]}]
#set_property -dict {LOC AF19 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[2]}]
#set_property -dict {LOC AF17 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[3]}]
#set_property -dict {LOC AB19 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[4]}]
#set_property -dict {LOC AD19 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[5]}]
#set_property -dict {LOC AB17 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[6]}]
#set_property -dict {LOC AE17 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[7]}]
#set_property -dict {LOC AD16 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[8]}]
#set_property -dict {LOC AE16 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[9]}]
#set_property -dict {LOC AD18 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[10]}]
#set_property -dict {LOC AC21 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[11]}]
#set_property -dict {LOC AE22 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[12]}]
#set_property -dict {LOC AF22 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[13]}]
#set_property -dict {LOC AF25 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[14]}]
#set_property -dict {LOC AF24 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_dq[15]}]
#set_property -dict {LOC AE20 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[0]}]
#set_property -dict {LOC AE26 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[1]}]
#set_property -dict {LOC AD24 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[2]}]
#set_property -dict {LOC AC23 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[3]}]
#set_property -dict {LOC AE23 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[4]}]
#set_property -dict {LOC AD20 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[5]}]
#set_property -dict {LOC AC24 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[6]}]
#set_property -dict {LOC AC22 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[7]}]
#set_property -dict {LOC AD23 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[8]}]
#set_property -dict {LOC AD21 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[9]}]
#set_property -dict {LOC AB22 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[10]}]
#set_property -dict {LOC AA22 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[11]}]
#set_property -dict {LOC AE25 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[12]}]
#set_property -dict {LOC AD26 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[13]}]
#set_property -dict {LOC AB25 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[14]}]
#set_property -dict {LOC AB26 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[15]}]
#set_property -dict {LOC AD25 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[16]}]
#set_property -dict {LOC AC26 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[17]}]
#set_property -dict {LOC AB21 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[18]}]
#set_property -dict {LOC AB24 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[19]}]
#set_property -dict {LOC Y18  IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[20]}]
#set_property -dict {LOC AA20 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[21]}]
#set_property -dict {LOC AC19 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_addr[22]}]
#set_property -dict {LOC Y20  IOSTANDARD LVCMOS18 PULLUP true} [get_ports {flash_region}]
#set_property -dict {LOC AF18 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_ce_n}]
#set_property -dict {LOC Y21  IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_oe_n}]
#set_property -dict {LOC AB20 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_we_n}]
#set_property -dict {LOC AF23 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {flash_adv_n}]

#set_false_path -to [get_ports {flash_dq[*] flash_addr[*] flash_region flash_ce_n flash_oe_n flash_we_n flash_adv_n}]
#set_output_delay 0 [get_ports {flash_dq[*] flash_addr[*] flash_region flash_ce_n flash_oe_n flash_we_n flash_adv_n}]
#set_false_path -from [get_ports {flash_dq[*]}]
#set_input_delay 0 [get_ports {flash_dq[*]}]

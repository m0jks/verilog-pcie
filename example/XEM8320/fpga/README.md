# Verilog PCIe XEM8320 + SYZGYG PCIe x4 card

## Introduction

This example design targets the Opal kelly XEM8320 + SYZGYG PCIe x4 card

The design implements the PCIe AXI lite master module, the PCIe AXI master module, and the PCIe DMA module.  A very simple Linux driver is included to test the FPGA design.

*  FPGA: xcau25p-ffvb676-2-e

## How to build

Run `make` to build.  Ensure that the Xilinx Vivado components are in PATH.

Run `make` to build the driver.  Ensure the headers for the running kernel are installed, otherwise the driver cannot be compiled.

## How to test

Run `make program` to program the XEM8320 with Vivado.  Then load the driver with `insmod example.ko`.  Check dmesg for the output.

////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 11.5
//  \   \         Application : xaw2verilog
//  /   /         Filename : dcm3.v
// /___/   /\     Timestamp : 06/24/2010 00:56:37
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: xaw2verilog -intstyle D:/usr/kk/PROJECT/PS2NetWorkAdaptor/NADP/NADP05_5/chip/ipcore_dir/dcm3.xaw -st dcm3.v
//Design Name: dcm3
//Device: xc3s50a-4tq144
//
// Module dcm3
// Generated by Xilinx Architecture Wizard
// Written for synthesis tool: XST
// Period Jitter (unit interval) for block DCM_SP_INST = 0.10 UI
// Period Jitter (Peak-to-Peak) for block DCM_SP_INST = 0.71 ns
`timescale 1ns / 1ps

module dcm3(CLKIN_IN, 
            RST_IN, 
            CLKFX_OUT, 
            CLKIN_IBUFG_OUT, 
            CLK0_OUT, 
            LOCKED_OUT);

    input CLKIN_IN;
    input RST_IN;
   output CLKFX_OUT;
   output CLKIN_IBUFG_OUT;
   output CLK0_OUT;
   output LOCKED_OUT;
   
   wire CLKFB_IN;
   wire CLKFX_BUF;
   wire CLKIN_IBUFG;
   wire CLK0_BUF;
   wire GND_BIT;
   
   assign GND_BIT = 0;
   assign CLKIN_IBUFG_OUT = CLKIN_IBUFG;
   assign CLK0_OUT = CLKFB_IN;
   BUFG CLKFX_BUFG_INST (.I(CLKFX_BUF), 
                         .O(CLKFX_OUT));
   IBUFG CLKIN_IBUFG_INST (.I(CLKIN_IN), 
                           .O(CLKIN_IBUFG));
   BUFG CLK0_BUFG_INST (.I(CLK0_BUF), 
                        .O(CLKFB_IN));
   DCM_SP DCM_SP_INST (.CLKFB(CLKFB_IN), 
                       .CLKIN(CLKIN_IBUFG), 
                       .DSSEN(GND_BIT), 
                       .PSCLK(GND_BIT), 
                       .PSEN(GND_BIT), 
                       .PSINCDEC(GND_BIT), 
                       .RST(RST_IN), 
                       .CLKDV(), 
                       .CLKFX(CLKFX_BUF), 
                       .CLKFX180(), 
                       .CLK0(CLK0_BUF), 
                       .CLK2X(), 
                       .CLK2X180(), 
                       .CLK90(), 
                       .CLK180(), 
                       .CLK270(), 
                       .LOCKED(LOCKED_OUT), 
                       .PSDONE(), 
                       .STATUS());
   defparam DCM_SP_INST.CLK_FEEDBACK = "1X";
   defparam DCM_SP_INST.CLKDV_DIVIDE = 2.0;
   defparam DCM_SP_INST.CLKFX_DIVIDE = 1;
   defparam DCM_SP_INST.CLKFX_MULTIPLY = 4;
   defparam DCM_SP_INST.CLKIN_DIVIDE_BY_2 = "FALSE";
   defparam DCM_SP_INST.CLKIN_PERIOD = 27.800;
   defparam DCM_SP_INST.CLKOUT_PHASE_SHIFT = "NONE";
   defparam DCM_SP_INST.DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS";
   defparam DCM_SP_INST.DFS_FREQUENCY_MODE = "LOW";
   defparam DCM_SP_INST.DLL_FREQUENCY_MODE = "LOW";
   defparam DCM_SP_INST.DUTY_CYCLE_CORRECTION = "TRUE";
   defparam DCM_SP_INST.FACTORY_JF = 16'hC080;
   defparam DCM_SP_INST.PHASE_SHIFT = 0;
   defparam DCM_SP_INST.STARTUP_WAIT = "FALSE";
endmodule

v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {REF LADDER} 520 -800 0 0 1 1 {}
T {COMPARTOR TOP} 1040 -800 0 0 1 1 {}
T {ENCODER TOP} 1850 -800 0 0 1 1 {}
T {VERIFICATION} 30 -600 0 0 1 1 {}
T {VERILOG-A} 80 -380 0 0 1 1 {}
C {schematics/ref_ladder_top.sym} 670 -560 0 0 {name=xREF_LADDER}
C {devices/lab_pin.sym} 520 -550 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -570 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 820 -570 0 1 {name=p1 lab=vref[62..0]}
C {devices/ipin.sym} 80 -180 0 0 {name=p8 lab=VDD}
C {devices/ipin.sym} 80 -160 0 0 {name=p10 lab=VSS}
C {devices/ipin.sym} 80 -140 0 0 {name=p11 lab=VIN}
C {devices/ipin.sym} 80 -120 0 0 {name=p12 lab=VREF}
C {devices/opin.sym} 120 -180 0 0 {name=p13 lab=OUT[5..0]}
C {devices/lab_pin.sym} 1110 -570 0 0 {name=p6 lab=vref[62..0]}
C {devices/lab_pin.sym} 1110 -550 0 0 {name=p7 lab=VIN}
C {devices/lab_pin.sym} 1410 -610 0 1 {name=p2 lab=comp_out[62..0]}
C {devices/iopin.sym} 120 -160 0 0 {name=p14 lab=vref[62..0]}
C {devices/iopin.sym} 120 -140 0 0 {name=p15 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 1910 -370 0 0 {name=p29 lab=VDD}
C {devices/lab_pin.sym} 2210 -370 0 1 {name=p30 lab=OUT[5..0]}
C {devices/lab_pin.sym} 1910 -350 0 0 {name=p31 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 1910 -330 0 0 {name=p32 lab=VSS}
C {devices/lab_pin.sym} 1910 -310 0 0 {name=p33 lab=VREF}
C {devices/lab_pin.sym} 1110 -610 0 0 {name=p16 lab=VDD}
C {devices/lab_pin.sym} 1110 -590 0 0 {name=p19 lab=VSS}
C {schematics/comp_top.sym} 1260 -570 0 0 {name=xCOMP_TOP
spice_ignore=true}
C {devices/ipin.sym} 80 -100 0 0 {name=p34 lab=clk}
C {devices/lab_pin.sym} 1110 -530 0 0 {name=p36 lab=clk}
C {schematics/comp_top_ideal.sym} 1260 -340 0 0 {name=xIDEAL_COMP_TOP
}
C {devices/lab_pin.sym} 1910 -550 0 0 {name=p4 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 1910 -590 0 0 {name=p5 lab=VDD}
C {devices/lab_pin.sym} 1910 -570 0 0 {name=p17 lab=VSS}
C {devices/lab_pin.sym} 2210 -590 0 1 {name=p18 lab=OUT[5..0]}
C {devices/lab_pin.sym} 1110 -330 0 0 {name=p20 lab=vref[62..0]}
C {devices/lab_pin.sym} 1110 -310 0 0 {name=p21 lab=VIN}
C {devices/lab_pin.sym} 1110 -370 0 0 {name=p22 lab=VDD}
C {devices/lab_pin.sym} 1110 -350 0 0 {name=p23 lab=VSS}
C {devices/lab_pin.sym} 1410 -370 0 1 {name=p24 lab=comp_out[62..0]}
C {schematics/encoder_top.sym} 2060 -570 0 0 {name=x1
spice_ignore=true}
C {schematics/encoder_veriloga_top.sym} 2060 -340 0 0 {name=x2 model=decoder_6bit_cell}

v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {schematics/ref_ladder_top.sym} 230 -560 0 0 {name=xREF_LADDER}
C {devices/lab_pin.sym} 80 -550 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 80 -570 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 -570 0 1 {name=p1 lab=vref[62..0]}
C {devices/ipin.sym} 80 -180 0 0 {name=p8 lab=VDD}
C {devices/ipin.sym} 80 -160 0 0 {name=p10 lab=VSS}
C {devices/ipin.sym} 80 -140 0 0 {name=p11 lab=VIN}
C {devices/ipin.sym} 80 -120 0 0 {name=p12 lab=VREF}
C {devices/opin.sym} 120 -180 0 0 {name=p13 lab=OUT[5..0]}
C {devices/lab_pin.sym} 670 -570 0 0 {name=p6 lab=vref[62..0]}
C {devices/lab_pin.sym} 670 -550 0 0 {name=p7 lab=VIN}
C {devices/lab_pin.sym} 970 -610 0 1 {name=p2 lab=comp_out[62..0]}
C {devices/iopin.sym} 120 -160 0 0 {name=p14 lab=vref[62..0]}
C {devices/iopin.sym} 120 -140 0 0 {name=p15 lab=comp_out[62..0]}
C {schematics/decoder_veriloga_top.sym} 1620 -340 0 0 {name=xVERILOGA_DECODER_TOP model=decoder_6bit_cell
}
C {devices/lab_pin.sym} 1470 -370 0 0 {name=p29 lab=VDD}
C {devices/lab_pin.sym} 1770 -370 0 1 {name=p30 lab=OUT[5..0]}
C {devices/lab_pin.sym} 1470 -350 0 0 {name=p31 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 1470 -330 0 0 {name=p32 lab=VSS}
C {devices/lab_pin.sym} 1470 -310 0 0 {name=p33 lab=VREF}
C {devices/lab_pin.sym} 670 -610 0 0 {name=p16 lab=VDD}
C {devices/lab_pin.sym} 670 -590 0 0 {name=p19 lab=VSS}
C {schematics/comp_top.sym} 820 -570 0 0 {name=xCOMP_TOP
}
C {devices/ipin.sym} 80 -100 0 0 {name=p34 lab=clk}
C {devices/lab_pin.sym} 670 -530 0 0 {name=p36 lab=clk}
C {schematics/comp_top_ideal.sym} 820 -340 0 0 {name=xIDEAL_COMP_TOP
spice_ignore=true}
C {schematics/decoder_top.sym} 1620 -570 0 0 {name=xDECODER_TOP
spice_ignore=true}
C {devices/lab_pin.sym} 1470 -550 0 0 {name=p4 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 1470 -590 0 0 {name=p5 lab=VDD}
C {devices/lab_pin.sym} 1470 -570 0 0 {name=p17 lab=VSS}
C {devices/lab_pin.sym} 1770 -590 0 1 {name=p18 lab=OUT[5..0]}

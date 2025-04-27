v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {schematics/ref_ladder_top.sym} 250 -340 0 0 {name=xREF_LADDER}
C {devices/lab_pin.sym} 100 -330 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 -350 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 -350 0 1 {name=p1 lab=vref[62..0]}
C {devices/lab_pin.sym} 680 -370 0 0 {name=p4 lab=VDD}
C {devices/lab_pin.sym} 680 -350 0 0 {name=p5 lab=VSS}
C {schematics/comp_top_ideal.sym} 830 -340 0 0 {name=xIDEAL_COMP_TOP
}
C {devices/ipin.sym} 80 -180 0 0 {name=p8 lab=VDD}
C {devices/ipin.sym} 80 -160 0 0 {name=p10 lab=VSS}
C {devices/ipin.sym} 80 -140 0 0 {name=p11 lab=VIN}
C {devices/ipin.sym} 80 -120 0 0 {name=p12 lab=VREF}
C {devices/opin.sym} 120 -180 0 0 {name=p13 lab=OUT[5..0]}
C {devices/lab_pin.sym} 670 -560 0 0 {name=p6 lab=vref[62..0]}
C {devices/lab_pin.sym} 670 -540 0 0 {name=p7 lab=VIN}
C {devices/lab_pin.sym} 970 -600 0 1 {name=p2 lab=comp_out[62..0]}
C {devices/iopin.sym} 120 -160 0 0 {name=p14 lab=vref[62..0]}
C {devices/iopin.sym} 120 -140 0 0 {name=p15 lab=comp_out[62..0]}
C {schematics/decoder_top.sym} 1590 -360 0 0 {name=xDECODER
spice_ignore=true}
C {devices/lab_pin.sym} 1440 -380 0 0 {name=p21 lab=VDD}
C {devices/lab_pin.sym} 1440 -360 0 0 {name=p22 lab=VSS}
C {devices/lab_pin.sym} 1440 -340 0 0 {name=p23 lab=comp_out[62..0]}
C {schematics/ideal_decoder_2bit.sym} 1590 -220 0 0 {name=x1 model=decoder_2bit_cell
spice_ignore=true}
C {devices/lab_pin.sym} 1440 -280 0 0 {name=p17 lab=VDD}
C {devices/lab_pin.sym} 1440 -260 0 0 {name=p18 lab=VSS}
C {devices/lab_pin.sym} 1440 -240 0 0 {name=p20 lab=VREF}
C {devices/lab_pin.sym} 1440 -220 0 0 {name=p24 lab=comp_out0}
C {devices/lab_pin.sym} 1440 -200 0 0 {name=p25 lab=comp_out1}
C {devices/lab_pin.sym} 1440 -180 0 0 {name=p26 lab=comp_out2}
C {devices/lab_pin.sym} 1440 -160 0 0 {name=p27 lab=comp_out3}
C {schematics/decoder_veriloga_top.sym} 1590 -580 0 0 {name=xDECODER_6BIT_VERILOGA model=decoder_6bit_cell
}
C {devices/lab_pin.sym} 1440 -610 0 0 {name=p29 lab=VDD}
C {devices/lab_pin.sym} 1740 -610 0 1 {name=p30 lab=OUT[5..0]}
C {devices/lab_pin.sym} 1440 -590 0 0 {name=p31 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 1440 -570 0 0 {name=p32 lab=VSS}
C {devices/lab_pin.sym} 1440 -550 0 0 {name=p33 lab=VREF}
C {devices/lab_pin.sym} 670 -600 0 0 {name=p16 lab=VDD}
C {devices/lab_pin.sym} 670 -580 0 0 {name=p19 lab=VSS}
C {schematics/comp_top.sym} 820 -570 0 0 {name=xCOMP_TOP
spice_ignore=true}
C {devices/lab_pin.sym} 1740 -380 0 1 {name=p28 lab=OUT[5..0]}
C {devices/lab_pin.sym} 980 -370 0 1 {name=p34 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 680 -330 0 0 {name=p35 lab=vref[62..0]}
C {devices/lab_pin.sym} 680 -310 0 0 {name=p36 lab=VIN}

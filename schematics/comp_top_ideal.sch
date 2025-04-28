v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 80 -30 {}
N 370 -230 370 -190 {lab=VSS}
N 210 -340 250 -340 {lab=VIN}
N 210 -320 250 -320 {lab=vref[62..0]}
N 480 -330 520 -330 {lab=vout[62..0]}
N 370 -460 370 -430 {lab=VDD}
C {devices/opin.sym} 170 -90 0 0 {name=p11 lab=vout[62..0]}
C {devices/ipin.sym} 130 -90 0 0 {name=p5 lab=VDD}
C {devices/ipin.sym} 130 -70 0 0 {name=p1 lab=VSS}
C {devices/ipin.sym} 130 -50 0 0 {name=p2 lab=vref[62..0]}
C {devices/ipin.sym} 130 -30 0 0 {name=p3 lab=VIN}
C {devices/lab_pin.sym} 370 -190 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 -620 0 0 {name=p7 sig_type=std_logic lab=vref[62..0]}
C {devices/lab_pin.sym} 220 -640 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 370 -460 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 520 -680 0 1 {name=p10 sig_type=std_logic lab=vout[62..0]}
C {schematics/ideal_comp.sym} 370 -330 0 0 {name=xCOMP[62..0]
spice_ignore=true}
C {schematics/ideal_comp_veriloga.sym} 370 -650 0 0 {name=xVERILOG_A_COMP[62..0] model=ideal_comp_cell}
C {devices/lab_pin.sym} 220 -680 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 -660 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 210 -320 0 0 {name=p13 sig_type=std_logic lab=vref[62..0]}
C {devices/lab_pin.sym} 210 -340 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 520 -330 0 1 {name=p15 sig_type=std_logic lab=vout[62..0]}

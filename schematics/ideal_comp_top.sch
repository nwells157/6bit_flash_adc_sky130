v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 60 -40 {}
N 350 -240 350 -200 {lab=VSS}
N 190 -350 230 -350 {lab=VIN}
N 190 -330 230 -330 {lab=vref[62..0]}
N 460 -340 500 -340 {lab=vout[62..0]}
N 350 -470 350 -440 {lab=VDD}
C {devices/opin.sym} 150 -100 0 0 {name=p11 lab=vout[62..0]}
C {devices/ipin.sym} 110 -100 0 0 {name=p5 lab=VDD}
C {devices/ipin.sym} 110 -80 0 0 {name=p1 lab=VSS}
C {devices/ipin.sym} 110 -60 0 0 {name=p2 lab=vref[62..0]}
C {devices/ipin.sym} 110 -40 0 0 {name=p3 lab=VIN}
C {devices/lab_pin.sym} 350 -200 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 190 -330 0 0 {name=p7 sig_type=std_logic lab=vref[62..0]}
C {devices/lab_pin.sym} 190 -350 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 350 -470 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -340 0 1 {name=p10 sig_type=std_logic lab=vout[62..0]}
C {schematics/ideal_comp.sym} 350 -340 0 0 {name=xCOMP[62..0]}

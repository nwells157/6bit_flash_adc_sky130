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
C {ipin.sym} 110 -90 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -70 0 0 {name=p2 lab=VSS}
C {ipin.sym} 110 -50 0 0 {name=p3 lab=vref[62..0]}
C {ipin.sym} 110 -30 0 0 {name=p4 lab=VIN}
C {opin.sym} 210 -90 0 0 {name=p5 lab=vout[62..0]}
C {lab_pin.sym} 210 -340 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 370 -190 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 210 -320 0 0 {name=p8 sig_type=std_logic lab=vref[62..0]}
C {lab_pin.sym} 520 -330 2 0 {name=p9 sig_type=std_logic lab=vout[62..0]}
C {ideal_comp.sym} 370 -330 0 0 {name=xcomp[62..0]}
C {lab_pin.sym} 370 -460 0 0 {name=p10 lab=VDD}

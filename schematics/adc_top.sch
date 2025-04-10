v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {schematics/ref_ladder_top.sym} 260 -270 0 0 {name=x1}
C {devices/lab_pin.sym} 110 -260 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 110 -280 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 410 -280 0 1 {name=p1 lab=vref[62..0]}
C {devices/lab_pin.sym} 690 -300 0 0 {name=p4 lab=VDD}
C {devices/lab_pin.sym} 690 -280 0 0 {name=p5 lab=VSS}
C {schematics/comp_top_ideal.sym} 840 -270 0 0 {name=x2}
C {devices/ipin.sym} 80 -180 0 0 {name=p8 lab=VDD}
C {devices/ipin.sym} 80 -160 0 0 {name=p10 lab=VSS}
C {devices/ipin.sym} 80 -140 0 0 {name=p11 lab=VIN}
C {devices/ipin.sym} 80 -120 0 0 {name=p12 lab=VREF}
C {devices/opin.sym} 120 -180 0 0 {name=p13 lab=OUT[5:0]}
C {devices/lab_pin.sym} 690 -260 0 0 {name=p6 lab=vref[62..0]}
C {devices/lab_pin.sym} 690 -240 0 0 {name=p7 lab=VIN}
C {devices/lab_pin.sym} 990 -300 0 1 {name=p2 lab=vout[62..0]}

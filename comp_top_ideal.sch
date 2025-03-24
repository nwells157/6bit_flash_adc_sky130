v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 80 -30 {}
N 200 -280 200 -240 {lab=VSS}
N 120 -290 160 -290 {lab=VIN}
N 120 -330 160 -330 {lab=vref[62..0]}
N 200 -380 200 -340 {lab=vout[62..0]}
N 200 -420 200 -380 {lab=vout[62..0]}
N 200 -420 420 -420 {lab=vout[62..0]}
C {ipin.sym} 110 -90 0 0 {name=p1 lab=VDD}
C {ipin.sym} 110 -70 0 0 {name=p2 lab=VSS}
C {ipin.sym} 110 -50 0 0 {name=p3 lab=vref[62..0]}
C {ipin.sym} 110 -30 0 0 {name=p4 lab=VIN}
C {opin.sym} 210 -90 0 0 {name=p5 lab=vout[62..0]}
C {lab_pin.sym} 120 -290 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 200 -240 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 420 -420 0 1 {name=p9 sig_type=std_logic lab=vout[62..0]}
C {vcvs.sym} 200 -310 0 0 {name=E1[62:0] value=1e6}
C {lab_pin.sym} 120 -330 0 0 {name=p8 sig_type=std_logic lab=vref[62..0]}

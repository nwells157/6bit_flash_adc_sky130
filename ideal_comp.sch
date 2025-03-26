v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 170 -110 {}
N 270 -180 270 -150 {lab=vss}
N 200 -190 230 -190 {lab=vinn}
N 200 -230 230 -230 {lab=vinp}
N 270 -280 270 -240 {lab=vcvs_out}
N 420 -270 420 -240 {lab=vss}
N 420 -370 420 -330 {lab=vout}
C {vcvs.sym} 270 -210 0 0 {name=E1 value=1e6}
C {lab_pin.sym} 270 -280 0 1 {name=p1 lab=vcvs_out}
C {lab_pin.sym} 270 -150 0 1 {name=p2 lab=vss}
C {lab_pin.sym} 200 -230 0 0 {name=p3 lab=vinp}
C {lab_pin.sym} 200 -190 0 0 {name=p4 lab=vinn}
C {ipin.sym} 70 -50 0 0 {name=p5 lab=vinp}
C {opin.sym} 110 -50 0 0 {name=p6 lab=vout}
C {ipin.sym} 70 -30 0 0 {name=p7 lab=vinn}
C {ipin.sym} 70 -70 0 0 {name=p8 lab=vss}
C {ipin.sym} 70 -90 0 0 {name=p9 lab=vdd}
C {asrc.sym} 420 -300 0 0 {name=B1 function="v=( V(vcvs_out) < \{vlow\} ? \{vlow\} : (V(vcvs_out) > \{vhigh\} ? \{vhigh\} : V(vcvs_out)))"}
C {lab_pin.sym} 420 -240 0 1 {name=p10 lab=vss}
C {lab_pin.sym} 420 -370 0 1 {name=p11 lab=vout}

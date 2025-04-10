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
C {devices/ipin.sym} 70 -90 0 0 {name=p12 lab=vdd}
C {devices/opin.sym} 100 -90 0 0 {name=p13 lab=vout}
C {devices/ipin.sym} 70 -70 0 0 {name=p8 lab=vss}
C {devices/ipin.sym} 70 -50 0 0 {name=p5 lab=vinp}
C {devices/ipin.sym} 70 -30 0 0 {name=p7 lab=vinn}
C {devices/lab_pin.sym} 270 -150 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 200 -190 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 200 -230 0 0 {name=p3 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 270 -280 0 0 {name=p1 sig_type=std_logic lab=vcvs_out}
C {devices/vcvs.sym} 270 -210 0 0 {name=E1 value=1e6}
C {devices/lab_pin.sym} 420 -240 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/asrc.sym} 420 -300 0 0 {name=B1 function="v=( V(vcvs_out) < \{vlow\} ? \{vlow\} : (V(vcvs_out) > \{vhigh\} ? \{vhigh\} : V(vcvs_out)))"}
C {devices/lab_pin.sym} 420 -370 0 0 {name=p9 sig_type=std_logic lab=vout}

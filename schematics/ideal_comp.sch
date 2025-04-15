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
N 680 -280 680 -250 {lab=vss}
N 680 -380 680 -340 {lab=vout}
N 440 -340 440 -300 {lab=vcvs_total_out}
N 390 -340 440 -340 {lab=vcvs_total_out}
N 270 -340 270 -280 {lab=vcvs_out}
N 270 -340 330 -340 {lab=vcvs_out}
N 440 -240 440 -200 {lab=vss}
C {devices/ipin.sym} 70 -90 0 0 {name=p12 lab=vdd}
C {devices/opin.sym} 100 -90 0 0 {name=p13 lab=vout}
C {devices/ipin.sym} 70 -70 0 0 {name=p8 lab=vss}
C {devices/ipin.sym} 70 -50 0 0 {name=p5 lab=vinp}
C {devices/ipin.sym} 70 -30 0 0 {name=p7 lab=vinn}
C {devices/lab_pin.sym} 270 -150 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 200 -190 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 200 -230 0 0 {name=p3 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 270 -330 0 0 {name=p1 sig_type=std_logic lab=vcvs_out}
C {devices/vcvs.sym} 270 -210 0 0 {name=E1 value=1e6}
C {devices/lab_pin.sym} 680 -250 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/asrc.sym} 680 -310 0 0 {name=B1 function="v=( V(vcvs_total_out) < \{vlow\} ? \{vlow\} : (V(vcvs_total_out) > \{vhigh\} ? \{vhigh\} : V(vcvs_out)))"}
C {devices/lab_pin.sym} 680 -380 0 0 {name=p9 sig_type=std_logic lab=vout}
C {devices/res.sym} 360 -340 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 440 -270 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 440 -200 0 0 {name=p10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 440 -340 0 1 {name=p11 sig_type=std_logic lab=vcvs_total_out}

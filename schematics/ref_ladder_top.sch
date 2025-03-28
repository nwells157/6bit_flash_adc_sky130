v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -260 200 -220 {lab=vref[62..0],VSS}
N 200 -360 200 -320 {lab=VDD,vref[62..0]}
N 140 -290 180 -290 {lab=VSS}
C {sky130_fd_pr/res_high_po.sym} 200 -290 0 0 {name=R1[63:0]
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 140 -290 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 80 -120 0 0 {name=p8 lab=VDD}
C {devices/opin.sym} 150 -120 0 0 {name=p9 lab=vref[62..0]}
C {devices/ipin.sym} 80 -80 0 0 {name=p3 lab=VSS}
C {devices/lab_pin.sym} 200 -360 0 0 {name=p2 sig_type=std_logic lab=VDD,vref[62..0]}
C {devices/lab_pin.sym} 200 -220 0 0 {name=p4 sig_type=std_logic lab=vref[62..0],VSS}

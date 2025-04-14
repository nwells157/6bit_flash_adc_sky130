v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 130 -130 {}
N 610 -370 610 -350 {lab=#net1}
N 610 -350 900 -350 {lab=#net1}
N 960 -370 960 -350 {lab=#net1}
N 780 -370 780 -350 {lab=#net1}
N 610 -470 610 -430 {lab=OUT5}
N 780 -470 780 -430 {lab=OUT4}
N 960 -470 960 -430 {lab=OUT3}
N 900 -350 960 -350 {lab=#net1}
N 610 -180 610 -160 {lab=#net2}
N 610 -160 900 -160 {lab=#net2}
N 960 -180 960 -160 {lab=#net2}
N 780 -180 780 -160 {lab=#net2}
N 610 -280 610 -240 {lab=OUT2}
N 780 -280 780 -240 {lab=OUT1}
N 960 -280 960 -240 {lab=OUT0}
N 900 -160 960 -160 {lab=#net2}
C {devices/ipin.sym} 180 -170 0 0 {name=p1 lab=decode_in[62..0]}
C {devices/ipin.sym} 180 -210 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 180 -190 0 0 {name=p3 lab=VSS}
C {devices/opin.sym} 240 -210 0 0 {name=p4 lab=OUT[5..0]}
C {sky130_fd_pr/res_high_po.sym} 610 -400 0 0 {name=R1
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 780 -400 0 0 {name=R2
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 960 -400 0 0 {name=R3
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 590 -400 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 760 -400 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 940 -400 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 -450 0 0 {name=p8 sig_type=std_logic lab=OUT5}
C {devices/lab_pin.sym} 780 -450 0 0 {name=p9 sig_type=std_logic lab=OUT4}
C {devices/lab_pin.sym} 960 -450 0 0 {name=p10 sig_type=std_logic lab=OUT3}
C {sky130_fd_pr/res_high_po.sym} 610 -210 0 0 {name=R4
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 780 -210 0 0 {name=R5
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 960 -210 0 0 {name=R6
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 590 -210 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 760 -210 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 940 -210 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 -260 0 0 {name=p14 sig_type=std_logic lab=OUT2}
C {devices/lab_pin.sym} 780 -260 0 0 {name=p15 sig_type=std_logic lab=OUT1}
C {devices/lab_pin.sym} 960 -260 0 0 {name=p16 sig_type=std_logic lab=OUT0}

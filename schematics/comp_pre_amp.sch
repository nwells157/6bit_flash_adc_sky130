v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 190 -110 {}
N 710 -320 710 -290 {lab=#net1}
N 610 -270 710 -270 {lab=#net1}
N 710 -290 710 -270 {lab=#net1}
N 510 -270 610 -270 {lab=#net1}
N 510 -320 510 -270 {lab=#net1}
N 610 -270 610 -230 {lab=#net1}
N 510 -510 710 -510 {lab=vdd}
N 710 -560 710 -540 {lab=vdd}
N 510 -560 510 -540 {lab=vdd}
N 450 -510 470 -510 {lab=voutp}
N 450 -510 450 -460 {lab=voutp}
N 450 -460 510 -460 {lab=voutp}
N 510 -480 510 -460 {lab=voutp}
N 510 -460 510 -380 {lab=voutp}
N 750 -510 770 -510 {lab=voutn}
N 770 -510 770 -460 {lab=voutn}
N 710 -480 710 -460 {lab=voutn}
N 710 -460 770 -460 {lab=voutn}
N 710 -460 710 -380 {lab=voutn}
C {devices/ipin.sym} 90 -90 0 0 {name=p12 lab=vdd}
C {devices/opin.sym} 120 -90 0 0 {name=p13 lab=voutp}
C {devices/ipin.sym} 90 -70 0 0 {name=p8 lab=vss}
C {devices/ipin.sym} 90 -50 0 0 {name=p5 lab=vinp}
C {devices/ipin.sym} 90 -30 0 0 {name=p7 lab=vinn}
C {devices/isource.sym} 610 -200 0 0 {name=I0 value=1m}
C {devices/lab_pin.sym} 610 -170 0 1 {name=p2 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 490 -350 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 730 -350 0 1 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 490 -510 0 0 {name=M3
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 730 -510 0 1 {name=M4
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 510 -560 0 1 {name=p4 lab=vdd}
C {devices/lab_pin.sym} 710 -560 0 0 {name=p11 lab=vdd}
C {devices/opin.sym} 120 -70 0 0 {name=p1 lab=voutn}
C {devices/lab_wire.sym} 610 -510 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 770 -510 0 1 {name=p6 lab=voutn}
C {devices/lab_pin.sym} 450 -510 0 0 {name=p9 lab=voutp}
C {devices/lab_pin.sym} 470 -350 0 0 {name=p10 lab=vinn}
C {devices/lab_pin.sym} 750 -350 0 1 {name=p14 lab=vinp}

v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 170 -110 {}
N 560 -450 560 -420 {lab=pa_m1_s}
N 460 -400 560 -400 {lab=pa_m1_s}
N 560 -420 560 -400 {lab=pa_m1_s}
N 360 -400 460 -400 {lab=pa_m1_s}
N 360 -450 360 -400 {lab=pa_m1_s}
N 460 -400 460 -360 {lab=pa_m1_s}
N 360 -640 560 -640 {lab=vdd}
N 560 -690 560 -670 {lab=vdd}
N 360 -690 360 -670 {lab=vdd}
N 300 -640 320 -640 {lab=pa_voutp}
N 300 -640 300 -590 {lab=pa_voutp}
N 300 -590 360 -590 {lab=pa_voutp}
N 360 -610 360 -590 {lab=pa_voutp}
N 360 -590 360 -510 {lab=pa_voutp}
N 600 -640 620 -640 {lab=pa_voutn}
N 620 -640 620 -590 {lab=pa_voutn}
N 560 -610 560 -590 {lab=pa_voutn}
N 560 -590 620 -590 {lab=pa_voutn}
N 560 -590 560 -510 {lab=pa_voutn}
N 940 -690 940 -670 {lab=vdd}
N 940 -670 940 -640 {lab=vdd}
N 1160 -670 1160 -640 {lab=vdd}
N 1160 -700 1160 -670 {lab=vdd}
N 940 -700 940 -690 {lab=vdd}
N 940 -380 940 -340 {lab=#net1}
N 940 -340 1160 -340 {lab=#net1}
N 1160 -380 1160 -340 {lab=#net1}
N 1040 -340 1040 -250 {lab=#net1}
N 980 -220 1000 -220 {lab=#net1}
N 980 -280 980 -220 {lab=#net1}
N 980 -280 1040 -280 {lab=#net1}
N 1040 -220 1040 -190 {lab=vss}
N 1040 -190 1040 -160 {lab=vss}
N 880 -410 900 -410 {lab=latch_voutp}
N 880 -470 880 -410 {lab=latch_voutp}
N 880 -470 940 -470 {lab=latch_voutp}
N 940 -470 940 -440 {lab=latch_voutp}
N 940 -600 940 -470 {lab=latch_voutp}
N 940 -610 940 -600 {lab=latch_voutp}
N 1160 -610 1160 -440 {lab=latch_voutn}
N 1200 -410 1220 -410 {lab=latch_voutn}
N 1220 -460 1220 -410 {lab=latch_voutn}
N 1170 -470 1220 -470 {lab=latch_voutn}
N 1220 -470 1220 -460 {lab=latch_voutn}
N 1160 -470 1170 -470 {lab=latch_voutn}
N 940 -410 1160 -410 {lab=vss}
N 1400 -410 1580 -410 {lab=vss}
N 1160 -340 1580 -340 {lab=#net1}
N 1580 -380 1580 -340 {lab=#net1}
N 1400 -380 1400 -340 {lab=#net1}
N 1320 -410 1360 -410 {lab=latch_voutn}
N 1620 -410 1660 -410 {lab=latch_voutp}
N 1660 -440 1660 -410 {lab=latch_voutp}
N 1320 -440 1320 -410 {lab=latch_voutn}
N 1320 -500 1320 -440 {lab=latch_voutn}
N 1320 -500 1580 -500 {lab=latch_voutn}
N 1580 -500 1580 -440 {lab=latch_voutn}
N 1660 -520 1660 -440 {lab=latch_voutp}
N 1400 -540 1660 -540 {lab=latch_voutp}
N 1400 -520 1400 -440 {lab=latch_voutp}
N 1400 -540 1400 -520 {lab=latch_voutp}
N 1660 -540 1660 -520 {lab=latch_voutp}
N 1160 -500 1320 -500 {lab=latch_voutn}
N 940 -540 1400 -540 {lab=latch_voutp}
C {devices/ipin.sym} 70 -90 0 0 {name=p12 lab=vdd}
C {devices/opin.sym} 100 -90 0 0 {name=p13 lab=vout}
C {devices/ipin.sym} 70 -70 0 0 {name=p8 lab=vss}
C {devices/ipin.sym} 70 -50 0 0 {name=p5 lab=vinp}
C {devices/ipin.sym} 70 -30 0 0 {name=p7 lab=vinn}
C {devices/isource.sym} 460 -330 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 460 -300 0 1 {name=p2 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 340 -480 0 0 {name=M1
W=5
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 580 -480 0 1 {name=M2
W=5
L=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 340 -640 0 0 {name=M3
W=10
L=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 580 -640 0 1 {name=M4
W=10
L=0.5
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
C {devices/lab_pin.sym} 360 -690 0 1 {name=p4 lab=vdd}
C {devices/lab_pin.sym} 560 -690 0 0 {name=p11 lab=vdd}
C {devices/lab_wire.sym} 460 -640 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 620 -640 0 1 {name=p6 lab=pa_voutn}
C {devices/lab_pin.sym} 300 -640 0 0 {name=p9 lab=pa_voutp}
C {devices/lab_pin.sym} 320 -480 0 0 {name=p10 lab=vinn}
C {devices/lab_pin.sym} 600 -480 0 1 {name=p14 lab=vinp}
C {sky130_fd_pr/pfet_01v8.sym} 920 -640 0 0 {name=M5
W=10
L=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 1140 -640 0 0 {name=M6
W=10
L=0.5
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
C {devices/lab_pin.sym} 940 -560 0 1 {name=p1 lab=latch_voutp}
C {devices/lab_pin.sym} 900 -640 0 0 {name=p15 lab=pa_voutp}
C {devices/lab_pin.sym} 940 -700 0 1 {name=p16 lab=vdd}
C {devices/lab_pin.sym} 1160 -700 0 1 {name=p17 lab=vdd}
C {devices/lab_pin.sym} 1120 -640 0 0 {name=p18 lab=pa_voutn}
C {sky130_fd_pr/nfet_01v8.sym} 920 -410 0 0 {name=M7
W=5
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 1180 -410 0 1 {name=M8
W=5
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 1020 -220 0 0 {name=M9
W=10
L=10
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
C {devices/lab_pin.sym} 1040 -160 0 1 {name=p19 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1380 -410 0 0 {name=M10
W=5
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 1600 -410 0 1 {name=M11
W=5
L=0.5
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
C {devices/lab_wire.sym} 1060 -410 0 0 {name=p20 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1500 -410 0 0 {name=p21 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1160 -520 0 1 {name=p22 lab=latch_voutn}
C {devices/lab_wire.sym} 440 -400 0 0 {name=p23 sig_type=std_logic lab=pa_m1_s}
C {devices/iopin.sym} 250 -90 0 0 {name=p24 lab=pa_voutp}
C {devices/iopin.sym} 250 -70 0 0 {name=p25 lab=pa_voutn}
C {devices/iopin.sym} 250 -50 0 0 {name=p26 lab=latch_voutp}
C {devices/iopin.sym} 250 -30 0 0 {name=p27 lab=latch_voutn}

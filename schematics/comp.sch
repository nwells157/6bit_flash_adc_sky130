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
N 560 -690 560 -670 {lab=vdd}
N 360 -690 360 -670 {lab=vdd}
N 360 -610 360 -590 {lab=v_m1_d}
N 360 -590 360 -510 {lab=v_m1_d}
N 560 -610 560 -590 {lab=vout}
N 560 -590 560 -510 {lab=vout}
N 360 -670 360 -640 {lab=vdd}
N 560 -670 560 -640 {lab=vdd}
N 410 -640 520 -640 {lab=v_m1_d}
N 400 -640 410 -640 {lab=v_m1_d}
N 360 -590 420 -590 {lab=v_m1_d}
N 420 -640 420 -590 {lab=v_m1_d}
N 360 -480 360 -450 {lab=pa_m1_s}
N 560 -480 560 -450 {lab=pa_m1_s}
C {devices/ipin.sym} 70 -90 0 0 {name=p12 lab=vdd}
C {devices/opin.sym} 100 -90 0 0 {name=p13 lab=vout}
C {devices/ipin.sym} 70 -70 0 0 {name=p8 lab=vss}
C {devices/ipin.sym} 70 -50 0 0 {name=p5 lab=vinp}
C {devices/ipin.sym} 70 -30 0 0 {name=p7 lab=vinn}
C {devices/isource.sym} 460 -330 0 0 {name=I0 value=10u}
C {devices/lab_pin.sym} 460 -300 0 1 {name=p2 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 340 -480 0 0 {name=M1
W=20
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
W=20
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
C {sky130_fd_pr/pfet_01v8.sym} 380 -640 0 1 {name=M3
W=2
L=2
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -640 0 0 {name=M4
W=2
L=2
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
C {devices/lab_pin.sym} 600 -480 0 1 {name=p10 lab=vinn}
C {devices/lab_pin.sym} 320 -480 0 0 {name=p14 lab=vinp}
C {devices/lab_wire.sym} 440 -400 0 0 {name=p23 sig_type=std_logic lab=pa_m1_s}
C {devices/iopin.sym} 250 -90 0 0 {name=p24 lab=pa_voutp}
C {devices/iopin.sym} 250 -70 0 0 {name=p25 lab=pa_voutn}
C {devices/iopin.sym} 250 -50 0 0 {name=p26 lab=latch_voutp}
C {devices/iopin.sym} 250 -30 0 0 {name=p27 lab=latch_voutn}
C {devices/lab_pin.sym} 560 -570 0 1 {name=p1 lab=vout}
C {devices/lab_pin.sym} 360 -570 0 0 {name=p3 lab=v_m1_d}
C {devices/iopin.sym} 250 -10 0 0 {name=p6 lab=pa_m1_s}

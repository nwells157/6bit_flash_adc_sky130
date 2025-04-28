v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 180 -190 {}
N 370 -580 370 -550 {lab=voutn}
N 370 -660 370 -640 {lab=vdd}
N 370 -640 370 -610 {lab=vdd}
N 1540 -320 1540 -290 {lab=pa_m1_s}
N 1440 -270 1540 -270 {lab=pa_m1_s}
N 1540 -290 1540 -270 {lab=pa_m1_s}
N 1340 -270 1440 -270 {lab=pa_m1_s}
N 1340 -320 1340 -270 {lab=pa_m1_s}
N 1440 -270 1440 -230 {lab=pa_m1_s}
N 1540 -560 1540 -540 {lab=vdd}
N 1340 -560 1340 -540 {lab=vdd}
N 1340 -480 1340 -460 {lab=v_m1_d}
N 1340 -460 1340 -380 {lab=v_m1_d}
N 1540 -480 1540 -460 {lab=vout}
N 1540 -460 1540 -380 {lab=vout}
N 1340 -540 1340 -510 {lab=vdd}
N 1540 -540 1540 -510 {lab=vdd}
N 1390 -510 1500 -510 {lab=v_m1_d}
N 1380 -510 1390 -510 {lab=v_m1_d}
N 1340 -460 1400 -460 {lab=v_m1_d}
N 1400 -510 1400 -460 {lab=v_m1_d}
N 370 -300 370 -260 {lab=vinp_d}
N 590 -300 590 -260 {lab=vinn_d}
N 470 -420 510 -380 {lab=voutn}
N 470 -380 510 -420 {lab=voutp}
N 410 -380 470 -380 {lab=voutp}
N 510 -380 550 -380 {lab=voutn}
N 510 -420 590 -420 {lab=voutp}
N 590 -420 590 -410 {lab=voutp}
N 370 -420 370 -410 {lab=voutn}
N 370 -420 470 -420 {lab=voutn}
N 470 -610 510 -570 {lab=voutp}
N 470 -570 510 -610 {lab=voutn}
N 410 -610 470 -610 {lab=voutp}
N 510 -610 550 -610 {lab=voutn}
N 510 -570 590 -570 {lab=voutp}
N 590 -580 590 -570 {lab=voutp}
N 370 -570 470 -570 {lab=voutn}
N 590 -570 590 -420 {lab=voutp}
N 370 -550 370 -420 {lab=voutn}
N 370 -340 370 -300 {lab=vinp_d}
N 370 -350 370 -340 {lab=vinp_d}
N 590 -350 590 -300 {lab=vinn_d}
N 370 -170 400 -170 {lab=#net1}
N 370 -200 370 -170 {lab=#net1}
N 400 -170 590 -170 {lab=#net1}
N 590 -200 590 -170 {lab=#net1}
N 490 -170 490 -140 {lab=#net1}
N 200 -570 370 -570 {lab=voutn}
N 200 -580 200 -570 {lab=voutn}
N 590 -570 760 -570 {lab=voutp}
N 760 -570 780 -570 {lab=voutp}
N 780 -580 780 -570 {lab=voutp}
N 200 -660 200 -640 {lab=vdd}
N 590 -660 590 -640 {lab=vdd}
N 780 -660 780 -640 {lab=vdd}
N 780 -640 780 -610 {lab=vdd}
N 590 -640 590 -610 {lab=vdd}
N 200 -640 200 -610 {lab=vdd}
N 490 -110 490 -80 {lab=vss}
C {devices/ipin.sym} 80 -170 0 0 {name=p12 lab=vdd}
C {devices/opin.sym} 110 -170 0 0 {name=p13 lab=vout}
C {devices/ipin.sym} 80 -150 0 0 {name=p8 lab=vss}
C {devices/ipin.sym} 80 -130 0 0 {name=p5 lab=vinp}
C {devices/ipin.sym} 80 -110 0 0 {name=p7 lab=vinn}
C {sky130_fd_pr/nfet_01v8.sym} 470 -110 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 390 -610 0 1 {name=M10
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
C {devices/lab_pin.sym} 370 -660 0 1 {name=p18 lab=vdd}
C {devices/lab_pin.sym} 820 -610 0 1 {name=p20 lab=clk}
C {devices/ipin.sym} 80 -90 0 0 {name=p23 lab=clk}
C {sky130_stdcells/buf_6.sym} 940 -430 0 0 {name=xBUFF VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 900 -430 0 0 {name=p25 lab=voutp}
C {devices/lab_pin.sym} 980 -430 0 1 {name=p26 lab=voutp_buff}
C {devices/lab_pin.sym} 900 -350 0 0 {name=p29 lab=voutn}
C {sky130_stdcells/buf_6.sym} 940 -350 0 0 {name=xBUFF1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 980 -350 0 1 {name=p30 lab=voutn_buff}
C {devices/isource.sym} 1440 -200 0 0 {name=I0 value=10u}
C {devices/lab_pin.sym} 1440 -170 0 1 {name=p31 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1320 -350 0 0 {name=M11
W=50
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
C {sky130_fd_pr/nfet_01v8.sym} 1560 -350 0 1 {name=M12
W=50
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
C {sky130_fd_pr/pfet_01v8.sym} 1360 -510 0 1 {name=M13
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} 1520 -510 0 0 {name=M14
W=2
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
C {devices/lab_pin.sym} 1340 -560 0 1 {name=p32 lab=vdd}
C {devices/lab_pin.sym} 1540 -560 0 0 {name=p33 lab=vdd}
C {devices/lab_wire.sym} 1420 -270 0 0 {name=p36 sig_type=std_logic lab=pa_m1_s}
C {devices/lab_pin.sym} 1540 -440 0 1 {name=p37 lab=vout}
C {devices/lab_pin.sym} 1340 -440 0 0 {name=p38 lab=v_m1_d}
C {devices/lab_pin.sym} 1300 -350 0 0 {name=p34 lab=voutp_buff}
C {devices/lab_pin.sym} 1580 -350 0 1 {name=p35 lab=voutn_buff}
C {devices/lab_pin.sym} 1340 -350 0 1 {name=p39 lab=vss}
C {devices/lab_pin.sym} 1540 -350 0 0 {name=p40 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 350 -230 0 0 {name=M1
W=20
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
C {sky130_fd_pr/nfet_01v8.sym} 610 -230 0 1 {name=M2
W=20
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
C {sky130_fd_pr/nfet_01v8.sym} 390 -380 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 570 -380 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 570 -610 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 800 -610 0 1 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 180 -610 0 0 {name=M8
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
C {devices/lab_pin.sym} 160 -610 0 0 {name=p1 lab=clk}
C {devices/lab_pin.sym} 200 -660 0 1 {name=p2 lab=vdd}
C {devices/lab_pin.sym} 590 -660 0 1 {name=p3 lab=vdd}
C {devices/lab_pin.sym} 780 -660 0 1 {name=p4 lab=vdd}
C {devices/lab_pin.sym} 590 -500 0 0 {name=p6 lab=voutp}
C {devices/lab_pin.sym} 370 -500 0 1 {name=p9 lab=voutn}
C {devices/lab_pin.sym} 330 -230 0 0 {name=p10 lab=vinp}
C {devices/lab_pin.sym} 630 -230 0 1 {name=p11 lab=vinn}
C {devices/lab_pin.sym} 450 -110 0 0 {name=p14 lab=clk}
C {devices/lab_pin.sym} 490 -80 0 0 {name=p15 lab=vss}
C {devices/lab_pin.sym} 370 -310 0 0 {name=p16 lab=vinp_d}
C {devices/lab_pin.sym} 590 -310 0 0 {name=p17 lab=vinn_d}
C {devices/lab_pin.sym} 590 -230 0 0 {name=p19 lab=vss}
C {devices/lab_pin.sym} 370 -230 0 1 {name=p21 lab=vss}
C {devices/lab_pin.sym} 370 -380 0 0 {name=p22 lab=vss}
C {devices/lab_pin.sym} 590 -380 0 1 {name=p24 lab=vss}

v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 290 -380 290 -350 {lab=vss}
N 290 -330 910 -330 {lab=vss}
N 290 -350 290 -330 {lab=vss}
N 400 -380 400 -330 {lab=vss}
N 580 -450 580 -340 {lab=vss}
N 580 -340 580 -330 {lab=vss}
N 780 -420 780 -330 {lab=vss}
N 730 -550 870 -550 {lab=vout}
N 780 -550 780 -480 {lab=vout}
N 580 -550 670 -550 {lab=#net1}
N 580 -550 580 -510 {lab=#net1}
N 910 -550 1010 -550 {lab=vout}
N 400 -470 400 -440 {lab=vn}
N 290 -470 290 -440 {lab=vp}
N 870 -550 910 -550 {lab=vout}
C {devices/ipin.sym} 60 -180 0 0 {name=p12 lab=vdd}
C {devices/opin.sym} 90 -180 0 0 {name=p13 lab=vout}
C {devices/ipin.sym} 60 -160 0 0 {name=p8 lab=vss}
C {devices/ipin.sym} 60 -140 0 0 {name=p5 lab=vinp}
C {devices/ipin.sym} 60 -120 0 0 {name=p7 lab=vinn}
C {devices/bsource.sym} 290 -410 0 0 {name=B1 VAR=V FUNC="\{V(vinp)<vcmh ? (V(vinp) < vcml ? vcml: V(vinp)) : vcmh\}" m=1
}
C {devices/bsource.sym} 400 -410 0 0 {name=B2 VAR=V FUNC="\{V(vinn)<vcmh ? (V(vinn) < vcml ? vcml: V(vinn) + vios) : vcmh\}" m=1
}
C {devices/bsource.sym} 580 -480 0 0 {name=B3 VAR=V FUNC="\{gain*(V(vp)-V(vn)) < V(vdd) ? (gain*(V(vp)-V(vn)) < V(vss) ? V(vss) : (gain*(V(vp)-V(vn)))) : V(vdd)\}" m=1
}
C {devices/res.sym} 700 -550 1 0 {name=R1
value=\{1/(2*3.1415*bw*1p)\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 780 -450 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 520 -330 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 400 -470 0 0 {name=p2 sig_type=std_logic lab=vn
}
C {devices/lab_wire.sym} 290 -470 0 0 {name=p3 sig_type=std_logic lab=vp}
C {devices/lab_wire.sym} 1010 -550 0 0 {name=p4 sig_type=std_logic lab=vout}

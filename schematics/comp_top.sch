v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 90 -50 {}
N 570 -400 610 -400 {lab=comp_out[62..0]}
N 1140 -490 1160 -490 {lab=clkb}
C {devices/opin.sym} 180 -110 0 0 {name=p11 lab=vout[62..0]}
C {devices/ipin.sym} 140 -110 0 0 {name=p5 lab=VDD}
C {devices/ipin.sym} 140 -90 0 0 {name=p7 lab=VSS}
C {devices/ipin.sym} 140 -70 0 0 {name=p8 lab=vref[62..0]}
C {devices/ipin.sym} 140 -50 0 0 {name=p9 lab=VIN}
C {devices/lab_pin.sym} 270 -380 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 270 -340 0 0 {name=p12 sig_type=std_logic lab=vref[62..0]}
C {devices/lab_pin.sym} 270 -360 0 0 {name=p13 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 270 -400 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 610 -400 0 1 {name=p15 sig_type=std_logic lab=comp_out[62..0]}
C {schematics/comp.sym} 420 -360 0 0 {name=xCOMP[62..0]}
C {devices/lab_pin.sym} 270 -320 0 0 {name=p2 lab=clk}
C {devices/ipin.sym} 140 -30 0 0 {name=p1 lab=clk}
C {devices/lab_pin.sym} 1100 -370 0 0 {name=p16 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 1280 -370 0 1 {name=p17 lab=vout_latch[62..0]}
C {sky130_stdcells/inv_2.sym} 1100 -490 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1160 -490 0 1 {name=p18 lab=clkb}
C {sky130_stdcells/dlxtp_1.sym} 1190 -360 0 0 {name=xLATCH7[62..0] VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_2.sym} 1190 -280 0 0 {name=xFF[62..0] VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1100 -290 0 0 {name=p20 lab=clkb}
C {devices/lab_pin.sym} 1280 -290 0 1 {name=p21 lab=vout[62..0]}
C {devices/lab_pin.sym} 1060 -490 0 0 {name=p22 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1100 -350 0 0 {name=p23 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1100 -270 0 0 {name=p19 lab=vout_latch[62..0]}

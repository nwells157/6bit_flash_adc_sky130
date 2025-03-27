v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -300 60 -270 {lab=GND}
N 60 -270 120 -270 {lab=GND}
N 140 -300 140 -270 {lab=GND}
N 90 -270 90 -260 {lab=GND}
N 120 -270 140 -270 {lab=GND}
N 60 -400 60 -360 {lab=VDD}
N 140 -400 140 -360 {lab=VSS}
N 840 -350 1030 -350 {lab=vref[62..0]}
C {vsource.sym} 60 -330 0 0 {name=V1 value=vdd savecurrent=false}
C {vsource.sym} 140 -330 0 0 {name=V2 value=vss savecurrent=false}
C {gnd.sym} 90 -260 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 60 -400 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -400 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 880 -350 0 1 {name=p3 lab=vref[62..0]}
C {lab_pin.sym} 540 -350 0 0 {name=p4 lab=VDD}
C {lab_pin.sym} 540 -330 0 0 {name=p5 lab=VSS}
C {code.sym} 50 -170 0 0 {name=sim_code only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param vdd=1.8 vss=0
.op
.save VDD VSS vref0 vref1 vref2 vref3 vref4 vref5 vref6 vref7 vref8 vref9 vref10 vref11 vref12 vref13 vref14 vref15 vref16 vref17 vref18 vref19 vref20 vref21 vref22 vref23 vref24 vref25 vref26 vref27 vref28 vref29 vref30 vref31 vref32 vref33 vref34 vref35 vref36 vref37 vref38 vref39 vref40 vref41 vref42 vref43 vref44 vref45 vref46 vref47 vref48 vref49 vref50 vref51 vref52 vref53 vref54 vref55 vref56 vref57 vref58 vref59 vref60 vref61 vref62 


.control

run
wrdata data.txt vref0 vref1 vref2 vref3 vref4 vref5 vref6 vref7 vref8 vref9 vref10 vref11 vref12 vref13 vref14 vref15 vref16 vref17 vref18 vref19 vref20 vref21 vref22 vref23 vref24 vref25 vref26 vref27 vref28 vref29 vref30 vref31 vref32 vref33 vref34 vref35 vref36 vref37 vref38 vref39 vref40 vref41 vref42 vref43 vref44 vref45 vref46 vref47 vref48 vref49 vref50 vref51 vref52 vref53 vref54 vref55 vref56 vref57 vref58 vref59 vref60 vref61 vref62 


.endc


"}
C {code.sym} 210 -170 0 0 {name=save_bus only_toplevel=false value="




"}
C {/home/nwells/xschem/6_bit_flash/schematics/ref_ladder_top.sym} 690 -340 0 0 {name=x1}

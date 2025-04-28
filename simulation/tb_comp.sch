v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1450 -1240 2250 -840 {flags=graph
y1=0.5571654
y2=1.8371654
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=3e-07
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
linewidth_mult=2
rawfile=$netlist_dir/tb_comp.raw
color="4 5"
node="xdut.voutp_buff
xdut.voutn_buff"}
B 2 1450 -840 2250 -440 {flags=graph
y2=2.1090694
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=3e-07
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
linewidth_mult=4
rawfile=$netlist_dir/tb_comp.raw
y1=0.50906942
color="4 5 6 7"
node="xdut.vinn_d
xdut.vinp_d
xdut.voutp
xdut.voutn"}
B 2 1450 -1640 2250 -1240 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=3e-07
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
linewidth_mult=2
rawfile=$netlist_dir/tb_comp.raw
color="4 5 6"
node="vin
vref
vout_ff"}
B 2 1450 -440 2250 -40 {flags=graph
y2=2.3
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=3e-07
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
linewidth_mult=2
rawfile=$netlist_dir/tb_comp.raw
y1=0
color="4 12"
node="clk_buff
clkb"}
N 110 -540 110 -510 {lab=GND}
N 110 -510 190 -510 {lab=GND}
N 190 -540 190 -510 {lab=GND}
N 110 -640 110 -600 {lab=VDD}
N 190 -640 190 -600 {lab=VSS}
N 410 -110 410 -80 {lab=GND}
N 410 -210 410 -170 {lab=VIN}
N 780 -110 780 -80 {lab=GND}
N 780 -210 780 -170 {lab=VREF}
N 940 -110 940 -80 {lab=GND}
N 940 -210 940 -170 {lab=clk}
N 1000 -270 1020 -270 {lab=#net1}
N 1100 -270 1140 -270 {lab=#net2}
N 1220 -610 1240 -610 {lab=#net3}
N 1120 -610 1140 -610 {lab=#net4}
C {devices/launcher.sym} 140 -40 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/code.sym} 200 -220 0 0 {name=sim_code only_toplevel=false value="

# Model files
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.options method=gear reltol=1e-6 abstol=1e-12

# Main parameters
.param vdd=1.8 vss=0 vref='900m' vhigh=1.8 vlow=0
.param sin_offset='vdd/2'
.param sin_amp='vdd/2'
.param sin_freq=10e6
.param sin_period='1/sin_freq'
.param tran_step='25e-12'
.param tran_stop_time='sin_period*3'

# Component parameters



# Save settings
.save


# Analysis
.op
.dc V3 0 \{vdd\} \{vdd/20\}
.tran \{tran_step\} \{tran_stop_time\}
.ac dec 50 1e3 1e10

# Start control block
.control

# Run sim
run

# Expressions


# Save expressions

# Write to raw file
write tb_comp.raw all

set appendwrite
setplot ac1
write tb_comp.raw all

setplot tran1




.endc

"
spice_ignore=true}
C {devices/gnd.sym} 140 -510 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 110 -570 0 0 {name=V1 value=vdd savecurrent=false}
C {devices/vsource.sym} 190 -570 0 0 {name=V2 value=vss savecurrent=false}
C {devices/lab_pin.sym} 110 -640 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -640 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -210 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {devices/vsource.sym} 410 -140 0 0 {name=V3 value="DC \{sin_offset\} AC 1 SIN(\{sin_offset\} \{sin_amp\} \{sin_freq\})"}
C {devices/gnd.sym} 410 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 780 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 780 -140 0 0 {name=V4 value=vref}
C {devices/lab_pin.sym} 780 -210 0 0 {name=p8 sig_type=std_logic lab=VREF}
C {schematics/comp.sym} 650 -560 0 0 {name=xDUT
}
C {devices/lab_pin.sym} 500 -600 0 0 {name=p3 lab=VDD}
C {devices/lab_pin.sym} 500 -580 0 0 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 500 -560 0 0 {name=p10 lab=VIN}
C {devices/lab_pin.sym} 500 -540 0 0 {name=p14 lab=VREF}
C {devices/lab_pin.sym} 800 -600 0 1 {name=p1 lab=vout}
C {devices/vsource.sym} 940 -140 0 0 {name=V5 value="PULSE(0 1.8 0 1p 1p 20n 40n)"}
C {devices/gnd.sym} 940 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 940 -210 0 0 {name=p5 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1000 -490 0 0 {name=p4 lab=vout}
C {devices/lab_pin.sym} 1180 -490 0 1 {name=p13 lab=vout_latch}
C {sky130_stdcells/inv_2.sym} 1080 -610 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1320 -610 0 1 {name=p15 lab=clkb}
C {sky130_stdcells/dlxtp_1.sym} 1090 -480 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_2.sym} 1090 -400 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1000 -390 0 0 {name=p17 lab=vout_latch}
C {devices/lab_pin.sym} 1000 -410 0 0 {name=p18 lab=clkb}
C {devices/lab_pin.sym} 1180 -410 0 1 {name=p19 lab=vout_FF}
C {sky130_stdcells/buf_1.sym} 960 -270 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_2.sym} 1060 -270 0 0 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1180 -270 0 0 {name=x6 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 920 -270 0 0 {name=p21 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1220 -270 0 1 {name=p22 sig_type=std_logic lab=clk_buff}
C {devices/lab_pin.sym} 500 -520 0 0 {name=p2 sig_type=std_logic lab=clk_buff}
C {devices/lab_pin.sym} 1040 -610 0 0 {name=p12 sig_type=std_logic lab=clk_buff}
C {devices/lab_pin.sym} 1000 -470 0 0 {name=p16 sig_type=std_logic lab=clk_buff}
C {sky130_stdcells/inv_2.sym} 1180 -610 0 0 {name=x7 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 1280 -610 0 0 {name=x8 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {schematics/ideal_comp.sym} 650 -930 0 0 {name=x9 bw=500Meg gain=1000 vcmh=1.8 vcml=0.5 vios=0
spice_ignore=true}
C {devices/lab_pin.sym} 650 -1030 0 0 {name=p20 lab=VDD}
C {devices/lab_pin.sym} 650 -830 0 0 {name=p23 lab=VSS}
C {devices/lab_pin.sym} 760 -930 0 1 {name=p24 lab=vout}
C {devices/lab_pin.sym} 530 -940 0 0 {name=p25 lab=VIN}
C {devices/lab_pin.sym} 530 -920 0 0 {name=p26 lab=VREF}
C {devices/code.sym} 40 -220 0 0 {name=sim_vref_sweep only_toplevel=false value="

# Model files
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.options method=gear reltol=1e-6 abstol=1e-12

# Main parameters
.param vdd=1.8 vss=0 vref='900m' vhigh=1.8 vlow=0
.param sin_offset='vdd/2'
.param sin_amp='vdd/2'
.param sin_freq=10e6
.param sin_period='1/sin_freq'
.param tran_step='25e-12'
.param tran_stop_time='sin_period*3'

# Component parameters



# Save settings
.save


# Analysis
.op
.dc V3 0 \{vdd\} \{vdd/20\}
.tran \{tran_step\} \{tran_stop_time\}
.ac dec 50 1e3 1e10

# Start control block
.control


# Run sim
run
write tb_comp.raw

#set appendwrite
#alterparam vref='100m'
#reset
#run
#write tb_comp.raw

#alterparam vref='1.7'
#reset
#run
#write tb_comp.raw



.endc

"}

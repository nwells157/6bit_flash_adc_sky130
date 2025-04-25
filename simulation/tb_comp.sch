v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1410 -710 2210 -310 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=2e-07
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
color="4 5 6 7"
node="vin
vref
vout
pa_m1_s"}
B 2 450 -1280 1250 -880 {flags=graph
y1=-1
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=3
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=1
sim_type=ac
autoload=1
linewidth_mult=2
rawfile=$netlist_dir/tb_comp.raw
color=4
node=vout}
N 80 -340 80 -310 {lab=GND}
N 80 -310 160 -310 {lab=GND}
N 160 -340 160 -310 {lab=GND}
N 80 -440 80 -400 {lab=VDD}
N 160 -440 160 -400 {lab=VSS}
N 340 -120 340 -90 {lab=GND}
N 340 -220 340 -180 {lab=VIN}
N 640 -120 640 -90 {lab=GND}
N 640 -220 640 -180 {lab=VREF}
C {devices/launcher.sym} 90 -40 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/code.sym} 20 -200 0 0 {name=sim_code only_toplevel=false value="

# Model files
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

# Main parameters
.param vdd=1.8 vss=0 vref='vdd/2' vhigh=1.8 vlow=0
.param sin_offset='vdd/2'
.param sin_amp='vdd/2'
.param sin_freq=10Meg
.param sin_period='1/sin_freq'
.param tran_step='sin_period/10'
.param tran_stop_time='sin_period*2'

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




.endc

"}
C {devices/gnd.sym} 110 -310 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 80 -370 0 0 {name=V1 value=vdd savecurrent=false}
C {devices/vsource.sym} 160 -370 0 0 {name=V2 value=vss savecurrent=false}
C {devices/lab_pin.sym} 80 -440 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 -440 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 -220 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {devices/vsource.sym} 340 -150 0 0 {name=V3 value="DC \{sin_offset\} AC 1 SIN(\{sin_offset\} \{sin_amp\} \{sin_freq\})"}
C {devices/gnd.sym} 340 -90 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 640 -90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 640 -150 0 0 {name=V4 value=vref}
C {devices/lab_pin.sym} 640 -220 0 0 {name=p8 sig_type=std_logic lab=VREF}
C {schematics/comp.sym} 650 -560 0 0 {name=xDUT}
C {devices/lab_pin.sym} 500 -590 0 0 {name=p3 lab=VDD}
C {devices/lab_pin.sym} 800 -590 0 1 {name=p4 lab=vout}
C {devices/lab_pin.sym} 500 -570 0 0 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 500 -550 0 0 {name=p10 lab=VIN}
C {devices/lab_pin.sym} 500 -530 0 0 {name=p14 lab=VREF}

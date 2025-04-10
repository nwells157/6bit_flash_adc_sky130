v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 120 -1130 920 -730 {flags=graph
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
node="vin
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_comp_top.raw
autoload=1
linewidth_mult=2}
N 80 -340 80 -310 {lab=GND}
N 80 -310 160 -310 {lab=GND}
N 160 -340 160 -310 {lab=GND}
N 80 -440 80 -400 {lab=VDD}
N 160 -440 160 -400 {lab=VSS}
N 340 -120 340 -90 {lab=GND}
N 340 -220 340 -180 {lab=VIN}
N 640 -120 640 -90 {lab=GND}
N 640 -220 640 -180 {lab=VREF}
N 810 -490 840 -490 {lab=vout}
N 700 -640 700 -610 {lab=VDD}
N 550 -500 580 -500 {lab=VIN}
N 550 -480 580 -480 {lab=VREF}
N 700 -390 700 -360 {lab=VSS}
N 700 -610 700 -590 {lab=VDD}
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
.save all


# Analysis
.op
.tran \{tran_step\} \{tran_stop_time\}

# Start control block
.control

# Run sim
run

# Expressions

# Save expressions

# Write to raw file
write tb_comp_top.raw
# wrdata custom_output.txt



.endc

"}
C {devices/gnd.sym} 110 -310 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 80 -370 0 0 {name=V1 value=vdd savecurrent=false}
C {devices/vsource.sym} 160 -370 0 0 {name=V2 value=vss savecurrent=false}
C {devices/lab_pin.sym} 80 -440 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 -440 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 -220 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {devices/vsource.sym} 340 -150 0 0 {name=V3 value="DC 0 AC 1 SIN(\{sin_offset\} \{sin_amp\} \{sin_freq\})"}
C {devices/gnd.sym} 340 -90 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 640 -90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 640 -150 0 0 {name=V4 value=vref}
C {devices/lab_pin.sym} 640 -220 0 0 {name=p8 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 700 -360 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 840 -490 0 1 {name=p4 lab=vout}
C {devices/lab_pin.sym} 550 -480 0 0 {name=p10 lab=VREF}
C {devices/lab_pin.sym} 550 -500 0 0 {name=p3 lab=VIN}
C {devices/lab_pin.sym} 700 40 2 0 {name=p1 lab=VDD}
C {schematics/ideal_comp.sym} 700 -490 0 0 {name=xDUT}
C {devices/lab_pin.sym} 700 -640 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/noconn.sym} 840 -490 1 0 {name=l3}

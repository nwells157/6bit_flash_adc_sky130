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
x1=3e-08
x2=2.3e-07
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
rawfile=$netlist_dir/tb_comp_stage_top.raw
color="4 5 9 8 7 6"
node="vin
vout0
vout62
vout47
vout31
vout15"}
N 80 -300 80 -270 {lab=GND}
N 80 -270 160 -270 {lab=GND}
N 160 -300 160 -270 {lab=GND}
N 80 -400 80 -360 {lab=VDD}
N 160 -400 160 -360 {lab=VSS}
N 340 -120 340 -90 {lab=GND}
N 340 -220 340 -180 {lab=VIN}
N 610 -460 640 -460 {lab=VIN}
C {code.sym} 60 -200 0 0 {name=sim_code only_toplevel=false value="

# Model files
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

# Main parameters
.param vdd=1.8 vss=0 vhigh=1.8 vlow=0
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
write tb_comp_stage_top.raw
# wrdata custom_output.txt



.endc

"}
C {vsource.sym} 80 -330 0 0 {name=V1 value=vdd savecurrent=false}
C {vsource.sym} 160 -330 0 0 {name=V2 value=vss savecurrent=false}
C {gnd.sym} 120 -270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 80 -400 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 160 -400 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {vsource.sym} 340 -150 0 0 {name=V3 value="DC 0 AC 1 SIN(\{sin_offset\} \{sin_amp\} \{sin_freq\})"}
C {gnd.sym} 340 -90 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 340 -220 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 610 -460 0 0 {name=p3 lab=VIN}
C {devices/launcher.sym} 90 -40 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {comp_stage_top_ideal.sym} 790 -490 0 0 {name=xCOMP_STAGE}
C {ref_ladder_top.sym} 260 -560 0 0 {name=xREF_LADDER}
C {lab_pin.sym} 110 -570 0 0 {name=p9 lab=VDD}
C {lab_pin.sym} 410 -570 0 1 {name=p10 lab=vref[62..0]}
C {lab_pin.sym} 110 -550 0 0 {name=p12 lab=VSS}
C {lab_pin.sym} 640 -520 0 0 {name=p13 lab=VDD}
C {lab_pin.sym} 640 -500 0 0 {name=p14 lab=VSS}
C {lab_pin.sym} 640 -480 0 0 {name=p15 lab=vref[62..0]}
C {lab_pin.sym} 940 -520 0 1 {name=p1 lab=vout[62..0]}

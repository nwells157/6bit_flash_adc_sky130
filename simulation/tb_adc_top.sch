v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 120 -1060 920 -660 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=2.7538282e-05
x2=3.2601853e-05
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="vin
ideal_out"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_adc_top.raw
sim_type=tran
autoload=1}
N 80 -320 80 -290 {lab=GND}
N 80 -290 160 -290 {lab=GND}
N 160 -320 160 -290 {lab=GND}
N 80 -420 80 -380 {lab=VDD}
N 160 -420 160 -380 {lab=VSS}
N 410 -90 410 -60 {lab=GND}
N 410 -190 410 -150 {lab=VIN}
N 300 -90 300 -60 {lab=GND}
N 300 -190 300 -150 {lab=VREF}
C {schematics/adc_top.sym} 880 -390 0 0 {name=xDUT}
C {devices/gnd.sym} 110 -290 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 80 -350 0 0 {name=V1 value=vdd savecurrent=false}
C {devices/vsource.sym} 160 -350 0 0 {name=V2 value=vss savecurrent=false}
C {devices/lab_pin.sym} 80 -420 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 -420 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/code.sym} 80 -190 0 0 {name=sim_code only_toplevel=false value="

# Model files
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

#####################
# Global parameters #
#####################

.param vdd=1.8 vss=0 vref=vdd/2
.param sin_offset=vdd/2 sin_amp=vdd/2 sin_freq=1e6 sin_period= 1/sin_freq
.param tran_step=sin_period/1e2 tran_stop_time=sin_period*100
.param delay=sin_period*1

#####################
# Device parameters #
#####################

# Ideal comparator 
.param vhigh=vdd vlow=vss

# Save nets
.save

# Run setup
.op
.tran \{tran_step\} \{tran_stop_time\} \{delay\}

##################
.control
##################

# Run analysis
run

let lin-tstart = 1u
let lin-stop = 99u
let lin-tstep = 5n
linearize vin ideal_out

# Save expressions


# Write to files
write tb_adc_top.raw
wrdata ideal.txt vin ideal_out


.endc

"}
C {devices/lab_pin.sym} 730 -420 0 0 {name=p2 lab=VDD}
C {devices/lab_pin.sym} 730 -400 0 0 {name=p3 lab=VSS}
C {devices/lab_pin.sym} 730 -380 0 0 {name=p4 lab=VIN}
C {devices/lab_pin.sym} 730 -360 0 0 {name=p5 lab=VREF}
C {devices/lab_pin.sym} 410 -190 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {devices/vsource.sym} 410 -120 0 0 {name=V3 value="DC 0 AC 1 SIN(\{sin_offset\} \{sin_amp\} \{sin_freq\})"}
C {devices/gnd.sym} 410 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 300 -60 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 300 -120 0 0 {name=V4 value=vref}
C {devices/lab_pin.sym} 300 -190 0 0 {name=p8 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 1030 -400 0 1 {name=p6 lab=vref[62..0]}
C {devices/lab_pin.sym} 1030 -380 0 1 {name=p10 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 1030 -420 0 1 {name=p1 lab=OUT[5..0]}
C {devices/lab_pin.sym} 1660 -370 0 1 {name=p12 lab=ideal_out}
C {devices/lab_pin.sym} 1360 -370 0 0 {name=p13 lab=VDD}
C {devices/lab_pin.sym} 1360 -350 0 0 {name=p14 lab=VSS}
C {devices/lab_pin.sym} 1360 -330 0 0 {name=p15 lab=VREF}
C {devices/lab_pin.sym} 1360 -310 0 0 {name=p16 lab=OUT0}
C {devices/lab_pin.sym} 1360 -290 0 0 {name=p17 lab=OUT1}
C {devices/lab_pin.sym} 1360 -270 0 0 {name=p18 lab=OUT2}
C {devices/lab_pin.sym} 1360 -250 0 0 {name=p19 lab=OUT3}
C {devices/lab_pin.sym} 1360 -230 0 0 {name=p20 lab=OUT4}
C {devices/lab_pin.sym} 1360 -210 0 0 {name=p21 lab=OUT5}
C {schematics/ideal_dac.sym} 1510 -290 0 0 {name=xDAC_CHECK model=ideal_dac_cell}
C {schematics/ideal_comp_veriloga.sym} 1500 -660 0 0 {name=xVERILOGA_TEST_COMP}
C {devices/lab_pin.sym} 1350 -690 0 0 {name=p22 lab=VDD}
C {devices/lab_pin.sym} 1350 -670 0 0 {name=p23 lab=VSS}
C {devices/lab_pin.sym} 1350 -650 0 0 {name=p24 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 1350 -630 0 0 {name=p25 lab=VREF}
C {devices/lab_pin.sym} 1650 -690 0 1 {name=p26 lab=veriloga_comp_out}

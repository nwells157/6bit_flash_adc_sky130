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
x1=5.0003355e-09
x2=2e-08
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
N 750 -80 750 -50 {lab=GND}
N 750 -180 750 -140 {lab=clk}
N 1140 -80 1170 -80 {lab=#net1}
N 1250 -80 1280 -80 {lab=#net2}
N 1360 -80 1390 -80 {lab=#net3}
N 1470 -80 1500 -80 {lab=#net4}
C {schematics/adc_top.sym} 880 -390 0 0 {name=xDUT}
C {devices/gnd.sym} 110 -290 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 80 -350 0 0 {name=V1 value=vdd savecurrent=false}
C {devices/vsource.sym} 160 -350 0 0 {name=V2 value=vss savecurrent=false}
C {devices/lab_pin.sym} 80 -420 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 -420 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/code.sym} 80 -190 0 0 {name=sim_code only_toplevel=false value="

# Model files
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.options method=gear reltol=1e-6 abstol=1e-12

#####################
# Global parameters #
#####################

.param vdd=1.8 vss=0 vref=vdd/2
.param sin_offset=vdd/2 sin_amp=vdd/2 sin_freq=200e6 sin_period= 1/sin_freq
.param tran_step=sin_period/1e2 tran_stop_time=sin_period*4
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

setplot tran1

.endc

"}
C {devices/lab_pin.sym} 730 -430 0 0 {name=p2 lab=VDD}
C {devices/lab_pin.sym} 730 -410 0 0 {name=p3 lab=VSS}
C {devices/lab_pin.sym} 730 -390 0 0 {name=p4 lab=VIN}
C {devices/lab_pin.sym} 730 -370 0 0 {name=p5 lab=VREF}
C {devices/lab_pin.sym} 410 -190 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {devices/vsource.sym} 410 -120 0 0 {name=V3 value="DC 0 AC 1 SIN(\{sin_offset\} \{sin_amp\} \{sin_freq\})"}
C {devices/gnd.sym} 410 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 300 -60 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 300 -120 0 0 {name=V4 value=vref}
C {devices/lab_pin.sym} 300 -190 0 0 {name=p8 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 1030 -410 0 1 {name=p6 lab=vref[62..0]}
C {devices/lab_pin.sym} 1030 -390 0 1 {name=p10 lab=comp_out[62..0]}
C {devices/lab_pin.sym} 1030 -430 0 1 {name=p1 lab=OUT[5..0]}
C {devices/lab_pin.sym} 1690 -480 0 1 {name=p12 lab=ideal_out}
C {devices/lab_pin.sym} 1390 -480 0 0 {name=p13 lab=VDD}
C {devices/lab_pin.sym} 1390 -460 0 0 {name=p14 lab=VSS}
C {devices/lab_pin.sym} 1390 -440 0 0 {name=p15 lab=VREF}
C {devices/lab_pin.sym} 1390 -420 0 0 {name=p16 lab=OUT0}
C {devices/lab_pin.sym} 1390 -400 0 0 {name=p17 lab=OUT1}
C {devices/lab_pin.sym} 1390 -380 0 0 {name=p18 lab=OUT2}
C {devices/lab_pin.sym} 1390 -360 0 0 {name=p19 lab=OUT3}
C {devices/lab_pin.sym} 1390 -340 0 0 {name=p20 lab=OUT4}
C {devices/lab_pin.sym} 1390 -320 0 0 {name=p21 lab=OUT5}
C {schematics/ideal_dac.sym} 1540 -400 0 0 {name=xDAC_CHECK model=ideal_dac_cell}
C {devices/launcher.sym} 90 -30 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/vsource.sym} 750 -110 0 0 {name=V5 value="PULSE(0 1.8 0 1p 1p 20n 40n)"}
C {devices/gnd.sym} 750 -50 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 750 -180 0 0 {name=p22 lab=clk}
C {sky130_stdcells/buf_1.sym} 1100 -80 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_2.sym} 1210 -80 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1320 -80 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_8.sym} 1430 -80 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_16.sym} 1540 -80 0 0 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1060 -80 0 0 {name=p24 lab=clk}
C {devices/lab_pin.sym} 1580 -80 0 1 {name=p25 lab=clk_buff}
C {devices/lab_pin.sym} 730 -350 0 0 {name=p23 lab=clk_buff}

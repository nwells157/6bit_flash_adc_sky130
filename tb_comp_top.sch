v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -300 80 -270 {lab=GND}
N 80 -270 160 -270 {lab=GND}
N 160 -300 160 -270 {lab=GND}
N 80 -400 80 -360 {lab=VDD}
N 160 -400 160 -360 {lab=VSS}
N 340 -120 340 -90 {lab=GND}
N 340 -220 340 -180 {lab=VIN}
N 770 -490 800 -490 {lab=vref[62..0]}
N 450 -490 470 -490 {lab=VDD}
N 460 -470 470 -470 {lab=VSS}
N 450 -470 460 -470 {lab=VSS}
N 1370 -510 1390 -510 {lab=vout[62..0]}
N 1050 -510 1070 -510 {lab=VDD}
N 1050 -490 1070 -490 {lab=VSS}
N 1050 -470 1070 -470 {lab=vref[62..0]}
N 1050 -450 1070 -450 {lab=VIN}
C {lab_pin.sym} 1390 -510 0 1 {name=p1 lab=vout[62..0]}
C {lab_pin.sym} 1050 -510 0 0 {name=p2 lab=VDD}
C {lab_pin.sym} 1050 -490 0 0 {name=p3 lab=VSS}
C {lab_pin.sym} 1050 -470 0 0 {name=p4 lab=vref[62..0]}
C {lab_pin.sym} 1050 -450 0 0 {name=p5 lab=VIN}
C {code.sym} 60 -160 0 0 {name=sim_code only_toplevel=false value="

# Model files
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

# Main parameters
.param vdd=1.8 vss=0

# Component parameters
.param sin_offset=0 sin_amp=vdd sin_freq=10M sin_period=1/sin_freq
.param tran_step=1/(sin_freq*10) tran_stop_time=sin_period*2


# Save settings
.save all

# Analysis
.op

# Start control block
.control

# Run tests
run

# Expressions

# Save expressions

# Write to raw file
write tb_comp_top.raw
# wrdata custom_output.txt

.endc

"}
C {vsource.sym} 80 -330 0 0 {name=V1 value=vdd savecurrent=false}
C {vsource.sym} 160 -330 0 0 {name=V2 value=vss savecurrent=false}
C {gnd.sym} 120 -270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 80 -400 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 160 -400 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {ref_ladder_top.sym} 620 -480 0 0 {name=xREF_LADDER}
C {lab_pin.sym} 450 -490 0 0 {name=p8 lab=VDD}
C {lab_pin.sym} 450 -470 0 0 {name=p9 lab=VSS}
C {lab_pin.sym} 800 -490 0 1 {name=p10 lab=vref[62..0]}
C {vsource.sym} 340 -150 0 0 {name=V3 value=DC 0.9 AC SIN(sin_offset, sin_amp, sin_freq)}
C {gnd.sym} 340 -90 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 340 -220 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {comp_top_ideal.sym} 1220 -480 0 0 {name=x1}

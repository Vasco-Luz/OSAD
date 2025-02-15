v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {In order to use the exported netlist, some changes need to be done.
First we need to change the type of symbol from subcircuit to primative.

} 450 -680 0 0 0.4 0.4 {}
T {Now we need to include the exported .spice

} 450 -590 0 0 0.4 0.4 {}
T {The base simulation dir when we simulate from xschem is .xschem, hence why the ../../../
But if we simulate from the script, the simulation dir is the location of the script
so we need to chance the path if we use the script

} 450 -550 0 0 0.4 0.4 {}
T {Forgot the .include} 430 -400 0 0 0.4 0.4 {}
N 230 -0 230 10 {lab=GND}
N 230 -80 230 -60 {lab=VDD}
N 310 -0 310 10 {lab=GND}
N 310 -80 310 -60 {lab=VSS}
N 600 -20 600 20 {lab=VSS}
N 680 60 680 100 {lab=VSS}
N 680 -30 680 0 {lab=#net1}
N 680 -110 680 -90 {lab=#net2}
N 600 -110 600 -80 {lab=#net3}
N 640 -230 640 -190 {lab=VDD}
C {sky130_fd_pr/corner.sym} -130 -60 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 0 -60 0 0 {name=NGSPICE
only_toplevel=true
value="
.param VDD = 5
.param VSS = 0
.param I_ref = 5u
.param Vout = 0


*.include ../../../foss/designs/OSAD/Learning/Current_mirrors/Design_pmos_current_mirror_sky130_5v/pmos_current_mirror_layout/pmos_current_mirror.spice
.include ../pmos_current_mirror_layout/pmos_current_mirror.spice

.control
op
dc V3 0 5 0.001
plot i(Vmeas)
wrdata current_tb.csv i(Vmeas)
.endc
" }
C {vsource.sym} 310 -30 0 0 {name=V1 value="VSS" savecurrent=false}
C {isource.sym} 600 -50 0 0 {name=I0 value="I_ref"}
C {vsource.sym} 230 -30 0 0 {name=V2 value="VDD" savecurrent=false}
C {gnd.sym} 310 10 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 640 -230 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 230 10 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 310 -80 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 20 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {vsource.sym} 680 30 0 0 {name=V3 value="Vout" savecurrent=false}
C {lab_pin.sym} 680 100 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {ammeter.sym} 680 -60 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {pmos_current_mirror.sym} 640 -130 0 0 {name=x1}
C {lab_pin.sym} 230 -80 0 0 {name=p4 sig_type=std_logic lab=VDD}

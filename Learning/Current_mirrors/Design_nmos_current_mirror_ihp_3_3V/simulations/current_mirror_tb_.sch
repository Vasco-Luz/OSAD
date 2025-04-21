v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {There was a problem including the spice file of the exported current mirror
the solution i found was to include it directly into the sch} -210 -660 0 0 0.4 0.4 {}
N -180 -10 -180 10 {
lab=GND}
N -180 -100 -180 -70 {lab=VDD}
N -90 -10 -90 10 {
lab=GND}
N -90 -100 -90 -70 {lab=VSS}
N -250 -420 -250 -400 {lab=VDD}
N 30 -100 30 -70 {lab=Vout}
N 30 -10 30 10 {
lab=GND}
N -150 -470 -150 -410 {lab=Vout}
N -150 -350 -150 -300 {lab=#net1}
N -250 -340 -250 -300 {lab=#net2}
N -200 -200 -200 -180 {lab=VSS}
C {devices/code_shown.sym} -1020 -50 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -1030 -490 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.param mm_ok=1
.param mc_ok=1
.control



save all 
op
*dc V3 0 3.3 0.001 
*plot i(Vmeas)
*wrdata current_mirror.csv i(Vmeas)
.endc




"}
C {devices/gnd.sym} -180 10 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -180 -40 0 0 {name=V1 value=3.3}
C {devices/lab_pin.sym} -180 -100 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -90 10 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -90 -40 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} -90 -100 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {isource.sym} -250 -370 0 0 {name=I0 value=5u}
C {devices/lab_pin.sym} -250 -420 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {ammeter.sym} -150 -380 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 30 -40 0 0 {name=V3 value=1.65}
C {devices/lab_pin.sym} 30 -100 2 0 {name=p6 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 30 10 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -150 -470 2 0 {name=p7 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -200 -180 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {/foss/designs/OSAD/Learning/Current_mirrors/Design_nmos_current_mirror_ihp_3_3V/simulations/nmos_current_mirror.sym} -200 -240 0 0 {name=x1}

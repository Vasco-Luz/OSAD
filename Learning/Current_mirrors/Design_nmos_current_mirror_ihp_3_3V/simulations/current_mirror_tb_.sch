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
N 490 -390 490 -370 {lab=VDD}
N 30 -100 30 -70 {lab=Vout}
N 30 -10 30 10 {
lab=GND}
N 590 -440 590 -380 {lab=Vout}
N 590 -320 590 -270 {lab=#net1}
N 490 -310 490 -270 {lab=#net2}
N 540 -170 540 -150 {lab=VSS}
C {devices/code_shown.sym} -1020 -50 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -1200 -1000 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.param mm_ok=1
.param mc_ok=1
.control



save all 
op
dc V3 0 3.3 0.001 
plot i(Vmeas)
wrdata current_mirror.csv i(Vmeas)
.endc


* NGSPICE file created from TOP.ext - technology: ihp-sg13g2

.subckt nmos_current_mirror VSS Iref Iout
X0 VSS Iref Iout VSUB sg13_hv_nmos ad=0.34p pd=2.68u as=0.34p ps=2.68u w=1u l=2.2u
X1 Iout Iref VSS VSUB sg13_hv_nmos ad=0.47302p pd=5.005u as=40.72922p ps=0.14101m w=1u l=2.2u
X2 VSS Iref Iref VSUB sg13_hv_nmos ad=0 pd=0 as=12.88392p ps=59.825u w=1u l=2.2u
X3 Iref VSS VSS VSUB sg13_hv_nmos ad=0 pd=0 as=0 ps=0 w=1u l=2.2u
X4 VSS Iref Iref VSUB sg13_hv_nmos ad=0 pd=0 as=0 ps=0 w=1u l=2.2u
X5 Iref VSS VSS VSUB sg13_hv_nmos ad=0 pd=0 as=0 ps=0 w=1u l=2.2u
X6 VSS Iref Iout VSUB sg13_hv_nmos ad=0 pd=0 as=0 ps=0 w=1u l=2.2u
X7 Iout Iref VSS VSUB sg13_hv_nmos ad=0 pd=0 as=0 ps=0 w=1u l=2.2u
X8 Iref VSS VSS VSUB sg13_hv_nmos ad=0 pd=0 as=0 ps=0 w=1u l=2.2u
X9 VSS Iref Iref VSUB sg13_hv_nmos ad=0 pd=0 as=0 ps=0 w=1u l=2.2u
X10 VSS Iref Iref VSUB sg13_hv_nmos ad=0 pd=0 as=0 ps=0 w=1u l=2.2u
X11 Iref VSS VSS VSUB sg13_hv_nmos ad=0 pd=0 as=0 ps=0 w=1u l=2.2u
C0 VSS Iref 3.04697f
C1 Iref VSUB 5.47165f
C2 VSS VSUB 6.12918f
.ends


"}
C {devices/gnd.sym} -180 10 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -180 -40 0 0 {name=V1 value=3.3}
C {devices/lab_pin.sym} -180 -100 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -90 10 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -90 -40 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} -90 -100 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {isource.sym} 490 -340 0 0 {name=I0 value=5u}
C {devices/lab_pin.sym} 490 -390 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {ammeter.sym} 590 -350 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 30 -40 0 0 {name=V3 value=1.65}
C {devices/lab_pin.sym} 30 -100 2 0 {name=p6 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 30 10 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 590 -440 2 0 {name=p7 sig_type=std_logic lab=Vout}
C {nmos_current_mirror.sym} 540 -210 0 0 {name=x1}
C {devices/lab_pin.sym} 540 -150 2 0 {name=p3 sig_type=std_logic lab=VSS}

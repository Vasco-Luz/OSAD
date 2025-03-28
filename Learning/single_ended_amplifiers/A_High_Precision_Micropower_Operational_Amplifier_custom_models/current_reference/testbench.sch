v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 290 480 350 {
lab=GND}
N 480 190 480 230 {lab=VDD}
N 610 290 610 350 {
lab=GND}
N 610 190 610 230 {lab=#net1}
N 910 50 910 100 {lab=VDD}
N 840 130 870 130 {lab=VDD}
N 840 50 840 130 {lab=VDD}
N 840 50 910 50 {lab=VDD}
N 910 300 910 390 {lab=VSS}
N 910 160 910 240 {lab=#net2}
C {devices/vsource.sym} 480 260 0 0 {name=VDD value=5}
C {devices/gnd.sym} 480 350 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 480 190 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 610 260 0 0 {name=VSS value=0}
C {devices/gnd.sym} 610 350 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 620 190 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 170 30 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
dc temp -40 125 1
plot i(Vmeas)
endc
"}
C {njfet.sym} 890 130 0 0 {name=J1 model=JM1 area=1 m=1}
C {devices/lab_pin.sym} 910 50 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {ammeter.sym} 910 270 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 910 390 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/code.sym} -10 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.model JM1 NJF (VTO=-2.0 BETA=1.0E-4 LAMBDA=0.02 RD=10 RS=5 CGS=5pF CGD=3pF PB=0.7 IS=1E-14 FC=0.5)

"
spice_ignore=false}

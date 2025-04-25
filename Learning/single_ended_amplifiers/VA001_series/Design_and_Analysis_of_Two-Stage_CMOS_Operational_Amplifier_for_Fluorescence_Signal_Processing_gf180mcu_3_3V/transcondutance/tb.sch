v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 780 -290 1000 -290 {lab=VDD}
N 410 -160 410 -130 {lab=VDD}
N 410 -70 410 -40 {lab=GND}
N 500 -160 500 -130 {lab=VSS}
N 500 -70 500 -40 {lab=GND}
N 780 -290 780 -260 {lab=VDD}
N 1000 -290 1000 -260 {lab=VDD}
N 820 -260 960 -260 {lab=#net1}
N 890 -260 890 -180 {lab=#net1}
N 780 -180 890 -180 {lab=#net1}
N 780 -230 780 -180 {lab=#net1}
N 780 -180 780 -130 {lab=#net1}
N 1000 -230 1000 -180 {lab=#net2}
N 1000 -180 1000 -130 {lab=#net2}
N 780 -70 780 -20 {lab=#net3}
N 1000 -130 1000 -20 {lab=#net2}
N 820 10 960 10 {lab=#net2}
N 900 -50 900 10 {lab=#net2}
N 900 -50 1000 -50 {lab=#net2}
N 820 170 960 170 {lab=#net4}
N 780 40 780 140 {lab=#net5}
N 1000 40 1000 140 {lab=#net4}
N 900 110 900 170 {lab=#net4}
N 900 110 1000 110 {lab=#net4}
N 780 200 780 270 {lab=#net6}
N 780 330 780 380 {lab=VSS}
N 780 380 1000 380 {lab=VSS}
N 1000 200 1000 380 {lab=VSS}
N 760 300 760 380 {lab=VSS}
N 760 380 780 380 {lab=VSS}
N 650 10 780 10 {lab=VSS}
N 650 10 650 380 {lab=VSS}
N 650 380 760 380 {lab=VSS}
N 650 170 780 170 {lab=VSS}
N 1000 10 1130 10 {lab=VSS}
N 1130 10 1130 380 {lab=VSS}
N 1000 380 1130 380 {lab=VSS}
N 1000 170 1130 170 {lab=VSS}
C {devices/code_shown.sym} -90 -140 0 0 {name=NGSPICE only_toplevel=true 
name=COMMANDS
simulator=ngspice
place=end
value="

.param temp=27
.control
save all 
dc temp -50 125 1
plot i(Vmeas)
dc V1 0 3.3 0.001
plot i(Vmeas)
op

.endc
"}
C {devices/code_shown.sym} -220 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
"}
C {devices/ammeter.sym} 780 -100 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 410 -100 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/lab_pin.sym} 410 -160 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 410 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 500 -100 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 500 -160 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 500 -40 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 890 -290 1 0 {name=l5 sig_type=std_logic lab=VDD}
C {symbols/ppolyf_u_2k_6p0.sym} 780 300 0 0 {name=R1
W=1e-6
L=16e-6
model=ppolyf_u_2k_6p0
spiceprefix=X
m=1}
C {devices/lab_pin.sym} 870 380 3 0 {name=l6 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 800 -260 0 1 {name=M2
L=2u
W=1u
nf=2
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 800 10 0 1 {name=M4
L=2u
W=1u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 800 170 0 1 {name=M5
L=2u
W=0.5u
nf=2
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 980 170 0 0 {name=M6
L=2u
W=0.5u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 980 10 0 0 {name=M3
L=2u
W=1u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 980 -260 0 0 {name=M1
L=2u
W=1u
nf=2
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}

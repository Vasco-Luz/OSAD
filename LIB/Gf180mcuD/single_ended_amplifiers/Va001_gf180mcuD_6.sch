v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -430 70 -360 70 {
lab=VDD}
N -430 110 -360 110 {
lab=VSS}
N -430 150 -360 150 {
lab=VIN-}
N -430 190 -360 190 {
lab=VIN+}
N -430 230 -360 230 {
lab=VOUT}
N -20 -190 200 -190 {lab=VDD}
N -20 -190 -20 -160 {lab=VDD}
N 200 -190 200 -160 {lab=VDD}
N 20 -160 160 -160 {lab=VB1}
N 90 -160 90 -80 {lab=VB1}
N -20 -80 90 -80 {lab=VB1}
N -20 -130 -20 -80 {lab=VB1}
N -20 -80 -20 -30 {lab=VB1}
N 200 -130 200 -80 {lab=VB2}
N 200 -80 200 -30 {lab=VB2}
N -20 30 -20 80 {lab=VB1}
N 200 -30 200 80 {lab=VB2}
N 20 110 160 110 {lab=VB2}
N 100 50 100 110 {lab=VB2}
N 100 50 200 50 {lab=VB2}
N 20 270 160 270 {lab=#net1}
N -20 140 -20 240 {lab=#net2}
N 200 140 200 240 {lab=#net1}
N 100 210 100 270 {lab=#net1}
N 100 210 200 210 {lab=#net1}
N -20 300 -20 370 {lab=#net3}
N -20 430 -20 480 {lab=VSS}
N -20 480 200 480 {lab=VSS}
N 200 300 200 480 {lab=VSS}
N -40 400 -40 480 {lab=VSS}
N -40 480 -20 480 {lab=VSS}
N -150 110 -20 110 {lab=VSS}
N -150 110 -150 480 {lab=VSS}
N -150 480 -40 480 {lab=VSS}
N -150 270 -20 270 {lab=VSS}
N 200 110 330 110 {lab=VSS}
N 330 110 330 480 {lab=VSS}
N 200 480 330 480 {lab=VSS}
N 200 270 330 270 {lab=VSS}
N -20 -30 -20 30 {lab=VB1}
N 650 -180 650 -150 {lab=VDD}
N 200 -190 650 -190 {lab=VDD}
N 650 -190 650 -180 {lab=VDD}
N 1240 -180 1240 -150 {lab=VDD}
N 1240 -190 1240 -180 {lab=VDD}
N 650 -190 1240 -190 {lab=VDD}
N 580 -150 610 -150 {lab=VB1}
N 1160 -150 1200 -150 {lab=VB1}
N 500 -60 500 -30 {lab=#net4}
N 500 -80 500 -60 {lab=#net4}
N 500 -80 650 -80 {lab=#net4}
N 650 -120 650 -80 {lab=#net4}
N 650 -80 800 -80 {lab=#net4}
N 800 -60 800 -30 {lab=#net4}
N 800 -80 800 -60 {lab=#net4}
N 400 -30 460 -30 {lab=VIN-}
N 840 -30 900 -30 {lab=VIN+}
N 500 -0 500 230 {lab=#net5}
N 500 260 500 290 {lab=VSS}
N 500 290 500 480 {lab=VSS}
N 320 480 500 480 {lab=VSS}
N 800 0 800 230 {lab=#net6}
N 540 260 760 260 {lab=#net5}
N 500 160 660 160 {lab=#net5}
N 660 160 660 260 {lab=#net5}
N 800 260 800 480 {lab=VSS}
N 500 480 800 480 {lab=VSS}
N 1240 -120 1240 110 {lab=VOUT}
N 1240 110 1240 240 {lab=VOUT}
N 1240 300 1240 480 {lab=VSS}
N 800 480 1240 480 {lab=VSS}
N 1240 270 1240 300 {lab=VSS}
N 920 270 1200 270 {lab=#net6}
N 920 180 920 270 {lab=#net6}
N 800 180 920 180 {lab=#net6}
N 920 180 940 180 {lab=#net6}
N 970 180 970 480 {lab=VSS}
N 970 100 970 140 {lab=VB2}
N 1000 180 1040 180 {lab=#net7}
N 1100 180 1240 180 {lab=VOUT}
C {devices/iopin.sym} -430 70 0 1 {name=p15 lab=VDD}
C {devices/lab_pin.sym} -360 70 2 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -430 110 0 1 {name=p17 lab=VSS}
C {devices/lab_pin.sym} -360 110 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -430 150 0 1 {name=p19 lab=VIN-}
C {devices/lab_pin.sym} -360 150 2 0 {name=p20 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -430 190 0 1 {name=p21 lab=VIN+}
C {devices/lab_pin.sym} -360 190 2 0 {name=p22 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -430 230 0 1 {name=p23 lab=VOUT}
C {devices/lab_pin.sym} -360 230 2 0 {name=p24 sig_type=std_logic lab=VOUT}
C {symbols/pfet_06v0.sym} 180 -160 0 0 {name=M1
L=2.2u
W=0.5u
nf=6
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 0 -160 0 1 {name=M2
L=2.2u
W=0.5u
nf=6
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {devices/lab_pin.sym} 100 -190 1 0 {name=l5 sig_type=std_logic lab=VDD}
C {symbols/nfet_06v0.sym} 180 110 0 0 {name=M3
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
model=nfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 0 110 0 1 {name=M4
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
model=nfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 0 270 0 1 {name=M6
L=3u
W=0.4u
nf=2
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/ppolyf_u_2k_6p0.sym} -20 400 0 0 {name=R1
W=1e-6
L=24.6e-6
model=ppolyf_u_2k_6p0
spiceprefix=X
m=1}
C {devices/lab_pin.sym} 70 480 3 0 {name=l6 sig_type=std_logic lab=VSS}
C {symbols/nfet_06v0.sym} 180 270 0 0 {name=M5
L=3u
W=0.4u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 630 -150 0 0 {name=M7
L=2.2u
W=0.5u
nf=6
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {devices/lab_pin.sym} 90 -80 2 0 {name=l1 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 580 -150 2 1 {name=l2 sig_type=std_logic lab=VB1}
C {symbols/pfet_06v0.sym} 1220 -150 0 0 {name=M8
L=2.2u
W=0.5u
nf=6
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {devices/lab_pin.sym} 1160 -150 2 1 {name=l3 sig_type=std_logic lab=VB1}
C {symbols/pfet_06v0.sym} 480 -30 0 0 {name=M9
L=0.9u
W=8u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -30 2 1 {name=p1 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 900 -30 2 0 {name=p2 sig_type=std_logic lab=VIN+}
C {symbols/nfet_06v0.sym} 520 260 0 1 {name=M11
L=2u
W=3.5u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 820 -30 0 1 {name=M10
L=0.9u
W=8u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 780 260 0 0 {name=M12
L=2u
W=3.5u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 1220 270 0 0 {name=M13
L=0.8u
W=5u
nf=2
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 970 160 1 0 {name=M14
L=3.7u
W=1u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_pin.sym} 200 -50 2 0 {name=l4 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 970 100 2 0 {name=l7 sig_type=std_logic lab=VB2}
C {symbols/cap_mim_2f0fF.sym} 1070 180 1 0 {name=C2
W=7e-6
L=7e-6
model=cap_mim_2f0fF
spiceprefix=X
m=4}
C {devices/lab_pin.sym} 1240 70 2 0 {name=p3 sig_type=std_logic lab=VOUT}

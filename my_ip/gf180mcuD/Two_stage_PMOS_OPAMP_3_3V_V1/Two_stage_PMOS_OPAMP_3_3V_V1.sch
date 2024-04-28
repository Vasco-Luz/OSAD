v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -300 10 -290 {
lab=VDD}
N 10 -300 190 -300 {
lab=VDD}
N 190 -300 190 -290 {
lab=VDD}
N 10 -290 10 -260 {
lab=VDD}
N 190 -290 190 -260 {
lab=VDD}
N 50 -260 150 -260 {
lab=#net1}
N 10 -230 10 -160 {
lab=#net1}
N 50 -130 150 -130 {
lab=#net2}
N 190 -230 190 -160 {
lab=#net2}
N 100 -260 100 -210 {
lab=#net1}
N 10 -210 100 -210 {
lab=#net1}
N 100 -180 100 -130 {
lab=#net2}
N 100 -180 190 -180 {
lab=#net2}
N 50 0 150 0 {
lab=#net3}
N 10 -100 10 -30 {
lab=#net4}
N 190 -100 190 -30 {
lab=#net3}
N 100 -50 100 0 {
lab=#net3}
N 100 -50 190 -50 {
lab=#net3}
N 10 160 10 200 {
lab=VSS}
N -20 130 -10 130 {
lab=VSS}
N 10 30 10 100 {
lab=#net5}
N 190 30 190 100 {
lab=VSS}
N 190 160 190 200 {
lab=VSS}
N 190 100 190 160 {
lab=VSS}
N -30 0 -20 0 {
lab=VSS}
N -20 0 10 0 {
lab=VSS}
N -30 -130 -20 -130 {
lab=VSS}
N -20 -130 10 -130 {
lab=VSS}
N 190 -130 220 -130 {
lab=VSS}
N 220 -130 230 -130 {
lab=VSS}
N 190 0 230 0 {
lab=VSS}
N 190 -300 390 -300 {
lab=VDD}
N 390 -300 390 -260 {
lab=VDD}
N 100 -210 350 -210 {
lab=#net1}
N 350 -260 350 -210 {
lab=#net1}
N 390 -230 390 -210 {
lab=#net6}
N 390 -150 390 -140 {
lab=#net6}
N 390 -140 430 -140 {
lab=#net6}
N 430 -140 500 -140 {
lab=#net6}
N 500 -140 500 -120 {
lab=#net6}
N 320 -140 390 -140 {
lab=#net6}
N 320 -140 320 -120 {
lab=#net6}
N 320 -90 350 -90 {
lab=#net6}
N 350 -140 350 -90 {
lab=#net6}
N 470 -90 500 -90 {
lab=#net6}
N 470 -140 470 -90 {
lab=#net6}
N 270 -90 280 -90 {
lab=VIN-}
N 540 -90 550 -90 {
lab=VIN+}
N 320 -60 320 20 {
lab=#net7}
N 320 20 320 110 {
lab=#net7}
N 500 -60 500 20 {
lab=VOUT_1}
N 500 20 500 110 {
lab=VOUT_1}
N 360 140 460 140 {
lab=#net7}
N 410 70 410 140 {
lab=#net7}
N 320 70 410 70 {
lab=#net7}
N 320 170 320 200 {
lab=VSS}
N 190 200 320 200 {
lab=VSS}
N 320 200 500 200 {
lab=VSS}
N 500 170 500 200 {
lab=VSS}
N 320 140 320 170 {
lab=VSS}
N 500 140 500 170 {
lab=VSS}
N 390 -300 750 -300 {
lab=VDD}
N 750 -300 750 -290 {
lab=VDD}
N 750 -290 750 -260 {
lab=VDD}
N 350 -220 710 -220 {
lab=#net1}
N 710 -260 710 -220 {
lab=#net1}
N 750 -230 750 100 {
lab=VOUT}
N 750 100 750 110 {
lab=VOUT}
N 500 200 750 200 {
lab=VSS}
N 750 170 750 200 {
lab=VSS}
N 660 140 710 140 {
lab=VOUT_1}
N 500 90 570 90 {
lab=VOUT_1}
N 570 90 570 140 {
lab=VOUT_1}
N 570 140 660 140 {
lab=VOUT_1}
N 750 140 750 170 {
lab=VSS}
N 10 200 190 200 {
lab=VSS}
N 740 -20 750 -20 {
lab=VOUT}
N 590 -20 590 140 {
lab=VOUT_1}
N 590 -20 600 -20 {
lab=VOUT_1}
N 660 -20 680 -20 {
lab=#net8}
N 630 -60 630 -40 {
lab=VSS}
N -480 -280 -410 -280 {
lab=VDD}
N -480 -240 -410 -240 {
lab=VSS}
N -480 -200 -410 -200 {
lab=VIN-}
N -480 -160 -410 -160 {
lab=VIN+}
N -480 -120 -410 -120 {
lab=VOUT}
N 390 -210 390 -150 {
lab=#net6}
C {symbols/pfet_03v3.sym} 30 -260 0 1 {name=M2
L=3u
W=2u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 30 -130 0 1 {name=M4
L=4u
W=2u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 170 0 0 0 {name=M5
L=4u
W=2.1u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 30 0 0 1 {name=M6
L=4u
W=2.1u
nf=2
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/ppolyf_u_3k.sym} 10 130 0 0 {name=R1
W=1e-6
L=10e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {devices/lab_pin.sym} 190 200 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -30 0 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -30 -130 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 230 -130 0 1 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 230 0 0 1 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 130 -300 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 170 -260 0 0 {name=M1
L=3u
W=2u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 370 -260 0 0 {name=M7
L=3u
W=2u
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
C {symbols/nfet_03v3.sym} 170 -130 0 0 {name=M3
L=4u
W=2u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 520 -90 0 1 {name=M9
L=0.3u
W=10u
nf=8
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
C {devices/lab_pin.sym} 550 -90 0 1 {name=p14 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 270 -90 0 0 {name=p15 sig_type=std_logic lab=VIN-
}
C {symbols/nfet_03v3.sym} 340 140 0 1 {name=M10
L=3u
W=4u
nf=6
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 480 140 0 0 {name=M11
L=3u
W=4u
nf=6
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 300 -90 0 0 {name=M8
L=0.3u
W=10u
nf=8
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
C {devices/lab_pin.sym} 500 0 2 0 {name=p16 sig_type=std_logic lab=VOUT_1}
C {symbols/nfet_03v3.sym} 730 140 0 0 {name=M13
L=3u
W=4u
nf=6
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
C {devices/lab_pin.sym} 750 -90 2 0 {name=p17 sig_type=std_logic lab=VOUT}
C {symbols/pfet_03v3.sym} 730 -260 0 0 {name=M12
L=3u
W=2u
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
C {symbols/cap_mim_2f0fF.sym} 710 -20 1 0 {name=C1
W=8e-6
L=8e-6
model=cap_mim_2f0fF
spiceprefix=X
m=8}
C {devices/lab_pin.sym} -20 130 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {symbols/ppolyf_u_3k.sym} 630 -20 1 0 {name=R2
W=1e-6
L=4e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {devices/lab_pin.sym} 630 -60 1 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/iopin.sym} -480 -280 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -410 -280 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -480 -240 0 1 {name=p7 lab=VSS}
C {devices/lab_pin.sym} -410 -240 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -480 -200 0 1 {name=p13 lab=VIN-}
C {devices/lab_pin.sym} -410 -200 2 0 {name=p18 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -480 -160 0 1 {name=p19 lab=VIN+}
C {devices/lab_pin.sym} -410 -160 2 0 {name=p20 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -480 -120 0 1 {name=p21 lab=VOUT}
C {devices/lab_pin.sym} -410 -120 2 0 {name=p22 sig_type=std_logic lab=VOUT}

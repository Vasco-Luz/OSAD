v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -490 -60 -490 0 {
lab=GND}
N -490 -160 -490 -120 {
lab=VDD}
N -580 -60 -580 0 {
lab=GND}
N -580 -160 -580 -120 {
lab=VSS}
N 160 -110 220 -110 {lab=VSS}
N 220 -110 220 120 {lab=VSS}
N 160 -80 160 10 {lab=#net1}
N 160 120 220 120 {lab=VSS}
N 160 70 160 120 {lab=VSS}
N -950 440 -950 480 {
lab=VN}
N 500 -330 500 -270 {lab=VOUT}
N 160 -270 160 -140 {lab=VOUT}
N 160 -270 500 -270 {lab=VOUT}
N 160 -390 160 -270 {lab=VOUT}
N 160 -640 500 -640 {lab=VDD}
N 160 -660 160 -640 {lab=VDD}
N 500 -270 500 -180 {lab=VOUT}
N 500 -120 500 120 {lab=VSS}
N 160 -580 160 -450 {lab=#net2}
N 500 -640 500 -390 {lab=VDD}
N -720 440 -660 440 {lab=VSS}
N -660 440 -660 670 {lab=VSS}
N -720 470 -720 560 {lab=#net3}
N -720 670 -660 670 {lab=VSS}
N -720 640 -720 670 {lab=VSS}
N -720 260 -720 310 {lab=VDD}
N -720 370 -720 410 {lab=#net4}
N -290 450 -290 490 {lab=#net5}
N -290 370 -290 390 {lab=#net6}
N -290 550 -290 630 {lab=VSS}
N -800 540 -800 640 {lab=VSS}
N -800 640 -720 640 {lab=VSS}
N -720 620 -720 640 {lab=VSS}
N -950 440 -900 440 {lab=VN}
N -450 420 -420 420 {lab=VP}
N -360 420 -330 420 {lab=#net7}
N -950 540 -950 610 {lab=VSS}
N -450 530 -450 550 {lab=VSS}
N -450 420 -450 470 {lab=VP}
N -800 440 -760 440 {lab=#net8}
N -800 440 -800 480 {lab=#net8}
N -840 440 -800 440 {lab=#net8}
N 80 -420 120 -420 {lab=#net9}
N 100 -110 120 -110 {lab=#net10}
N -0 -110 20 -110 {lab=VN}
N 100 -110 100 -60 {lab=#net10}
N 80 -110 100 -110 {lab=#net10}
N 100 -0 100 120 {lab=VSS}
N 100 120 160 120 {lab=VSS}
C {sg13g2_pr/npn13G2v.sym} 140 -110 0 0 {name=Q2
model=npn13G2v
spiceprefix=X
Nx=1
}
C {devices/vsource.sym} -490 -90 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} -490 0 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -760 -560 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerHBT.lib hbt_typ
"}
C {devices/code_shown.sym} -760 -490 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {devices/code_shown.sym} -1140 -210 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
.param mc_ok = 0
save all
dc V5 0 3.3 0.1
plot i(Vmeas) i(Vmeas1)
tran 10p 10u
plot i(Vmeas) i(Vmeas1)
plot v(VN) v(VP)
plot v(VOUT)


.endc
"}
C {devices/vsource.sym} -580 -90 0 0 {name=V2 value=0}
C {devices/gnd.sym} -580 0 0 0 {name=l1 lab=GND
value=0}
C {lab_pin.sym} -580 -160 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -490 -160 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {sg13g2_pr/rsil.sym} 160 40 0 0 {name=R1
w=0.5e-6
l=5.5e-6
model=rsil
spiceprefix=X
b=0
m=1
}
C {lab_pin.sym} 160 -660 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -110 0 0 {name=p6 sig_type=std_logic lab=VN}
C {lab_pin.sym} 0 -420 0 0 {name=p7 sig_type=std_logic lab=VP}
C {lab_pin.sym} 500 120 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {sg13g2_pr/npn13G2v.sym} -740 440 0 0 {name=Q3
model=npn13G2v
spiceprefix=X
Nx=2}
C {lab_pin.sym} -720 670 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -720 260 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {ammeter.sym} -720 340 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -760 -410 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {sg13g2_pr/cap_cmim.sym} 500 -360 0 0 {name=C3 model=cap_cmim w=41.0e-6 l=41.0e-6 MF=4 spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 500 -150 0 0 {name=C1 model=cap_cmim w=41.0e-6 l=41.0e-6 MF=4 spiceprefix=X}
C {sg13g2_pr/pnpMPA.sym} -310 420 0 0 {name=Q4
model=pnpMPA
spiceprefix=X
w=1.0e-6
l=3.0e-6
m=4
}
C {lab_pin.sym} -290 310 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {ammeter.sym} -290 520 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} -290 630 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {sg13g2_pr/rppd.sym} -720 590 0 0 {name=R3
w=0.5e-6
l=2.1e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rppd.sym} -290 340 0 0 {name=R4
w=0.5e-6
l=0.61e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/pnpMPA.sym} 140 -420 0 0 {name=Q1
model=pnpMPA
spiceprefix=X
w=1.0e-6
l=3.0e-6
m=4
}
C {sg13g2_pr/rppd.sym} 160 -610 0 0 {name=R2
w=0.5e-6
l=0.61e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/cap_cmim.sym} -800 510 0 0 {name=C2 model=cap_cmim w=15.0e-6 l=15.0e-6 MF=4 spiceprefix=X}
C {res.sym} -870 440 1 0 {name=R5
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} -390 420 1 0 {name=R6
value=10
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -950 510 0 0 {name=V19 value="PULSE(0 3.3 50n 100p 100p 450n 1000n)"}
C {lab_pin.sym} -450 550 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -950 610 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 500 -310 2 0 {name=p16 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -450 500 0 0 {name=V3 value="PULSE(3.3 0 0n 100p 100p 450n 1000n)"}
C {lab_pin.sym} -950 440 0 0 {name=p18 sig_type=std_logic lab=VN}
C {lab_pin.sym} -450 420 0 0 {name=p12 sig_type=std_logic lab=VP}
C {res.sym} 50 -420 1 0 {name=R7
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 50 -110 1 0 {name=R8
value=10
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/cap_cmim.sym} 100 -30 0 0 {name=C4 model=cap_cmim w=15.0e-6 l=15.0e-6 MF=4 spiceprefix=X}
C {lab_pin.sym} 190 120 3 0 {name=p3 sig_type=std_logic lab=VSS}

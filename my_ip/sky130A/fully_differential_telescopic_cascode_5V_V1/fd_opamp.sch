v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -110 -40 -110 {
lab=VDD}
N -110 -70 -40 -70 {
lab=VSS}
N -110 -30 -40 -30 {
lab=VIN+}
N -110 10 -40 10 {
lab=VOUT+}
N -110 50 -40 50 {
lab=VIN-}
N -110 90 -40 90 {
lab=VOUT-}
N 430 -370 430 -350 {
lab=VDD}
N 430 -370 670 -370 {
lab=VDD}
N 670 -370 670 -350 {
lab=VDD}
N 470 -320 630 -320 {
lab=VB3}
N 470 -160 630 -160 {
lab=VB2}
N 430 -290 430 -190 {
lab=#net1}
N 670 -290 670 -190 {
lab=#net2}
N 400 -160 430 -160 {
lab=VDD}
N 400 -370 400 -160 {
lab=VDD}
N 400 -370 430 -370 {
lab=VDD}
N 400 -320 430 -320 {
lab=VDD}
N 670 -320 700 -320 {
lab=VDD}
N 670 -160 700 -160 {
lab=VDD}
N 700 -370 700 -160 {
lab=VDD}
N 670 -370 700 -370 {
lab=VDD}
N 430 -130 430 -60 {
lab=#net3}
N 670 -130 670 -60 {
lab=VB3}
N 550 -320 550 -110 {
lab=VB3}
N 550 -110 670 -110 {
lab=VB3}
N 590 -160 590 20 {
lab=VB2}
N 590 20 670 20 {
lab=VB2}
N 670 0 670 20 {
lab=VB2}
N 430 0 430 110 {
lab=#net4}
N 670 20 670 110 {
lab=VB2}
N 470 140 630 140 {
lab=#net3}
N 430 -80 540 -80 {
lab=#net3}
N 540 -80 540 140 {
lab=#net3}
N 670 140 750 140 {
lab=VSS}
N 350 140 430 140 {
lab=VSS}
N 470 320 630 320 {
lab=#net4}
N 670 320 750 320 {
lab=VSS}
N 350 320 430 320 {
lab=VSS}
N 430 170 430 290 {
lab=#net5}
N 670 170 670 290 {
lab=#net6}
N 520 80 520 320 {
lab=#net4}
N 430 80 520 80 {
lab=#net4}
N 670 350 670 420 {
lab=#net7}
N 430 350 430 560 {
lab=VSS}
N 430 560 670 560 {
lab=VSS}
N 670 480 670 560 {
lab=VSS}
C {devices/iopin.sym} -110 -110 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -40 -110 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -110 -70 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -40 -70 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -110 -30 0 1 {name=p12 lab=VIN+
}
C {devices/lab_pin.sym} -40 -30 2 0 {name=p13 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -110 10 0 1 {name=p19 lab=VOUT+}
C {devices/lab_pin.sym} -40 10 2 0 {name=p20 sig_type=std_logic lab=VOUT+}
C {devices/iopin.sym} -110 50 0 1 {name=p2 lab=VIN-
}
C {devices/lab_pin.sym} -40 50 2 0 {name=p3 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -110 90 0 1 {name=p5 lab=VOUT-}
C {devices/lab_pin.sym} -40 90 2 0 {name=p8 sig_type=std_logic lab=VOUT-}
C {devices/ngspice_get_value.sym} 360 -300 0 1 {name=r14 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_g5v0d10v5[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 370 -380 0 1 {name=r20 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_g5v0d10v5[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 370 -350 0 1 {name=r21 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_g5v0d10v5[vgs])
descr="vgs="}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 450 -320 0 1 {name=M1
L=2
W=3
nf=2 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 550 -370 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 650 -160 0 0 {name=M3
L=1
W=5
nf=2 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/res.sym} 430 -30 0 0 {name=R10
value=60k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 670 -30 0 0 {name=R11
value=60k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 750 140 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 140 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 650 320 0 0 {name=M7
L=2
W=4
nf=2 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 750 320 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 320 2 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/res.sym} 670 450 0 0 {name=R12
value=9k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 550 560 1 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/ngspice_get_value.sym} 320 170 0 1 {name=r13 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_g5v0d10v5[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 330 90 0 1 {name=r15 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_g5v0d10v5[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 330 120 0 1 {name=r16 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_g5v0d10v5[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 740 -290 0 0 {name=r1 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_g5v0d10v5[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 750 -370 0 0 {name=r4 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_g5v0d10v5[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 750 -340 0 0 {name=r5 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_g5v0d10v5[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 740 -110 0 0 {name=r2 node=v(@m.$\{path\}xm3.msky130_fd_pr__pfet_g5v0d10v5[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 750 -190 0 0 {name=r3 node=v(@m.$\{path\}xm3.msky130_fd_pr__pfet_g5v0d10v5[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 750 -160 0 0 {name=r6 node=v(@m.$\{path\}xm3.msky130_fd_pr__pfet_g5v0d10v5[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 360 -130 0 1 {name=r7 node=v(@m.$\{path\}xm4.msky130_fd_pr__pfet_g5v0d10v5[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 370 -210 0 1 {name=r8 node=v(@m.$\{path\}xm4.msky130_fd_pr__pfet_g5v0d10v5[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 370 -180 0 1 {name=r9 node=v(@m.$\{path\}xm4.msky130_fd_pr__pfet_g5v0d10v5[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 780 190 0 0 {name=r17 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_g5v0d10v5[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 790 110 0 0 {name=r18 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_g5v0d10v5[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 790 140 0 0 {name=r19 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_g5v0d10v5[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 800 360 0 0 {name=r22 node=v(@m.$\{path\}xm7.msky130_fd_pr__nfet_g5v0d10v5[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 810 280 0 0 {name=r23 node=v(@m.$\{path\}xm7.msky130_fd_pr__nfet_g5v0d10v5[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 810 310 0 0 {name=r24 node=v(@m.$\{path\}xm7.msky130_fd_pr__nfet_g5v0d10v5[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 260 370 0 0 {name=r25 node=v(@m.$\{path\}xm8.msky130_fd_pr__nfet_g5v0d10v5[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 270 290 0 0 {name=r26 node=v(@m.$\{path\}xm8.msky130_fd_pr__nfet_g5v0d10v5[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 270 320 0 0 {name=r27 node=v(@m.$\{path\}xm8.msky130_fd_pr__nfet_g5v0d10v5[vgs])
descr="vgs="}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 650 -320 0 0 {name=M2
L=2
W=3
nf=2 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 650 140 0 0 {name=M6
L=2
W=4
nf=2 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 450 140 0 1 {name=M5
L=2
W=4
nf=2 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 450 320 0 1 {name=M8
L=2
W=4
nf=2 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 450 -160 0 1 {name=M4
L=1
W=5
nf=2 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 590 -320 1 0 {name=p17 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} 580 -160 1 0 {name=p18 sig_type=std_logic lab=VB2}

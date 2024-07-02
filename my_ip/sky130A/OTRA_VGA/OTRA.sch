v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -90 110 -90 {
lab=VDD}
N -350 -130 -280 -130 {
lab=VDD}
N -350 -90 -280 -90 {
lab=VSS}
N -350 -50 -280 -50 {
lab=I_in-}
N -350 -10 -280 -10 {
lab=I_in+}
N -350 30 -280 30 {
lab=VOUT}
N 110 -90 180 -90 {
lab=VDD}
N 180 -90 260 -90 {
lab=VDD}
N 260 -90 260 -60 {
lab=VDD}
N 80 -60 220 -60 {
lab=VB2}
N 40 -90 40 -60 {
lab=VDD}
N 40 -30 40 80 {
lab=VB2}
N 260 -30 260 80 {
lab=#net1}
N 140 -60 140 20 {
lab=VB2}
N 40 20 140 20 {
lab=VB2}
N 80 110 180 110 {
lab=#net1}
N 170 50 170 110 {
lab=#net1}
N 170 50 260 50 {
lab=#net1}
N 80 230 180 230 {
lab=#net2}
N 40 140 40 200 {
lab=#net3}
N 260 140 260 200 {
lab=#net2}
N 170 170 170 230 {
lab=#net2}
N 170 170 260 170 {
lab=#net2}
N 40 260 40 300 {
lab=#net4}
N 260 260 260 310 {
lab=VSS}
N 40 360 40 400 {
lab=VSS}
N 0 330 20 330 {
lab=VSS}
N 10 110 40 110 {
lab=VSS}
N 10 230 40 230 {
lab=VSS}
N 260 110 290 110 {
lab=VSS}
N 260 230 290 230 {
lab=VSS}
N 260 310 260 400 {
lab=VSS}
N 0 330 0 400 {
lab=VSS}
N 0 400 50 400 {
lab=VSS}
N 50 400 260 400 {
lab=VSS}
N 180 230 220 230 {
lab=#net2}
N 180 110 220 110 {
lab=#net1}
N 260 -90 620 -90 {
lab=VDD}
N 620 -90 620 -60 {
lab=VDD}
N 520 -60 580 -60 {
lab=VB2}
N 620 -30 620 40 {
lab=#net5}
N 620 40 620 80 {
lab=#net5}
N 620 110 620 140 {
lab=VSS}
N 620 140 620 230 {
lab=VSS}
N 660 50 660 110 {
lab=#net5}
N 620 50 660 50 {
lab=#net5}
N 660 110 860 110 {
lab=#net5}
C {devices/lab_pin.sym} 140 -90 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -350 -130 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -280 -130 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -350 -90 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -280 -90 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -350 -50 0 1 {name=p12 lab=I_in-}
C {devices/lab_pin.sym} -280 -50 2 0 {name=p13 sig_type=std_logic lab=I_in-}
C {devices/iopin.sym} -350 -10 0 1 {name=p17 lab=I_in+}
C {devices/lab_pin.sym} -280 -10 2 0 {name=p18 sig_type=std_logic lab=I_in+}
C {devices/iopin.sym} -350 30 0 1 {name=p19 lab=VOUT}
C {devices/lab_pin.sym} -280 30 2 0 {name=p20 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 240 -60 0 0 {name=M2
L=3
W=4
nf=4 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 60 -60 0 1 {name=M1
L=3
W=4
nf=4 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ngspice_get_value.sym} -60 -30 0 1 {name=r14 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} -60 -60 0 1 {name=r15 node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} -60 -100 0 1 {name=r11 node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} -130 -70 0 1 {name=r20 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} -130 -40 0 1 {name=r21 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 360 -30 0 0 {name=r1 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 360 -70 0 0 {name=r2 node=@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 360 -110 0 0 {name=r3 node=@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 470 -70 0 1 {name=r22 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 470 -40 0 1 {name=r23 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/lab_pin.sym} 10 110 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 110 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 10 230 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 230 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 40 330 0 0 {name=R10
W=0.35
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=10}
C {sky130_fd_pr/nfet_01v8_nf.sym} 60 110 0 1 {name=M4
L=2
W=4
nf=2 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 240 110 0 0 {name=M3
L=2
W=4
nf=2 mult=4
model=nfet_01v8
spiceprefix=X
}
C {devices/ngspice_get_value.sym} -40 120 0 1 {name=r4 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} -40 80 0 1 {name=r5 node=@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} -40 40 0 1 {name=r6 node=@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 330 120 0 0 {name=r7 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 330 90 0 0 {name=r8 node=@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 330 50 0 0 {name=r9 node=@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[gmbs]
descr="gmbs="}
C {sky130_fd_pr/nfet_01v8_nf.sym} 60 230 0 1 {name=M6
L=3
W=2.3
nf=2 mult=8
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 240 230 0 0 {name=M5
L=3
W=2.3
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/ngspice_get_value.sym} -40 270 0 1 {name=r12 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} -40 230 0 1 {name=r13 node=@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} -40 190 0 1 {name=r16 node=@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 340 270 0 0 {name=r17 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 340 230 0 0 {name=r18 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 340 190 0 0 {name=r19 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} -120 80 0 1 {name=r24 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} -120 110 0 1 {name=r25 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 390 100 0 0 {name=r26 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 390 130 0 0 {name=r27 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} -120 220 0 1 {name=r28 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} -120 250 0 1 {name=r29 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 410 220 0 0 {name=r30 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 410 250 0 0 {name=r31 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/lab_pin.sym} 140 400 1 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 140 10 2 0 {name=p5 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 520 -60 3 0 {name=p14 sig_type=std_logic lab=VB2}
C {devices/ngspice_get_value.sym} 680 -10 0 0 {name=r32 node=v(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 680 -50 0 0 {name=r33 node=@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 680 -90 0 0 {name=r34 node=@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 790 -50 0 1 {name=r35 node=v(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 790 -20 0 1 {name=r36 node=v(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 600 -60 0 0 {name=M7
L=3
W=4
nf=4 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 640 110 0 1 {name=M8
L=2
W=4
nf=2 mult=10
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 620 230 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/ngspice_get_value.sym} 730 150 0 1 {name=r37 node=v(@m.$\{path\}xm8.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 730 110 0 1 {name=r38 node=@m.$\{path\}xm8.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 730 70 0 1 {name=r39 node=@m.$\{path\}xm8.msky130_fd_pr__nfet_01v8[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 800 100 0 1 {name=r40 node=v(@m.$\{path\}xm8.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 800 150 0 1 {name=r41 node=v(@m.$\{path\}xm8.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {sky130_fd_pr/nfet_01v8_nf.sym} 880 110 0 0 {name=M9
L=2
W=4
nf=2 mult=10
model=nfet_01v8
spiceprefix=X
}

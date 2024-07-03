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
lab=VB1}
N 40 140 40 200 {
lab=#net2}
N 260 140 260 200 {
lab=VB1}
N 170 170 170 230 {
lab=VB1}
N 170 170 260 170 {
lab=VB1}
N 40 260 40 300 {
lab=#net3}
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
lab=VB1}
N 180 110 220 110 {
lab=#net1}
N 260 -90 620 -90 {
lab=VDD}
N 620 -90 620 -60 {
lab=VDD}
N 520 -60 580 -60 {
lab=VB2}
N 620 110 620 140 {
lab=VSS}
N 620 140 620 230 {
lab=VSS}
N 660 110 860 110 {
lab=VB3}
N -60 300 40 300 {
lab=#net3}
N -60 360 40 360 {
lab=VSS}
N -80 330 -80 400 {
lab=VSS}
N -80 400 0 400 {
lab=VSS}
N 900 140 900 220 {
lab=I_in+}
N 900 280 900 370 {
lab=VSS}
N 900 250 900 280 {
lab=VSS}
N 900 110 970 110 {
lab=VSS}
N 900 300 970 300 {
lab=VSS}
N 620 -90 900 -90 {
lab=VDD}
N 900 -90 900 -80 {
lab=VDD}
N 900 -80 900 -50 {
lab=VDD}
N 800 -50 860 -50 {
lab=VB2}
N 900 -20 900 80 {
lab=#net4}
N 900 -90 1080 -90 {
lab=VDD}
N 1140 -90 1140 -70 {
lab=VDD}
N 1080 -90 1140 -90 {
lab=VDD}
N 1140 -70 1140 -40 {
lab=VDD}
N 1140 -40 1140 -10 {
lab=VDD}
N 900 -10 1100 -10 {
lab=#net4}
N 1140 20 1140 180 {
lab=I_in+}
N 900 180 1140 180 {
lab=I_in+}
N 810 250 860 250 {
lab=VB1}
N 620 -30 620 -0 {
lab=VB3}
N 620 60 620 80 {
lab=#net5}
N 620 -10 670 -10 {
lab=VB3}
N 670 -10 670 110 {
lab=VB3}
N 510 30 600 30 {
lab=VSS}
N 1180 110 1380 110 {
lab=VB3}
N 1420 140 1420 220 {
lab=I_in-}
N 1420 280 1420 370 {
lab=VSS}
N 1420 250 1420 280 {
lab=VSS}
N 1420 110 1490 110 {
lab=VSS}
N 1420 300 1490 300 {
lab=VSS}
N 1140 -90 1420 -90 {
lab=VDD}
N 1420 -90 1420 -80 {
lab=VDD}
N 1420 -80 1420 -50 {
lab=VDD}
N 1320 -50 1380 -50 {
lab=VB2}
N 1420 -20 1420 80 {
lab=VOUT}
N 1420 -90 1600 -90 {
lab=VDD}
N 1660 -90 1660 -70 {
lab=VDD}
N 1600 -90 1660 -90 {
lab=VDD}
N 1660 -70 1660 -40 {
lab=VDD}
N 1660 -40 1660 -10 {
lab=VDD}
N 1660 20 1660 180 {
lab=I_in-}
N 1420 180 1660 180 {
lab=I_in-}
N 1330 250 1380 250 {
lab=VB1}
N 1080 -10 1080 20 {
lab=#net4}
N 1080 20 1080 40 {
lab=#net4}
N 1080 40 1460 40 {
lab=#net4}
N 1460 0 1460 40 {
lab=#net4}
N 1460 -20 1460 0 {
lab=#net4}
N 1460 -20 1620 -20 {
lab=#net4}
N 1620 -20 1620 -10 {
lab=#net4}
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
L=2
W=5
nf=4 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 60 -60 0 1 {name=M1
L=2
W=5
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
L=1.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=10}
C {sky130_fd_pr/nfet_01v8_nf.sym} 60 110 0 1 {name=M4
L=3
W=3
nf=2 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 240 110 0 0 {name=M3
L=3
W=3
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
C {devices/ngspice_get_value.sym} -40 270 0 1 {name=r12 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} -40 230 0 1 {name=r13 node=@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} -40 190 0 1 {name=r16 node=@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 340 270 0 0 {name=r17 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 340 230 0 0 {name=r18 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 340 190 0 0 {name=r19 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} -120 80 0 1 {name=r24 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} -120 110 0 1 {name=r25 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 390 100 0 0 {name=r26 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 390 130 0 0 {name=r27 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} -120 220 0 1 {name=r28 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} -120 250 0 1 {name=r29 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 410 220 0 0 {name=r30 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 410 250 0 0 {name=r31 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[vgs])
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
C {devices/ngspice_get_value.sym} 770 -50 0 1 {name=r35 node=v(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 770 -20 0 1 {name=r36 node=v(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {sky130_fd_pr/nfet_01v8_nf.sym} 640 110 0 1 {name=M8
L=2
W=5
nf=4 mult=10
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
W=5
nf=4 mult=10
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -60 330 0 0 {name=R42
W=0.35
L=1.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=10}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 600 -60 0 0 {name=M7
L=2
W=5
nf=4 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 130 230 3 0 {name=p16 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 900 370 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 880 -50 0 0 {name=M11
L=2
W=5
nf=4 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 800 -50 3 0 {name=p22 sig_type=std_logic lab=VB2}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 1120 -10 0 0 {name=M12
L=2
W=5
nf=2 mult=12
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ngspice_get_value.sym} 910 -100 0 0 {name=r43 node=v(@m.$\{path\}xm11.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 910 -140 0 0 {name=r44 node=@m.$\{path\}xm11.msky130_fd_pr__pfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 910 -180 0 0 {name=r45 node=@m.$\{path\}xm11.msky130_fd_pr__pfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 1040 -140 0 1 {name=r46 node=v(@m.$\{path\}xm11.msky130_fd_pr__pfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 1030 -100 0 1 {name=r47 node=v(@m.$\{path\}xm11.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 1220 40 0 0 {name=r48 node=v(@m.$\{path\}xm12.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 1220 0 0 0 {name=r49 node=@m.$\{path\}xm12.msky130_fd_pr__pfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 1220 -40 0 0 {name=r50 node=@m.$\{path\}xm12.msky130_fd_pr__pfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 1350 0 0 1 {name=r51 node=v(@m.$\{path\}xm12.msky130_fd_pr__pfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 1350 40 0 1 {name=r52 node=v(@m.$\{path\}xm12.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 1010 150 0 1 {name=r53 node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 1010 110 0 1 {name=r54 node=@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 1010 70 0 1 {name=r55 node=@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 1080 100 0 1 {name=r56 node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 1080 150 0 1 {name=r57 node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 1030 320 0 1 {name=r58 node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 1030 280 0 1 {name=r59 node=@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 1030 240 0 1 {name=r60 node=@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 1100 270 0 1 {name=r61 node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 1100 320 0 1 {name=r62 node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/lab_pin.sym} 970 110 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 810 250 3 0 {name=p24 sig_type=std_logic lab=VB1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 620 30 0 0 {name=R63
W=0.35
L=10
model=res_xhigh_po_0p35
spiceprefix=X
mult=10}
C {devices/lab_pin.sym} 510 30 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 240 230 0 0 {name=M5
L=2
W=5
nf=4 mult=2
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 60 230 0 1 {name=M6
L=2
W=5
nf=4 mult=8
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 880 250 0 0 {name=M10
L=2
W=5
nf=4 mult=12
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1140 160 2 0 {name=p26 sig_type=std_logic lab=I_in+}
C {devices/lab_pin.sym} 750 110 3 0 {name=p28 sig_type=std_logic lab=VB3}
C {devices/ngspice_get_value.sym} 1320 100 0 1 {name=r64 node=v(@m.$\{path\}xm8.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 1320 150 0 1 {name=r65 node=v(@m.$\{path\}xm8.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {sky130_fd_pr/nfet_01v8_nf.sym} 1400 110 0 0 {name=M13
L=2
W=5
nf=4 mult=10
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1420 370 2 0 {name=p27 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 1400 -50 0 0 {name=M14
L=2
W=5
nf=4 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1320 -50 3 0 {name=p29 sig_type=std_logic lab=VB2}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 1640 -10 0 0 {name=M15
L=2
W=5
nf=2 mult=12
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ngspice_get_value.sym} 1430 -100 0 0 {name=r66 node=v(@m.$\{path\}xm11.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 1550 -100 0 1 {name=r67 node=v(@m.$\{path\}xm11.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 1530 150 0 1 {name=r68 node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 1530 110 0 1 {name=r69 node=@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 1530 70 0 1 {name=r70 node=@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 1600 100 0 1 {name=r71 node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 1600 150 0 1 {name=r72 node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 1550 320 0 1 {name=r73 node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 1550 280 0 1 {name=r74 node=@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 1550 240 0 1 {name=r75 node=@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 1620 270 0 1 {name=r76 node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 1620 320 0 1 {name=r77 node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/lab_pin.sym} 1490 110 2 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1330 250 3 0 {name=p31 sig_type=std_logic lab=VB1}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 1400 250 0 0 {name=M16
L=2
W=5
nf=4 mult=12
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1660 160 2 0 {name=p32 sig_type=std_logic lab=I_in-}
C {devices/lab_pin.sym} 1250 110 3 0 {name=p33 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} 1420 10 0 0 {name=p34 sig_type=std_logic lab=VOUT}

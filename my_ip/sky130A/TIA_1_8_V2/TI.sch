v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -120 -40 -120 {
lab=VDD}
N -110 -80 -40 -80 {
lab=VSS}
N -110 -40 -40 -40 {
lab=I_in}
N -110 0 -40 0 {
lab=VOUT}
N 240 -220 310 -220 {
lab=VDD}
N 310 -220 380 -220 {
lab=VDD}
N 380 -220 460 -220 {
lab=VDD}
N 460 -220 460 -190 {
lab=VDD}
N 280 -190 420 -190 {
lab=#net1}
N 240 -220 240 -190 {
lab=VDD}
N 240 -160 240 -100 {
lab=#net1}
N 240 -120 330 -120 {
lab=#net1}
N 330 -190 330 -120 {
lab=#net1}
N 460 -160 460 -110 {
lab=#net2}
N 460 -110 460 -50 {
lab=#net2}
N 460 -50 460 40 {
lab=#net2}
N 460 70 530 70 {
lab=VSS}
N 360 0 360 70 {
lab=#net2}
N 420 -0 460 -0 {
lab=#net2}
N 460 100 460 120 {
lab=#net3}
N 300 70 420 70 {
lab=#net2}
N 240 30 240 40 {
lab=#net1}
N 140 70 240 70 {
lab=VSS}
N 240 100 240 120 {
lab=#net4}
N 240 -100 240 -30 {
lab=#net1}
N 240 -30 240 30 {
lab=#net1}
N 280 70 300 70 {
lab=#net2}
N 360 0 420 0 {
lab=#net2}
N 460 250 460 270 {
lab=#net5}
N 300 220 420 220 {
lab=#net3}
N 240 180 240 190 {
lab=#net4}
N 240 250 240 270 {
lab=#net6}
N 280 220 300 220 {
lab=#net3}
N 240 120 240 180 {
lab=#net4}
N 460 120 460 190 {
lab=#net3}
N 360 150 360 220 {
lab=#net3}
N 360 150 420 150 {
lab=#net3}
N 420 150 460 150 {
lab=#net3}
C {devices/iopin.sym} -110 -120 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -40 -120 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -110 -80 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -40 -80 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -110 -40 0 1 {name=p12 lab=I_in}
C {devices/lab_pin.sym} -40 -40 2 0 {name=p13 sig_type=std_logic lab=I_in}
C {devices/iopin.sym} -110 0 0 1 {name=p19 lab=VOUT}
C {devices/lab_pin.sym} -40 0 2 0 {name=p20 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 340 -220 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/ngspice_get_value.sym} 150 -150 0 1 {name=r14 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 150 -180 0 1 {name=r15 node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 150 -220 0 1 {name=r11 node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 80 -190 0 1 {name=r20 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 80 -160 0 1 {name=r21 node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 540 -140 0 0 {name=r1 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 540 -180 0 0 {name=r2 node=@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 540 -220 0 0 {name=r3 node=@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 650 -180 0 1 {name=r22 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 650 -150 0 1 {name=r23 node=v(@m.$\{path\}xm2.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 260 -190 0 1 {name=M1
L=1
W=10
nf=2 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 440 -190 0 0 {name=M2
L=1
W=10
nf=2 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ngspice_get_value.sym} 560 110 0 0 {name=r4 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 560 70 0 0 {name=r5 node=@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 560 30 0 0 {name=r6 node=@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 670 70 0 1 {name=r7 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 670 100 0 1 {name=r8 node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/lab_pin.sym} 530 70 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 440 70 0 0 {name=M3
L=0.6
W=5
nf=2 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 260 70 0 1 {name=M4
L=0.6
W=5
nf=2 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 140 70 2 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/ngspice_get_value.sym} 60 20 0 0 {name=r9 node=@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 60 -20 0 0 {name=r10 node=@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 140 0 0 0 {name=r12 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 140 30 0 0 {name=r13 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 90 60 0 1 {name=r16 node=v(@m.$\{path\}xm4.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 440 220 0 0 {name=M5
L=0.6
W=5
nf=2 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 260 220 0 1 {name=M6
L=0.6
W=5
nf=2 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/ngspice_get_value.sym} 550 270 0 0 {name=r17 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 550 230 0 0 {name=r18 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 550 190 0 0 {name=r19 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 660 230 0 1 {name=r24 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 660 260 0 1 {name=r25 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 50 280 0 0 {name=r26 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 50 240 0 0 {name=r27 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 50 200 0 0 {name=r28 node=@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8_lvt[gmbs]
descr="gmbs="}
C {devices/ngspice_get_value.sym} 160 240 0 1 {name=r29 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 160 270 0 1 {name=r30 node=v(@m.$\{path\}xm6.msky130_fd_pr__nfet_01v8_lvt[vgs])
descr="vgs="}

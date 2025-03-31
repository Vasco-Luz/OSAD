v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 360 -540 360 -380 {}
L 4 360 -380 680 -380 {}
L 4 680 -560 680 -380 {}
L 4 360 -560 680 -560 {}
L 4 360 -560 360 -540 {}
T {simulation scripts} 270 -640 0 0 1 1 {}
N 400 -190 400 -170 {
lab=GND}
N 400 -290 400 -250 {
lab=VDD}
N 530 -190 530 -170 {
lab=GND}
N 530 -290 530 -250 {
lab=VSS}
N 1110 70 1110 110 {lab=VSS}
N 1110 110 1290 110 {lab=VSS}
N 1290 0 1290 110 {lab=VSS}
N 1130 100 1130 110 {lab=VSS}
N 1130 -210 1130 -60 {lab=#net1}
N 1290 -210 1290 -90 {lab=#net2}
N 1130 0 1130 40 {lab=#net3}
N 1110 -30 1110 70 {lab=VSS}
N 1290 -90 1290 -60 {lab=#net2}
N 1170 -30 1250 -30 {lab=#net2}
N 1210 -80 1210 -30 {lab=#net2}
N 1210 -80 1290 -80 {lab=#net2}
N 1110 -30 1130 -30 {lab=VSS}
N 1290 -30 1310 -30 {lab=VSS}
N 1310 -30 1310 110 {lab=VSS}
N 1290 110 1310 110 {lab=VSS}
N 1170 -240 1250 -240 {lab=#net4}
N 1130 -380 1130 -270 {lab=#net5}
N 1290 -380 1290 -270 {lab=#net4}
N 1210 -290 1210 -240 {lab=#net4}
N 1210 -290 1280 -290 {lab=#net4}
N 1280 -290 1290 -290 {lab=#net4}
N 1060 -240 1130 -240 {lab=VSS}
N 1290 -240 1360 -240 {lab=VSS}
N 1130 -580 1130 -550 {lab=VDD}
N 1130 -610 1130 -580 {lab=VDD}
N 1290 -610 1290 -580 {lab=VDD}
N 1290 -580 1290 -550 {lab=VDD}
N 1290 -520 1290 -420 {lab=#net4}
N 1290 -420 1290 -390 {lab=#net4}
N 1290 -390 1290 -380 {lab=#net4}
N 1130 -520 1130 -440 {lab=#net6}
N 1130 -610 1290 -610 {lab=VDD}
N 1170 -550 1250 -550 {lab=#net6}
N 1210 -550 1210 -490 {lab=#net6}
N 1130 -490 1210 -490 {lab=#net6}
C {devices/lab_pin.sym} 400 -290 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 400 -220 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} 400 -170 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 530 -220 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} 530 -170 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} 390 -510 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} 530 -290 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/res_high_po_0p35.sym} 1130 70 0 0 {name=R6
L=17.2
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1210 110 3 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/simulator_commands.sym} 540 -500 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="	

.Temp 27
.param VDD = 1.8
.param VSS = 0


.control
save all

dc Temp -40 125 1
plot i(Vmeas)



op

print @m.xm1.msky130_fd_pr__nfet_01v8[vth]
print @m.xm1.msky130_fd_pr__nfet_01v8[gm]
print 1/@m.xm1.msky130_fd_pr__nfet_01v8[gds]
print @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
print @m.xm1.msky130_fd_pr__nfet_01v8[cdg]

print @m.xm2.msky130_fd_pr__nfet_01v8[vth]
print @m.xm2.msky130_fd_pr__nfet_01v8[gm]
print 1/@m.xm2.msky130_fd_pr__nfet_01v8[gds]
print @m.xm2.msky130_fd_pr__nfet_01v8[vdsat]
print @m.xm2.msky130_fd_pr__nfet_01v8[cdg]



print @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vth]
print @m.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
print 1/@m.xm3.msky130_fd_pr__nfet_01v8_lvt[gds]
print @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vdsat]
print @m.xm3.msky130_fd_pr__nfet_01v8_lvt[cdg]

print @m.xm4.msky130_fd_pr__nfet_01v8_lvt[vth]
print @m.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
print 1/@m.xm4.msky130_fd_pr__nfet_01v8_lvt[gds]
print @m.xm4.msky130_fd_pr__nfet_01v8_lvt[vdsat]
print @m.xm4.msky130_fd_pr__nfet_01v8_lvt[cdg]


print @m.xm5.msky130_fd_pr__pfet_01v8[vth]
print @m.xm5.msky130_fd_pr__pfet_01v8[gm]
print 1/@m.xm5.msky130_fd_pr__pfet_01v8[gds]
print @m.xm5.msky130_fd_pr__pfet_01v8[vdsat]
print @m.xm5.msky130_fd_pr__pfet_01v8[cdg]

print @m.xm6.msky130_fd_pr__pfet_01v8[vth]
print @m.xm6.msky130_fd_pr__pfet_01v8[gm]
print 1/@m.xm6.msky130_fd_pr__pfet_01v8[gds]
print @m.xm6.msky130_fd_pr__pfet_01v8[vdsat]
print @m.xm6.msky130_fd_pr__pfet_01v8[cdg]






print i(Vmeas)

ac dec 100 1 10G
plot i(Vmeas)


.endc
"}
C {sky130_fd_pr/nfet_01v8_nf.sym} 1150 -30 0 1 {name=M1
L=4
W=1  
nf=8 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 1270 -30 0 0 {name=M2
L=4
W=1  
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1060 -240 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1360 -240 0 1 {name=p3 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 1270 -240 0 0 {name=M4
L=2
W=1
nf=2 mult=2
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 1150 -240 0 1 {name=M3
L=2
W=1
nf=2 mult=2
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} 1150 -550 0 1 {name=M5
L=3
W=1
nf=2 mult=3
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} 1270 -550 0 0 {name=M6
L=3
W=1
nf=2 mult=3
model=pfet_01v8
spiceprefix=X
}
C {ammeter.sym} 1130 -410 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 1130 -610 0 0 {name=p4 sig_type=std_logic lab=VDD}

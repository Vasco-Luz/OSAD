v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -250 -330 -250 -170 {}
L 4 -250 -170 70 -170 {}
L 4 70 -350 70 -170 {}
L 4 -250 -350 70 -350 {}
L 4 -250 -350 -250 -330 {}
T {simulation scripts} -340 -430 0 0 1 1 {}
N -210 20 -210 40 {
lab=GND}
N -210 -80 -210 -40 {
lab=VDD}
N -80 20 -80 40 {
lab=GND}
N -80 -80 -80 -40 {
lab=VSS}
N 540 -480 540 -440 {
lab=VDD}
N 540 -360 540 -320 {
lab=VSS}
N 280 -140 280 -90 {
lab=#net1}
N 280 -420 340 -420 {lab=#net2}
N 280 -30 280 -10 {lab=GND}
N 280 -420 280 -200 {lab=#net2}
N 390 -320 390 -270 {lab=#net3}
N 390 -380 390 -320 {lab=#net3}
N 390 -40 390 0 {
lab=VSS}
N 390 -210 390 -180 {lab=#net4}
N 390 -130 390 -100 {lab=#net4}
N 390 -180 390 -130 {lab=#net4}
N 340 -420 500 -420 {lab=#net2}
N 390 -380 500 -380 {lab=#net3}
N 740 -400 790 -400 {
lab=VOUT}
N 940 -310 940 -270 {
lab=VSS}
N 790 -400 930 -400 {lab=VOUT}
N 930 -400 940 -400 {lab=VOUT}
N 940 -400 940 -370 {lab=VOUT}
N 790 -400 790 -260 {lab=VOUT}
N 470 -220 470 -180 {
lab=VSS}
N 780 -260 790 -260 {lab=VOUT}
N 610 -400 740 -400 {lab=VOUT}
N 430 -260 720 -260 {lab=#net5}
N 430 -220 470 -220 {lab=VSS}
N 580 -170 580 -130 {
lab=VSS}
N 580 -260 580 -230 {lab=#net5}
C {Sky130A/Learning/Design_of_two_stage_CMOS_MILLER_OTA_1_8/amplifier.sym} 540 -400 0 0 {name=x1}
C {devices/lab_pin.sym} -210 -80 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -210 -10 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -210 40 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -80 -10 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -80 40 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -220 -300 0 0 {name=CORNER only_toplevel=true corner=ss}
C {devices/lab_pin.sym} -80 -80 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/simulator_commands.sym} -70 -290 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="	

.Temp 27
.param VDD = 1.8
.param VSS = 0


.control
save all
op
print @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[vth]
print @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gm]
print 1/@m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gds]
print @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[vdsat]
print @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[cdg]


print @m.x1.xm11.msky130_fd_pr__nfet_01v8[vth]
print @m.x1.xm11.msky130_fd_pr__nfet_01v8[gm]
print 1/@m.x1.xm11.msky130_fd_pr__nfet_01v8[gds]
print @m.x1.xm11.msky130_fd_pr__nfet_01v8[vdsat]
print @m.x1.xm11.msky130_fd_pr__nfet_01v8[cdg]

print @m.x1.xm13.msky130_fd_pr__nfet_01v8[vth]
print @m.x1.xm13.msky130_fd_pr__nfet_01v8[gm]
print 1/@m.x1.xm13.msky130_fd_pr__nfet_01v8[gds]
print @m.x1.xm13.msky130_fd_pr__nfet_01v8[vdsat]
print @m.x1.xm13.msky130_fd_pr__nfet_01v8[cdg]


print @m.x1.xm12.msky130_fd_pr__pfet_01v8[vth]
print @m.x1.xm12.msky130_fd_pr__pfet_01v8[gm]
print 1/@m.x1.xm12.msky130_fd_pr__pfet_01v8[gds]
print @m.x1.xm12.msky130_fd_pr__pfet_01v8[vdsat]
print @m.x1.xm12.msky130_fd_pr__pfet_01v8[cdg]

print 1.8*I(V2)

ac dec 1000 1 10G
plot db(v(VOUT)) (180+(180*ph(v(VOUT))/pi))



.endc
"}
C {devices/lab_pin.sym} 540 -480 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 -320 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 280 -60 0 0 {name=V5 value= 0.9}
C {devices/gnd.sym} 280 -10 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 280 -170 0 0 {name=V3 value= "ac 0.5"}
C {devices/lab_pin.sym} 390 0 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 390 -70 0 0 {name=V4 value= "ac -0.5"}
C {vcvs.sym} 390 -240 0 1 {name=E1 value=1}
C {devices/lab_pin.sym} 790 -400 2 0 {name=p7 sig_type=std_logic lab=VOUT
}
C {capa.sym} 940 -340 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 940 -270 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 470 -180 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {res_ac.sym} 750 -260 1 0 {name=R1
value=1k
ac=1000000000000G
m=1}
C {capa.sym} 580 -200 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 580 -130 0 0 {name=p3 sig_type=std_logic lab=VSS
}

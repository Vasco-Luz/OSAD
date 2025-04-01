v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 310 220 310 230 {lab=GND}
N 310 140 310 160 {lab=VDD}
N 390 220 390 230 {lab=GND}
N 390 140 390 160 {lab=VSS}
N 700 140 830 140 {lab=#net1}
N 660 80 660 110 {lab=VDD}
N 660 80 870 80 {lab=VDD}
N 870 80 870 110 {lab=VDD}
N 660 110 660 140 {lab=VDD}
N 870 110 870 140 {lab=VDD}
N 660 170 660 250 {lab=#net1}
N 870 170 870 250 {lab=#net2}
N 760 140 760 180 {lab=#net1}
N 660 180 760 180 {lab=#net1}
N 660 310 660 350 {lab=VSS}
N 870 320 870 340 {lab=#net3}
N 870 310 870 320 {lab=#net3}
N 870 480 870 520 {lab=VSS}
N 870 470 870 480 {lab=VSS}
N 870 400 870 410 {lab=#net4}
C {sky130_fd_pr/corner.sym} -50 160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {vsource.sym} 390 190 0 0 {name=V1 value="VSS" savecurrent=false}
C {vsource.sym} 310 190 0 0 {name=V2 value="VDD" savecurrent=false}
C {gnd.sym} 390 230 0 0 {name=l2 lab=GND}
C {gnd.sym} 310 230 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 390 140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 140 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/simulator_commands.sym} 90 160 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="
.param VDD = 1.8
.param VSS = 0
.param I_ref = 5u
.param VOUT = 0.9

.control
op
print @m.xm1.msky130_fd_pr__pfet_01v8[vdsat]
print @m.xm1.msky130_fd_pr__pfet_01v8[vth]
print 1/@m.xm1.msky130_fd_pr__pfet_01v8[gds]
print @m.xm1.msky130_fd_pr__pfet_01v8[gm]

dc V3 0 1.8 0.01
plot i(Vmeas)
plot 1/deriv(i(Vmeas))
ac dec 100 1 10G
plot i(Vmeas)

.endc
" }
C {lab_pin.sym} 660 80 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {isource.sym} 660 280 0 0 {name=I0 value="I_ref"}
C {lab_pin.sym} 660 350 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {ammeter.sym} 870 280 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {vsource.sym} 870 370 0 0 {name=V3 value="VOUT" savecurrent=false}
C {lab_pin.sym} 870 520 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_nf.sym} 680 140 0 1 {name=M1
L=4
W=1
nf=2 mult=3
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} 870 440 0 0 {name=V4 value="ac 1" savecurrent=false}
C {sky130_fd_pr/pfet_01v8_nf.sym} 850 140 0 0 {name=M2
L=4
W=1
nf=2 mult=3
model=pfet_01v8
spiceprefix=X
}

v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -20 -300 -20 -140 {}
L 4 -20 -140 300 -140 {}
L 4 300 -320 300 -140 {}
L 4 -20 -320 300 -320 {}
L 4 -20 -320 -20 -300 {}
T {simulation scripts} -110 -400 0 0 1 1 {}
N 220 50 220 70 {
lab=GND}
N 220 -50 220 -10 {
lab=VDD}
N 150 50 150 70 {
lab=GND}
N 150 -50 150 -10 {
lab=VSS}
N 690 30 690 70 {
lab=VSS}
N 690 -60 690 30 {lab=VSS}
N 690 -90 690 -60 {lab=VSS}
N 500 -30 500 -10 {
lab=GND}
N 500 -90 650 -90 {lab=#net1}
N 690 -160 690 -120 {lab=VC}
N 690 -260 690 -220 {
lab=VDD}
C {devices/lab_pin.sym} 220 -50 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 220 20 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} 220 70 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 150 20 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} 150 70 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} 10 -270 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} 150 -50 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 670 -90 0 0 {name=M1
L=4
W=3  
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 690 70 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 500 -60 0 0 {name=V3 value="VIN"

}
C {devices/gnd.sym} 500 -10 0 0 {name=l2 lab=GND}
C {isource.sym} 690 -190 0 0 {name=I0 value="Ibias"}
C {devices/lab_pin.sym} 690 -260 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 690 -140 0 1 {name=p3 sig_type=std_logic lab=VC}
C {devices/launcher.sym} 260 -560 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/simulator_commands.sym} 160 -270 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="	
.options savecurrents
.Temp 27
.param VDD = 1.8
.param VSS = 0
.param VIN = 0.9
.param Ibias = 10u


.control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[vth]

op
print v(VC)
print @m.xm1.msky130_fd_pr__nfet_01v8[gm]

.endc
"}

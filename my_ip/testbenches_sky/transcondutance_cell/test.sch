v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -100 -230 -100 -70 {}
L 4 -100 -70 220 -70 {}
L 4 220 -250 220 -70 {}
L 4 -100 -250 220 -250 {}
L 4 -100 -250 -100 -230 {}
T {simulation scripts} -190 -330 0 0 1 1 {}
N 140 120 140 140 {
lab=GND}
N 140 20 140 60 {
lab=VDD}
N 70 120 70 140 {
lab=GND}
N 70 20 70 60 {
lab=VSS}
N 500 -340 500 -310 {
lab=#net1}
N 500 -460 700 -460 {
lab=VDD}
N 700 -340 700 -310 {
lab=#net2}
N 540 -280 660 -280 {
lab=#net3}
N 500 -310 500 -280 {
lab=#net1}
N 700 -300 700 -280 {
lab=#net2}
N 700 -310 700 -300 {
lab=#net2}
N 500 -250 500 -190 {
lab=#net3}
N 500 -190 600 -190 {
lab=#net3}
N 600 -280 600 -190 {
lab=#net3}
N 700 -250 700 -160 {
lab=#net4}
N 500 -190 500 -70 {
lab=#net3}
N 700 -160 700 -70 {
lab=#net4}
N 540 -40 660 -40 {
lab=#net4}
N 600 -100 600 -40 {
lab=#net4}
N 600 -100 700 -100 {
lab=#net4}
N 420 -40 500 -40 {
lab=VSS}
N 700 -40 780 -40 {
lab=VSS}
N 540 100 660 100 {
lab=#net5}
N 600 40 600 100 {
lab=#net5}
N 600 40 700 40 {
lab=#net5}
N 420 100 500 100 {
lab=VSS}
N 700 100 780 100 {
lab=VSS}
N 700 -10 700 70 {
lab=#net5}
N 500 -10 500 70 {
lab=#net6}
N 700 130 700 190 {
lab=VSS}
N 500 130 500 190 {
lab=#net7}
N 480 220 480 250 {
lab=#net8}
N 480 250 500 250 {
lab=#net8}
N 500 250 500 310 {
lab=#net8}
N 500 -370 500 -340 {
lab=#net1}
N 700 -370 700 -340 {
lab=#net2}
N 500 -460 500 -430 {
lab=VDD}
N 700 -460 700 -430 {
lab=VDD}
C {devices/lab_pin.sym} 140 20 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 140 90 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} 140 140 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 70 90 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} 70 140 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -70 -200 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 70 -200 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	

.Temp 27
.param VDD = 5
.param VSS = 0
.param VCM=\{(VDD-VSS)/2\}
.param VCM_NEG=\{-VCM\}
.param V_OFF = 0

.control
save all

dc Temp -40 125 1
plot i(Vmeas) i(Vmeas1)


.endc
"}
C {devices/lab_pin.sym} 70 20 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 680 -280 0 0 {name=M2
L=0.5
W=1
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 520 -280 0 1 {name=M1
L=0.5
W=1
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 600 -460 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 -40 0 0 {name=M4
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 520 -40 0 1 {name=M3
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 420 -40 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 780 -40 0 1 {name=p3 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 520 100 0 1 {name=M5
L=0.5
W=1
nf=1 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 420 100 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 780 100 0 1 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 700 190 0 1 {name=p7 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/res_high_po_0p35.sym} 500 220 0 0 {name=R6
L=0.35
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 510 310 0 1 {name=p9 sig_type=std_logic lab=VSS
}
C {ammeter.sym} 500 -400 0 0 {name=Vmeas savecurrent=true}
C {ammeter.sym} 700 -400 0 0 {name=Vmeas1 savecurrent=true}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 100 0 0 {name=M6
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}

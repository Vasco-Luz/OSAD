v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 60 50 60 {
lab=#net1}
N -30 120 -30 140 {
lab=GND}
N 90 60 180 60 {
lab=#net2}
N 180 120 180 140 {
lab=GND}
N 140 -40 140 -20 {
lab=GND}
N 90 -100 140 -100 {
lab=#net3}
N 90 200 90 220 {
lab=GND}
N 90 90 90 140 {
lab=#net4}
N 90 0 90 30 {
lab=#net3}
N 90 -100 90 -60 {
lab=#net3}
N 90 -60 90 0 {
lab=#net3}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 70 60 0 0 {name=M1
L="L1"
W="W1"
nf="nf1" mult="mult1"
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/corner.sym} -590 -20 0 0 {name=CORNER only_toplevel=true corner=tt}
C {vsource.sym} -30 90 0 0 {name=VGS value=0.9 savecurrent=false}
C {gnd.sym} -30 140 0 0 {name=l2 lab=GND}
C {vsource.sym} 180 90 0 0 {name=VB value=0 savecurrent=false}
C {gnd.sym} 180 140 0 0 {name=l3 lab=GND}
C {vsource.sym} 140 -70 0 0 {name=VDD value="V_supply" savecurrent=false}
C {gnd.sym} 140 -20 0 0 {name=l4 lab=GND}
C {vsource.sym} 90 170 0 0 {name=VSS value="V_neg" savecurrent=false}
C {gnd.sym} 90 220 0 0 {name=l1 lab=GND}
C {devices/simulator_commands.sym} -290 -30 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
.options savecurrents
.TEMP 27

.param V_supply=1.8
.param V_neg=0

.param L1 = 0.15
.param W1 = 1
.param nf1=1
.param mult1=1

.control
dc VGS 0 1.8 0.0001

plot @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
plot deriv(@m.xm1.msky130_fd_pr__nfet_01v8_lvt[id])
wrdata /home/vasco/Desktop/variation.txt @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id] deriv(@m.xm1.msky130_fd_pr__nfet_01v8_lvt[id])


save all
.endc
"}

v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -430 -230 -430 -70 {}
L 4 -430 -70 -110 -70 {}
L 4 -110 -250 -110 -70 {}
L 4 -430 -250 -110 -250 {}
L 4 -430 -250 -430 -230 {}
N -190 120 -190 140 {
lab=GND}
N -190 20 -190 60 {
lab=VDD}
N -260 120 -260 140 {
lab=GND}
N -260 20 -260 60 {
lab=VSS}
N 180 -130 180 -80 {lab=#net1}
N 180 -20 180 20 {lab=VSS}
N -30 120 -30 140 {
lab=GND}
N -30 20 -30 60 {
lab=Vx}
N 220 -130 220 -110 {lab=#net2}
N 310 -130 310 -110 {lab=#net3}
N 360 -130 360 -70 {lab=#net4}
N 220 -50 220 10 {lab=Vx}
N 310 -50 310 10 {lab=Vx}
N 360 -10 360 50 {lab=Vx}
N 280 -300 280 -270 {lab=VDD}
N 860 -300 980 -300 {lab=#net5}
N 930 -450 930 -420 {lab=Vx}
N 930 -420 930 -320 {lab=Vx}
N 860 -320 930 -320 {lab=Vx}
N 860 -370 860 -340 {lab=VSS}
N 860 -280 880 -280 {lab=#net6}
N 880 -280 880 -220 {lab=#net6}
N 860 -260 950 -260 {lab=VSS}
N 980 -400 980 -360 {lab=VDD}
N 880 -160 880 -140 {lab=VSS}
C {devices/lab_pin.sym} -190 20 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -190 90 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -190 140 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -260 90 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -260 140 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -400 -200 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -260 -200 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 5
.param VSS = 0
.param VCM = 2.5
.param VCM_NEG=\{-VCM\}
.param V_OFF = -880.69u
.param CL = 3p


.control
save all

dc V3 0 5 0.001
plot i(Vmeas3)

.endc



.subckt upper_nmos_current_mirror VSS IA IB IC ID
X0 VSS VSS IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.145 ps=1.29 w=1 l=2
X1 VSS VSS ID VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2
X2 IA IB IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2
X3 IB IB ID VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2
X4 VSS VSS IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2
X5 IA VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2
X6 ID IB IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2
X7 IB VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.29 ps=2.58 w=1 l=2
X8 IC IB IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2
X9 ID VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2
X10 VSS VSS IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=2.32 pd=20.64 as=1.16 ps=10.32 w=1 l=2
X11 VSS VSS ID VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=1.16 ps=10.32 w=1 l=2
X12 IA IB IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=1.16 pd=10.32 as=0.58 ps=5.16 w=1 l=2
X13 IB IB ID VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X14 VSS VSS IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X15 IA VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X16 ID IB IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X17 IB VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X18 IC IB IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X19 ID VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
C0 IB VSS 2.32803f
C1 VSS 0 7.91723f
C2 IB 0 7.85092f
.ends




.subckt pmos_current_mirror VDD IA IB IC ID
X0 IA VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=2.2
X1 IA VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=1.16003 pd=10.325 as=9.86003 ps=87.725 w=1 l=2.2
X2 VDD VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X3 VDD IA IA VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=2
X4 VDD IA IA VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X5 VDD IA IA VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X6 VDD IA IA VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X7 VDD IA IB VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.145 ps=1.29 w=1 l=2.2
X8 IB IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.29 ps=2.58 w=1 l=2.2
X9 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.29 pd=2.58 as=0.145 ps=1.29 w=1 l=2.2
X10 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2.2
X11 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=2.2
X12 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.145 pd=1.29 as=0.29 ps=2.58 w=1 l=2.2
X13 VDD IA IB VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0.58 ps=5.16 w=1 l=2.2
X14 IB IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X15 VDD IA IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=2.32 ps=20.64 w=1 l=2.2
X16 IC IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X17 VDD IA IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X18 IC IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X19 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=4.64 ps=41.28 w=1 l=2.2
X20 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X21 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X22 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X23 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X24 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X25 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X26 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X27 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X28 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X29 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X30 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X31 VDD IA IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X32 IC IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X33 VDD IA IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X34 IC IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X35 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X36 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X37 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X38 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X39 VDD IA IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X40 IC IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X41 VDD IA IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X42 IC IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X43 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X44 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X45 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X46 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X47 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X48 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X49 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X50 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X51 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X52 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X53 VDD IA ID VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X54 ID IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X55 VDD IA IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X56 IC IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X57 VDD IA IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X58 IC IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X59 IA VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X60 IA VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X61 VDD VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
C0 IC VDD 2.16179f
C1 IC IA 3.02042f
C2 VDD IA 38.77541f
C3 IC ID 3.30185f
C4 VDD ID 2.46903f
C5 IA ID 3.42756f
C6 ID VSUBS 2.96362f
C7 IA VSUBS 16.42313f
C8 VDD VSUBS 77.69173f
.ends



"}
C {devices/lab_pin.sym} -260 20 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {Sky130A/Learning/Design_of_Two-Stage_CMOS_Operational_Amplifier_for_Fluorescence_Signal_Processing_5V/Pmos_current_mirror.sym} 280 -200 0 0 {name=x1}
C {isource.sym} 180 -50 0 0 {name=I0 value=6u}
C {devices/lab_pin.sym} 180 20 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -30 20 0 0 {name=p2 sig_type=std_logic lab=Vx}
C {devices/vsource.sym} -30 90 0 0 {name=V3 value=0

}
C {devices/gnd.sym} -30 140 0 0 {name=l2 lab=GND}
C {ammeter.sym} 220 -80 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 310 -80 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 360 -40 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 220 10 3 0 {name=p3 sig_type=std_logic lab=Vx}
C {devices/lab_pin.sym} 310 10 3 0 {name=p4 sig_type=std_logic lab=Vx}
C {devices/lab_pin.sym} 360 50 3 0 {name=p5 sig_type=std_logic lab=Vx}
C {devices/lab_pin.sym} 280 -300 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} 980 -330 0 0 {name=I1 value=6u}
C {devices/lab_pin.sym} 930 -450 0 0 {name=p9 sig_type=std_logic lab=Vx}
C {devices/lab_pin.sym} 860 -370 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {ammeter.sym} 880 -190 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 950 -260 2 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 980 -400 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 880 -140 2 0 {name=p13 sig_type=std_logic lab=VSS
}
C {/foss/designs/OSAD/Learning/single_ended_amplifiers/Design_and_Analysis_of_Two-Stage_CMOS_Operational_Amplifier_for_Fluorescence_Signal_Processing_sky130_5V/layout/upper_nmos_current_mirror.sym} 710 -300 0 0 {name=x2}

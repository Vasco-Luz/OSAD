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
C {sky130_fd_pr/corner.sym} -220 -300 0 0 {name=CORNER only_toplevel=true corner=tt}
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

.subckt amplifier VDD VSS VIN+ VIN- VOUT
X0 dif_pair_0/IC dif_pair_0/m1_n4845_5624# dif_pair_0/m1_n4845_5624# dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.5 pd=2.5 as=0.6 ps=4.6 w=2 l=0.7
X1 dif_pair_0/IC VIN+ dif_pair_0/II dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.7
X2 dif_pair_0/IC VIN+ dif_pair_0/II dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.7
X3 dif_pair_0/m1_n2497_5701# dif_pair_0/m1_n2497_5701# dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.6 pd=4.6 as=0.5 ps=2.5 w=2 l=0.7
X4 dif_pair_0/IH VIN- dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.7
X5 dif_pair_0/IH VIN- dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.7
X6 dif_pair_0/II VIN+ dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.7
X7 dif_pair_0/IC VIN- dif_pair_0/IH dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.7
X8 dif_pair_0/IC VIN- dif_pair_0/IH dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.7
X9 dif_pair_0/II VIN+ dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.7
X10 dif_pair_0/IC dif_pair_0/m1_n2497_5948# dif_pair_0/m1_n2497_5948# dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=14 pd=74 as=0.6 ps=4.6 w=2 l=0.7
X11 dif_pair_0/IC VIN- dif_pair_0/IH dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0 pd=0 as=4 ps=20 w=2 l=0.7
X12 dif_pair_0/IC VIN- dif_pair_0/IH dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=2 l=0.7
X13 dif_pair_0/m1_n4845_5948# dif_pair_0/m1_n4845_5948# dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0.6 pd=4.6 as=0 ps=0 w=2 l=0.7
X14 dif_pair_0/II VIN+ dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=4 pd=20 as=0 ps=0 w=2 l=0.7
X15 dif_pair_0/II VIN+ dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=2 l=0.7
X16 dif_pair_0/IH VIN- dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=2 l=0.7
X17 dif_pair_0/IC VIN+ dif_pair_0/II dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=2 l=0.7
X18 dif_pair_0/IC VIN+ dif_pair_0/II dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=2 l=0.7
X19 dif_pair_0/IH VIN- dif_pair_0/IC dif_pair_0/IC sky130_fd_pr__pfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=2 l=0.7
X20 VSS VSS VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X21 VSS VSS VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X22 VSS m1_1967_n2053# VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X23 m1_1713_n2884# m1_1967_n2053# VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X24 m1_1713_n2884# m1_1459_n2053# VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X25 m1_1205_n2884# m1_1459_n2053# VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X26 m1_1205_n2884# m1_951_n2053# VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X27 m1_697_n2884# m1_951_n2053# VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X28 m1_697_n2884# m1_493_n2053# VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X29 lower_NMOS_0/IG m1_493_n2053# VSS sky130_fd_pr__res_high_po_0p35 l=2.12
X30 lower_NMOS_0/IF lower_NMOS_0/IE lower_NMOS_0/IG VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X31 lower_NMOS_0/IE VSS VSS VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.3 ps=2.6 w=1 l=4
X32 lower_NMOS_0/IF lower_NMOS_0/IE lower_NMOS_0/IG VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X33 lower_NMOS_0/IG lower_NMOS_0/IE lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X34 lower_NMOS_0/IE lower_NMOS_0/IE VSS VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X35 lower_NMOS_0/IG lower_NMOS_0/IE lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X36 VSS lower_NMOS_0/IE lower_NMOS_0/IE VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X37 lower_NMOS_0/IG lower_NMOS_0/IE lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X38 lower_NMOS_0/IG lower_NMOS_0/IE lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X39 lower_NMOS_0/IF VSS VSS VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X40 lower_NMOS_0/IF lower_NMOS_0/IE lower_NMOS_0/IG VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X41 VSS VSS lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X42 VSS VSS lower_NMOS_0/IE VSS sky130_fd_pr__nfet_01v8 ad=0.3 pd=2.6 as=0.25 ps=1.5 w=1 l=4
X43 lower_NMOS_0/IF lower_NMOS_0/IE lower_NMOS_0/IG VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=4
X44 lower_NMOS_0/IF lower_NMOS_0/IE lower_NMOS_0/IG VSS sky130_fd_pr__nfet_01v8 ad=5.5 pd=33 as=4 ps=24 w=1 l=4
X45 lower_NMOS_0/IE VSS VSS VSS sky130_fd_pr__nfet_01v8 ad=4 pd=24 as=13.8 ps=91.4 w=1 l=4
X46 lower_NMOS_0/IF lower_NMOS_0/IE lower_NMOS_0/IG VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X47 lower_NMOS_0/IG lower_NMOS_0/IE lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X48 lower_NMOS_0/IE lower_NMOS_0/IE VSS VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X49 lower_NMOS_0/IG lower_NMOS_0/IE lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X50 VSS lower_NMOS_0/IE lower_NMOS_0/IE VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X51 lower_NMOS_0/IG lower_NMOS_0/IE lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X52 lower_NMOS_0/IG lower_NMOS_0/IE lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X53 lower_NMOS_0/IF VSS VSS VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X54 lower_NMOS_0/IF lower_NMOS_0/IE lower_NMOS_0/IG VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X55 VSS VSS lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X56 VSS VSS lower_NMOS_0/IE VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X57 lower_NMOS_0/IF lower_NMOS_0/IE lower_NMOS_0/IG VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=4
X58 VOUT m1_9568_n4684# sky130_fd_pr__cap_mim_m3_1 l=6.5 w=6.5
X59 VOUT m1_9568_n4684# sky130_fd_pr__cap_mim_m3_1 l=6.5 w=6.5
X60 VOUT m1_9568_n4684# sky130_fd_pr__cap_mim_m3_1 l=6.5 w=6.5
X61 VOUT m1_9568_n4684# sky130_fd_pr__cap_mim_m3_1 l=6.5 w=6.5
X62 dif_pair_0/IH dif_pair_0/IH VSS VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X63 VSS dif_pair_0/IH dif_pair_0/II VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X64 dif_pair_0/IH VSS VSS VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.3 ps=2.6 w=1 l=2
X65 dif_pair_0/II dif_pair_0/IH VSS VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X66 VSS dif_pair_0/IH dif_pair_0/IH VSS sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X67 VSS VSS dif_pair_0/IH VSS sky130_fd_pr__nfet_01v8 ad=0.3 pd=2.6 as=0.25 ps=1.5 w=1 l=2
X68 dif_pair_0/IH dif_pair_0/IH VSS VSS sky130_fd_pr__nfet_01v8 ad=2 pd=12 as=0 ps=0 w=1 l=2
X69 VSS dif_pair_0/IH dif_pair_0/II VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=2.2 ps=15.2 w=1 l=2
X70 dif_pair_0/IH VSS VSS VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X71 dif_pair_0/II dif_pair_0/IH VSS VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X72 VSS dif_pair_0/IH dif_pair_0/IH VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X73 VSS VSS dif_pair_0/IH VSS sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X74 VOUT dif_pair_0/II VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.5
X75 VSS dif_pair_0/II VOUT VSS sky130_fd_pr__nfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.5
X76 VSS VSS VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=0.5 pd=2.5 as=0.6 ps=4.6 w=2 l=0.5
X77 VSS VSS VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=0.6 pd=4.6 as=0.5 ps=2.5 w=2 l=0.5
X78 VSS dif_pair_0/II VOUT VSS sky130_fd_pr__nfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.5
X79 VOUT dif_pair_0/II VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=0.5 pd=2.5 as=0.5 ps=2.5 w=2 l=0.5
X80 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X81 Upper_Nmos_0/IA VDD VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.3 ps=2.6 w=1 l=2
X82 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X83 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X84 Upper_Nmos_0/IB Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X85 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X86 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X87 VDD Upper_Nmos_0/IA dif_pair_0/IC VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X88 dif_pair_0/IC Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X89 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X90 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X91 VDD VDD VDD VDD sky130_fd_pr__pfet_01v8 ad=0.3 pd=2.6 as=0.25 ps=1.5 w=1 l=2
X92 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X93 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X94 VDD Upper_Nmos_0/IA dif_pair_0/IC VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X95 VDD Upper_Nmos_0/IA Upper_Nmos_0/IA VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X96 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X97 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X98 VDD Upper_Nmos_0/IA dif_pair_0/IC VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X99 dif_pair_0/IC Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X100 dif_pair_0/IC Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X101 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X102 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X103 VDD VDD Upper_Nmos_0/IA VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X104 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X105 VDD Upper_Nmos_0/IA dif_pair_0/IC VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X106 Upper_Nmos_0/IA Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X107 dif_pair_0/IC Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X108 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X109 VDD Upper_Nmos_0/IA Upper_Nmos_0/IB VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X110 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X111 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=8 pd=48 as=16.2 ps=100.4 w=1 l=2
X112 Upper_Nmos_0/IA VDD VDD VDD sky130_fd_pr__pfet_01v8 ad=2 pd=12 as=0 ps=0 w=1 l=2
X113 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X114 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X115 Upper_Nmos_0/IB Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=1 pd=6 as=0 ps=0 w=1 l=2
X116 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X117 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X118 VDD Upper_Nmos_0/IA dif_pair_0/IC VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X119 dif_pair_0/IC Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X120 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X121 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X122 VDD VDD VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X123 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X124 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X125 VDD Upper_Nmos_0/IA dif_pair_0/IC VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X126 VDD Upper_Nmos_0/IA Upper_Nmos_0/IA VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X127 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X128 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X129 VDD Upper_Nmos_0/IA dif_pair_0/IC VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X130 dif_pair_0/IC Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X131 dif_pair_0/IC Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X132 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X133 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X134 VDD VDD Upper_Nmos_0/IA VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X135 VOUT Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X136 VDD Upper_Nmos_0/IA dif_pair_0/IC VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X137 Upper_Nmos_0/IA Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X138 dif_pair_0/IC Upper_Nmos_0/IA VDD VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X139 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X140 VDD Upper_Nmos_0/IA Upper_Nmos_0/IB VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X141 VDD Upper_Nmos_0/IA VOUT VDD sky130_fd_pr__pfet_01v8 ad=0 pd=0 as=0 ps=0 w=1 l=2
X142 dif_pair_0/II Upper_Nmos_0/IB m1_9568_n4684# VSS sky130_fd_pr__nfet_01v8 ad=0.6 pd=4.6 as=0.5 ps=2.5 w=2 l=2.2
X143 m1_9568_n4684# Upper_Nmos_0/IB dif_pair_0/II VSS sky130_fd_pr__nfet_01v8 ad=0.5 pd=2.5 as=0.6 ps=4.6 w=2 l=2.2
X144 Upper_Nmos_0/IA VSS VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X145 Upper_Nmos_0/IB VSS VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=0.25 pd=1.5 as=0.3 ps=2.6 w=1 l=2
X146 VSS VSS lower_NMOS_0/IE VSS sky130_fd_pr__nfet_01v8_lvt ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X147 VSS VSS Upper_Nmos_0/IB VSS sky130_fd_pr__nfet_01v8_lvt ad=0.3 pd=2.6 as=0.25 ps=1.5 w=1 l=2
X148 Upper_Nmos_0/IB Upper_Nmos_0/IB lower_NMOS_0/IE VSS sky130_fd_pr__nfet_01v8_lvt ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X149 lower_NMOS_0/IE VSS VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X150 lower_NMOS_0/IE Upper_Nmos_0/IB Upper_Nmos_0/IB VSS sky130_fd_pr__nfet_01v8_lvt ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X151 VSS VSS Upper_Nmos_0/IA VSS sky130_fd_pr__nfet_01v8_lvt ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X152 Upper_Nmos_0/IA Upper_Nmos_0/IB Upper_Nmos_0/nfet_0/a_2460_0# VSS sky130_fd_pr__nfet_01v8_lvt ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X153 Upper_Nmos_0/nfet_0/a_2460_0# Upper_Nmos_0/IB Upper_Nmos_0/IA VSS sky130_fd_pr__nfet_01v8_lvt ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X154 Upper_Nmos_0/IA VSS VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=2 pd=12 as=0 ps=0 w=1 l=2
X155 Upper_Nmos_0/IB VSS VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=2 pd=12 as=0 ps=0 w=1 l=2
X156 VSS VSS lower_NMOS_0/IE VSS sky130_fd_pr__nfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=1 l=2
X157 VSS VSS Upper_Nmos_0/IB VSS sky130_fd_pr__nfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=1 l=2
X158 Upper_Nmos_0/IB Upper_Nmos_0/IB lower_NMOS_0/IE VSS sky130_fd_pr__nfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=1 l=2
X159 lower_NMOS_0/IE VSS VSS VSS sky130_fd_pr__nfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=1 l=2
X160 lower_NMOS_0/IE Upper_Nmos_0/IB Upper_Nmos_0/IB VSS sky130_fd_pr__nfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=1 l=2
X161 VSS VSS Upper_Nmos_0/IA VSS sky130_fd_pr__nfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=1 l=2
X162 Upper_Nmos_0/IA Upper_Nmos_0/IB lower_NMOS_0/IF VSS sky130_fd_pr__nfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=1 l=2
X163 lower_NMOS_0/IF Upper_Nmos_0/IB Upper_Nmos_0/IA VSS sky130_fd_pr__nfet_01v8_lvt ad=0 pd=0 as=0 ps=0 w=1 l=2
C0 dif_pair_0/IH dif_pair_0/IC 2.56783f
C1 Upper_Nmos_0/IA VOUT 3.61544f
C2 Upper_Nmos_0/IA Upper_Nmos_0/IB 2.58035f
C3 VIN+ VIN- 2.74653f
C4 lower_NMOS_0/IF lower_NMOS_0/IE 6.29946f
C5 VOUT dif_pair_0/IC 5.32644f
C6 VDD Upper_Nmos_0/IA 37.30863f
C7 VSS lower_NMOS_0/IE 10.40228f
C8 VSS m1_9568_n4684# 2.97159f
C9 VDD dif_pair_0/IC 2.53356f
C10 VSS dif_pair_0/IH 2.72891f
C11 m1_9568_n4684# VOUT 19.1651f
C12 dif_pair_0/II dif_pair_0/IC 2.15402f
C13 Upper_Nmos_0/IA dif_pair_0/IC 2.79614f
C14 VSS VOUT 2.98876f
C15 VSS Upper_Nmos_0/IB 5.78101f
C16 dif_pair_0/IH Upper_Nmos_0/IB 2.0653f
C17 lower_NMOS_0/IG lower_NMOS_0/IE 2.42788f
C18 Upper_Nmos_0/IB VOUT 3.94645f
C19 lower_NMOS_0/IF lower_NMOS_0/IG 3.40712f
C20 dif_pair_0/II dif_pair_0/IH 3.23565f
C21 VIN+ dif_pair_0/IC 2.49173f
C22 VIN- dif_pair_0/IC 2.4612f
C23 VDD VOUT 2.67062f
C24 Upper_Nmos_0/IB 0 11.38539f
C25 VOUT 0 6.84386f
C26 Upper_Nmos_0/IA 0 17.23009f
C27 VDD 0 76.51212f
C28 dif_pair_0/IH 0 6.59843f
C29 m1_9568_n4684# 0 6.87714f $ **FLOATING
C30 VSS 0 20.33185f
C31 lower_NMOS_0/IE 0 30.1416f
C32 dif_pair_0/II 0 3.37007f
C33 dif_pair_0/IC 0 16.08201f
.ends



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

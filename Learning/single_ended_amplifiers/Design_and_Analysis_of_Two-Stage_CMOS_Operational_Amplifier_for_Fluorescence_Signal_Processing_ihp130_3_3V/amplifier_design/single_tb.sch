v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -660 250 -660 270 {
lab=GND}
N -660 150 -660 190 {
lab=VDD}
N -530 250 -530 270 {
lab=GND}
N -530 150 -530 190 {
lab=VSS}
N 0 -330 0 -290 {
lab=VDD}
N 0 -190 0 -150 {
lab=VSS}
N -260 -260 -40 -260 {lab=#net1}
N -260 130 -260 150 {lab=GND}
N -260 -260 -260 70 {lab=#net1}
N -150 -220 -40 -220 {lab=VOUT}
N 400 -150 400 -110 {
lab=VSS}
N 250 -240 400 -240 {lab=VOUT}
N 400 -240 400 -210 {lab=VOUT}
N 250 -240 250 -100 {lab=VOUT}
N 70 -240 250 -240 {lab=VOUT}
N -150 -100 250 -100 {lab=VOUT}
N -150 -220 -150 -100 {lab=VOUT}
C {ihp-sg13g2/Amplifiers/Va001_ihp-sg13g2_3_3.sym} 10 -240 0 0 {name=x1}
C {devices/lab_pin.sym} -660 150 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -660 220 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -660 270 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -530 220 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -530 270 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -530 150 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 0 -330 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -1210 -240 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/code_shown.sym} -1210 -90 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -1200 0 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/vsource.sym} -260 100 0 0 {name=V5 value= "VCM"}
C {devices/gnd.sym} -260 150 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 250 -240 2 0 {name=p7 sig_type=std_logic lab=VOUT
}
C {capa.sym} 400 -180 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 400 -110 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/code_shown.sym} -1170 150 0 0 {name=NGSPICE only_toplevel=true 
name=COMMANDS
simulator=ngspice
place=end
value="
.param VDD = 3.3
.param VSS = 0
.param VCM = 1.65

.param temp=27
.control
save all 
dc temp -50 125 1
plot i(Vmeas)
dc V1 0 3.3 0.001
plot i(Vmeas)
op

.endc
"}
C {devices/lab_pin.sym} 0 -150 0 0 {name=p2 sig_type=std_logic lab=VSS
}

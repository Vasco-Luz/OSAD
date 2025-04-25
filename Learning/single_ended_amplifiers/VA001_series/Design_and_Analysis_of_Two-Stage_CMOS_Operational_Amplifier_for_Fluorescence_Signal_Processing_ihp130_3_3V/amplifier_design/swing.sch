v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 160 -160 210 {
lab=#net1}
N 60 -340 60 -300 {
lab=VDD}
N 210 -110 370 -110 {
lab=VOUT}
N 370 -20 370 20 {
lab=VSS}
N 370 -110 370 -80 {lab=VOUT}
N -160 -140 20 -140 {lab=VIN}
N -160 270 -160 290 {lab=GND}
N -50 -80 -50 80 {lab=VOUT}
N -50 -80 20 -80 {lab=VOUT}
N -160 -140 -160 100 {lab=VIN}
N 210 -110 210 80 {lab=VOUT}
N -50 80 210 80 {lab=VOUT}
N 20 -140 20 -130 {lab=VIN}
N 20 -90 20 -80 {lab=VOUT}
N 130 -110 210 -110 {lab=VOUT}
N -1200 80 -1200 100 {
lab=GND}
N -1200 -20 -1200 20 {
lab=VDD}
N -1070 80 -1070 100 {
lab=GND}
N -1070 -20 -1070 20 {
lab=VSS}
N 60 -60 60 -0 {lab=VSS}
N 60 -240 60 -160 {lab=#net2}
C {devices/lab_pin.sym} 60 0 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 60 -340 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 -110 2 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {ammeter.sym} 60 -270 0 0 {name=Vmeas savecurrent=true}
C {capa.sym} 370 -50 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 370 20 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -160 240 0 0 {name=V5 value= "VCM"}
C {devices/gnd.sym} -160 290 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -160 130 0 0 {name=V13 value="ac 1 sin (0 "V_amp" 1Mega)"}
C {devices/lab_pin.sym} -160 -70 2 0 {name=p2 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -1200 -20 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -1200 50 0 0 {name=V3 value="VDD"

}
C {devices/gnd.sym} -1200 100 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -1070 50 0 0 {name=V4 value="VSS"


}
C {devices/gnd.sym} -1070 100 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -1070 -20 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/code_shown.sym} -1750 -350 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/code_shown.sym} -1750 -260 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -1740 -170 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/code_shown.sym} -1710 -20 0 0 {name=NGSPICE only_toplevel=true 
name=COMMANDS
simulator=ngspice
place=end
value="
.Temp 27
.param VDD = 3.3
.param VCM = 1.65
.param V_amp = 1.1
.param VSS = 0
.param CL = 3p


.control

	save all
	tran 100p 5u
	plot v(VOUT) v(VIN)

.endc

"}
C {ihp-sg13g2/Amplifiers/Va001_ihp-sg13g2_3_3.sym} 70 -110 0 0 {name=x1}

v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 210 -240 230 {
lab=GND}
N -240 110 -240 150 {
lab=VDD}
N -370 210 -370 230 {
lab=GND}
N -370 110 -370 150 {
lab=VSS}
N 280 50 460 50 {
lab=VDD}
N 280 50 280 80 {
lab=VDD}
N 460 50 460 80 {
lab=VDD}
N 320 80 420 80 {
lab=#net1}
N 280 110 280 200 {
lab=#net1}
N 460 110 460 200 {
lab=#net2}
N 320 230 420 230 {
lab=#net2}
N 370 80 370 140 {
lab=#net1}
N 280 140 370 140 {
lab=#net1}
N 370 170 370 230 {
lab=#net2}
N 370 170 460 170 {
lab=#net2}
N 320 350 420 350 {
lab=#net3}
N 280 260 280 320 {
lab=#net4}
N 460 260 460 320 {
lab=#net3}
N 370 290 370 350 {
lab=#net3}
N 370 290 460 290 {
lab=#net3}
N 280 380 280 420 {
lab=#net5}
N 460 380 460 430 {
lab=VSS}
N 280 480 280 520 {
lab=VSS}
N 240 450 260 450 {
lab=VDD}
N 690 50 920 50 {
lab=VDD}
N 920 50 920 90 {
lab=VDD}
N 830 90 880 90 {
lab=#net1}
N 830 90 830 130 {
lab=#net1}
N 600 140 830 140 {
lab=#net1}
N 830 130 830 140 {
lab=#net1}
N -130 460 -130 480 {
lab=VSS}
N -130 480 -130 500 {
lab=VSS}
N 250 230 280 230 {
lab=VSS}
N 250 350 280 350 {
lab=VSS}
N 460 230 490 230 {
lab=VSS}
N 460 350 490 350 {
lab=VSS}
N 460 430 460 520 {
lab=VSS}
N 920 120 920 140 {
lab=#net6}
N -30 310 -30 340 {
lab=VIN+}
N -220 400 -30 400 {
lab=#net7}
N -220 310 -220 340 {
lab=VIN-}
N 870 200 920 200 {
lab=#net8}
N 920 200 970 200 {
lab=#net8}
N 1020 200 1020 220 {
lab=#net8}
N 970 200 1020 200 {
lab=#net8}
N 820 200 870 200 {
lab=#net8}
N 820 200 820 220 {
lab=#net8}
N 460 50 690 50 {
lab=VDD}
N 370 140 600 140 {
lab=#net1}
N 820 250 860 250 {
lab=#net8}
N 860 200 860 250 {
lab=#net8}
N 980 250 1020 250 {
lab=#net8}
N 980 200 980 250 {
lab=#net8}
N 750 250 780 250 {
lab=VIN-}
N 1060 250 1090 250 {
lab=VIN+}
N 280 520 1020 520 {
lab=VSS}
N 1020 460 1020 520 {
lab=VSS}
N 820 460 820 520 {
lab=VSS}
N 860 430 980 430 {
lab=#net9}
N 820 280 820 400 {
lab=#net9}
N 1020 280 1020 400 {
lab=VOUT_1}
N 820 430 820 460 {
lab=VSS}
N 1020 430 1020 460 {
lab=VSS}
N 920 360 920 430 {
lab=#net9}
N 820 360 920 360 {
lab=#net9}
N 1260 110 1300 110 {
lab=#net1}
N 920 50 1210 50 {
lab=VDD}
N 1340 60 1340 80 {
lab=VDD}
N 1340 80 1340 110 {
lab=VDD}
N 1340 140 1340 400 {
lab=VOUT}
N 1020 370 1100 370 {
lab=VOUT_1}
N 1100 370 1100 420 {
lab=VOUT_1}
N 1340 430 1340 460 {
lab=VSS}
N 1020 520 1210 520 {
lab=VSS}
N 830 140 860 140 {
lab=#net1}
N 860 130 860 140 {
lab=#net1}
N 860 130 1110 130 {
lab=#net1}
N 1110 130 1130 130 {
lab=#net1}
N 1210 50 1340 50 {
lab=VDD}
N 1340 50 1340 60 {
lab=VDD}
N 1130 130 1260 130 {
lab=#net1}
N 1260 110 1260 130 {
lab=#net1}
N 1300 420 1300 430 {
lab=VOUT_1}
N 1210 520 1340 520 {
lab=VSS}
N 1340 460 1340 520 {
lab=VSS}
N 1100 310 1140 310 {
lab=VOUT_1}
N 1100 310 1100 370 {
lab=VOUT_1}
N 1100 420 1300 420 {
lab=VOUT_1}
N 1200 310 1230 310 {
lab=#net10}
N 1290 310 1340 310 {
lab=VOUT}
N 1170 50 1170 290 {
lab=VDD}
C {sky130_fd_pr/corner.sym} -310 -100 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -170 -100 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*LIBs*********************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
* chose the corners in the corner file
* tt_mm for mismatch
* ss ff sf fs standart corners
* ll hh lh hl capacitor and resistors corners
* mc for total process variation including corners
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*Corners/montecarlo options***********************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.TEMP 27
**************************************************************
**************************************************************
**************************************************************
**************************************************************  
*SIMULATION and Plots*****************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.control
save all
dc V3 0 1.8 0.001 
*dc simulation
plot i(Vmeas) 
plot v(VOUT_1)
plot v(VOUT)
ac dec 10 1 50G
plot db(v(VOUT)) (180*ph(v(VOUT))/pi)
.endc
"}
C {devices/lab_pin.sym} -240 110 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -240 180 0 0 {name=V1 value=1.8

}
C {devices/gnd.sym} -240 230 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -370 110 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -370 180 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -370 230 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 390 50 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8_nf.sym} 440 350 0 0 {name=M5
L=8
W=0.68
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 300 350 0 1 {name=M6
L=8
W=0.68
nf=2 mult=4
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 280 520 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} 920 170 0 0 {name=Vmeas}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} 900 90 0 0 {name=M7
L=2
W=2
nf=2 mult=2
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/vsource.sym} -130 430 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -130 500 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 230 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 230 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 350 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 350 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} 440 80 0 0 {name=M2
L=2
W=2
nf=2 mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} 300 80 0 1 {name=M1
L=2
W=2
nf=2 mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 280 450 0 0 {name=R10
W=0.35
L=0.35
model=res_xhigh_po_0p35
spiceprefix=X
 mult=4}
C {sky130_fd_pr/nfet_01v8_nf.sym} 300 230 0 1 {name=M4
L=8
W=1 
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 440 230 0 0 {name=M3
L=8
W=1
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 240 450 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -30 310 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -30 370 0 0 {name=V4 value="ac 0.5"}
C {devices/vsource.sym} -220 370 0 0 {name=V5 value="ac -0.5"}
C {devices/lab_pin.sym} -220 310 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1040 250 0 1 {name=M8
L=0.5
W=10
nf=6 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 800 250 0 0 {name=M9
L=0.5
W=10
nf=6 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1090 250 0 1 {name=p15 sig_type=std_logic lab=VIN+
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 1000 430 0 0 {name=M10
L=4
W=1.8
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1020 310 0 1 {name=p4 sig_type=std_logic lab=VOUT_1}
C {sky130_fd_pr/nfet_01v8_nf.sym} 840 430 0 1 {name=M11
L=4
W=1.8
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} 1320 110 0 0 {name=M12
L=2
W=2
nf=2 mult=4
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 1320 430 0 0 {name=M13
L=4
W=1.8
nf=2 mult=4
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1340 330 0 1 {name=p16 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 750 250 0 0 {name=p14 sig_type=std_logic lab=VIN-
}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1260 310 1 0 {name=C1 model=cap_mim_m3_2 W=6 L=6 MF=12 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1170 310 1 0 {name=R1
W=0.35
L=0.35
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}

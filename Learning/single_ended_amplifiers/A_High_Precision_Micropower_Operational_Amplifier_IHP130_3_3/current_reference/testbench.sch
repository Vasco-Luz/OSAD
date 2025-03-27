v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 290 480 350 {
lab=GND}
N 480 190 480 230 {lab=VDD}
N 610 290 610 350 {
lab=GND}
N 610 190 610 230 {lab=VSS}
N 990 0 990 90 {lab=VDD}
N 990 340 990 370 {lab=Va}
N 990 490 990 530 {lab=#net1}
N 880 560 950 560 {lab=Va}
N 880 340 880 560 {lab=Va}
N 880 340 990 340 {lab=Va}
N 990 560 990 630 {lab=VSS}
N 990 130 990 210 {lab=#net2}
N 950 90 950 130 {lab=#net2}
N 950 130 990 130 {lab=#net2}
N 990 120 990 130 {lab=#net2}
N 990 250 990 340 {lab=Va}
N 950 210 950 250 {lab=Va}
N 950 250 990 250 {lab=Va}
N 990 240 990 250 {lab=Va}
N 1170 -0 1170 70 {lab=VDD}
N 990 0 1170 -0 {lab=VDD}
N 990 490 1130 490 {lab=#net1}
N 990 430 990 490 {lab=#net1}
N 1170 490 1170 630 {lab=VSS}
N 1210 100 1300 100 {lab=#net3}
N 1300 100 1300 150 {lab=#net3}
N 1170 180 1260 180 {lab=#net4}
N 1170 130 1170 180 {lab=#net4}
N 1300 210 1300 630 {lab=VSS}
N 990 630 1170 630 {lab=VSS}
N 1170 630 1300 630 {lab=VSS}
N 1170 180 1170 280 {lab=#net4}
N 1170 340 1170 460 {lab=#net5}
C {devices/code_shown.sym} 0 30 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerHBT.lib hbt_typ
"}
C {devices/code_shown.sym} 0 120 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/vsource.sym} 480 260 0 0 {name=VDD value=5}
C {devices/gnd.sym} 480 350 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 480 190 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 610 260 0 0 {name=VSS value=0}
C {devices/gnd.sym} 610 350 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 610 190 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1080 0 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 0 -70 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {devices/code_shown.sym} 0 220 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.param mm_ok=1
.param mc_ok=1
.control
save all 
dc temp -40 125 1
plot i(Vmeas)
plot v(Va)
dc VDD 3 6 0.01
plot i(Vmeas)
plot v(Va)
.endc
"}
C {sg13g2_pr/rppd.sym} 990 400 0 0 {name=R2
w=0.5e-6
l=5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/npn13G2v.sym} 970 560 0 0 {name=Q1
model=npn13G2v
spiceprefix=X
Nx=1
}
C {devices/lab_pin.sym} 1110 630 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {ammeter.sym} 1170 310 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_hv_pmos.sym} 970 90 0 0 {name=M1
l=4u
w=1.0u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 970 210 0 0 {name=M2
l=4u
w=1.0u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 990 260 2 0 {name=p2 sig_type=std_logic lab=Va}
C {sg13g2_pr/pnpMPA.sym} 1190 100 0 1 {name=Q2
model=pnpMPA
spiceprefix=X
w=1.0e-6
l=2.0e-6
m=1
}
C {sg13g2_pr/npn13G2v.sym} 1150 490 0 0 {name=Q3
model=npn13G2v
spiceprefix=X
Nx=2
}
C {sg13g2_pr/pnpMPA.sym} 1280 180 0 0 {name=Q4
model=pnpMPA
spiceprefix=X
w=1.0e-6
l=2.0e-6
m=1
}

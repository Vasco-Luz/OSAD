v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 100 280 120 {lab=GND}
N 380 100 380 120 {lab=GND}
N 280 0 280 40 {lab=VDD}
N 380 0 380 40 {lab=VSS}
N 710 0 710 60 {lab=VDD}
N 710 0 900 0 {lab=VDD}
N 900 0 900 60 {lab=VDD}
N 900 390 900 560 {lab=VSS}
N 710 390 710 440 {lab=#net1}
N 710 500 710 560 {lab=VSS}
N 710 560 900 560 {lab=VSS}
N 800 90 860 90 {lab=VB1}
N 680 90 710 90 {lab=VDD}
N 680 0 680 90 {lab=VDD}
N 680 0 710 -0 {lab=VDD}
N 900 90 930 90 {lab=VDD}
N 930 0 930 90 {lab=VDD}
N 900 0 930 0 {lab=VDD}
N 800 360 860 360 {lab=VB2}
N 900 280 900 330 {lab=VB2}
N 800 280 800 360 {lab=VB2}
N 750 360 800 360 {lab=VB2}
N 800 280 900 280 {lab=VB2}
N 900 120 900 280 {lab=VB2}
N 800 90 800 170 {lab=VB1}
N 750 90 800 90 {lab=VB1}
N 710 170 800 170 {lab=VB1}
N 710 120 710 170 {lab=VB1}
N 630 360 710 360 {lab=VSS}
N 630 360 630 560 {lab=VSS}
N 630 560 710 560 {lab=VSS}
N 900 360 990 360 {lab=VSS}
N 990 360 990 560 {lab=VSS}
N 900 560 990 560 {lab=VSS}
N 710 170 710 200 {lab=VB1}
N 710 260 710 330 {lab=#net2}
C {devices/code_shown.sym} -230 -110 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/code_shown.sym} -290 160 0 0 {name=NGSPICE only_toplevel=true 
name=COMMANDS
simulator=ngspice
place=end
value="

.param temp=27
.control
save all 
dc temp -40 125 1
plot i(Vmeas)
dc V1 0 1.2 0.001
plot i(Vmeas)
op

.endc
"}
C {vsource.sym} 280 70 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 380 70 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 280 120 0 0 {name=l1 lab=GND}
C {gnd.sym} 380 120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 280 0 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 0 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 800 0 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 560 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -260 50 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {sg13g2_pr/rhigh.sym} 710 470 0 0 {name=R1
w=0.5e-6
l=9e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_lv_pmos.sym} 730 90 0 1 {name=M2
l=1u
w=1.4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 880 90 0 0 {name=M1
l=1u
w=1.4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 730 360 0 1 {name=M4
l=2u
w=0.6u
ng=2
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 880 360 0 0 {name=M3
l=2u
w=0.6u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {ammeter.sym} 710 230 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} 800 140 2 0 {name=p4 sig_type=std_logic lab=VB1}
C {lab_pin.sym} 900 150 2 0 {name=p5 sig_type=std_logic lab=VB2}

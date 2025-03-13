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
N 800 60 860 60 {lab=VB1}
N 710 0 710 60 {lab=VDD}
N 710 0 900 0 {lab=VDD}
N 900 0 900 60 {lab=VDD}
N 800 60 800 130 {lab=VB1}
N 750 60 800 60 {lab=VB1}
N 710 130 800 130 {lab=VB1}
N 710 90 710 130 {lab=VB1}
N 710 130 710 180 {lab=VB1}
N 800 210 860 210 {lab=VB2}
N 900 160 900 180 {lab=VB2}
N 660 210 710 210 {lab=VSS}
N 900 210 950 210 {lab=VSS}
N 800 160 800 210 {lab=VB2}
N 750 210 800 210 {lab=VB2}
N 800 160 900 160 {lab=VB2}
N 900 90 900 160 {lab=VB2}
N 800 360 860 360 {lab=#net1}
N 900 310 900 330 {lab=#net1}
N 660 360 710 360 {lab=VSS}
N 900 360 950 360 {lab=VSS}
N 800 310 800 360 {lab=#net1}
N 750 360 800 360 {lab=#net1}
N 800 310 900 310 {lab=#net1}
N 900 240 900 310 {lab=#net1}
N 900 390 900 560 {lab=VSS}
N 710 390 710 440 {lab=#net2}
N 710 500 710 560 {lab=VSS}
N 710 560 900 560 {lab=VSS}
N 710 240 710 250 {lab=#net3}
N 710 310 710 330 {lab=#net4}
C {devices/code_shown.sym} -230 -110 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {devices/code_shown.sym} -290 160 0 0 {name=NGSPICE only_toplevel=true 
value="
.param mm_ok=1
.param mc_ok=1
.param temp=27
.control
save all 
dc temp -50 125 1
plot i(Vmeas)
dc V3 0 3.3 0.001
plot i(Vmeas1)


.endc
"}
C {vsource.sym} 280 70 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 380 70 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 280 120 0 0 {name=l1 lab=GND}
C {gnd.sym} 380 120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 280 0 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 0 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 730 60 0 1 {name=M2
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 800 0 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 880 60 0 0 {name=M1
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 730 210 2 0 {name=M3
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 660 210 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 950 210 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 880 210 2 1 {name=M4
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 730 360 2 0 {name=M5
l=2u
w=2u
ng=2
m=8
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 660 360 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 950 360 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 880 360 2 1 {name=M6
l=2u
w=2u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 900 560 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {ammeter.sym} 710 280 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -260 50 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt_stat
"}
C {sg13g2_pr/rhigh.sym} 710 470 0 0 {name=R1
w=0.5e-6
l=5.9e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {lab_pin.sym} 800 110 2 0 {name=p9 sig_type=std_logic lab=VB1}
C {lab_pin.sym} 900 120 2 1 {name=p11 sig_type=std_logic lab=VB2}

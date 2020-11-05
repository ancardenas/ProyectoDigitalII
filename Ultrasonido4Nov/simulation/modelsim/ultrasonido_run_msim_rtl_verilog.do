transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido/contador.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido/genpulsos.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido/ultrasonido.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido/divisorfrecgen.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido/divisorfrecd.v}

vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/Ultrasonido4Nov/ModuloUltrasonido/ultrasonido_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  ultrasonido_TB

add wave *
view structure
view signals
run -all

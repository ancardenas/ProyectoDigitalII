transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ultrasonido.vo}

vlog -vlog01compat -work work +incdir+C:/Users/juanj/OneDrive/Desktop/Ingenieria\ Electronica/Componente\ Teorico-Practico/Digital\ II/Laboratorio/Modificado/ModuloUltrasonido {C:/Users/juanj/OneDrive/Desktop/Ingenieria Electronica/Componente Teorico-Practico/Digital II/Laboratorio/Modificado/ModuloUltrasonido/ultrasonido_TB.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  ultrasonido_TB

add wave *
view structure
view signals
run -all

transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/gkyen/OneDrive/Documents/Q prime stuff/Lab6_Part1/halfadder.vhd}


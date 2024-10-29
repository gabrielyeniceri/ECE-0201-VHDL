transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/gkyen/OneDrive/Documents/Q prime stuff/Lab8_Part1/lab8_part1.vhd}
vcom -93 -work work {C:/Users/gkyen/OneDrive/Documents/Q prime stuff/Lab8_Part1/four_bit_rca.vhd}
vcom -93 -work work {C:/Users/gkyen/OneDrive/Documents/Q prime stuff/Lab8_Part1/full_adder.vhd}


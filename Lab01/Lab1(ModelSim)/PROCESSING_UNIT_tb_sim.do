onbreak resume
onerror resume
vsim -voptargs=+acc work.PROCESSING_UNIT_tb

add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/i_CLK
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/i_RST_N
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/i_CLK_EN
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/W0
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/X0
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/W1
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/X1
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/W2
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/X2
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/W3
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/X3
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/ce_out
add wave sim:/PROCESSING_UNIT_tb/u_PROCESSING_UNIT/Y
add wave sim:/PROCESSING_UNIT_tb/Y_ref
run -all

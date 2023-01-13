onbreak resume
onerror resume
vsim -voptargs=+acc work.Enabled_Subsystem_tb

add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/clk
add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/reset
add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/clk_enable
add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/i_VALID
add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/i_COMPLEX_VALUE_re
add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/i_COMPLEX_VALUE_im
add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/ce_out
add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/o_VALID
add wave sim:/Enabled_Subsystem_tb/o_VALID_ref
add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/o_MAGNITUDE
add wave sim:/Enabled_Subsystem_tb/o_MAGNITUDE_ref
add wave sim:/Enabled_Subsystem_tb/u_Enabled_Subsystem/o_PHASE
add wave sim:/Enabled_Subsystem_tb/o_PHASE_ref
run -all

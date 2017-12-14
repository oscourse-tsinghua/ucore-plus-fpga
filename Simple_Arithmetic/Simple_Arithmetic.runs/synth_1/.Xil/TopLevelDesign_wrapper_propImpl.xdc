set_property SRC_FILE_INFO {cfile:/home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.srcs/constrs_1/new/PBlock.xdc rfile:../../../Simple_Arithmetic.srcs/constrs_1/new/PBlock.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_OpUnit_e
set_property CONTAIN_ROUTING 1 [get_pblocks pblock_OpUnit_e]
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_OpUnit_e]
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_OpUnit_e_1
add_cells_to_pblock [get_pblocks pblock_OpUnit_e_1] [get_cells -quiet [list OpUnitWrapper_i/OpUnit_e]]
resize_pblock [get_pblocks pblock_OpUnit_e_1] -add {SLICE_X80Y51:SLICE_X113Y99}
resize_pblock [get_pblocks pblock_OpUnit_e_1] -add {DSP48_X3Y22:DSP48_X4Y39}
resize_pblock [get_pblocks pblock_OpUnit_e_1] -add {RAMB18_X4Y22:RAMB18_X5Y39}
resize_pblock [get_pblocks pblock_OpUnit_e_1] -add {RAMB36_X4Y11:RAMB36_X5Y19}

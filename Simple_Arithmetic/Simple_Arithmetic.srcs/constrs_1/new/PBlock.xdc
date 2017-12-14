create_pblock pblock_OpUnit_e
set_property CONTAIN_ROUTING 1 [get_pblocks pblock_OpUnit_e]
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_OpUnit_e]

create_pblock pblock_OpUnit_e_1
add_cells_to_pblock [get_pblocks pblock_OpUnit_e_1] [get_cells -quiet [list OpUnitWrapper_i/OpUnit_e]]
resize_pblock [get_pblocks pblock_OpUnit_e_1] -add {SLICE_X80Y51:SLICE_X113Y99}
resize_pblock [get_pblocks pblock_OpUnit_e_1] -add {DSP48_X3Y22:DSP48_X4Y39}
resize_pblock [get_pblocks pblock_OpUnit_e_1] -add {RAMB18_X4Y22:RAMB18_X5Y39}
resize_pblock [get_pblocks pblock_OpUnit_e_1] -add {RAMB36_X4Y11:RAMB36_X5Y19}




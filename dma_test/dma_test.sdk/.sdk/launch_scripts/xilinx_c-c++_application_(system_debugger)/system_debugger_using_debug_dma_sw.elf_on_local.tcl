connect -url tcp:127.0.0.1:3121
source C:/Users/Egria/Desktop/ucore-plus-fpga/dma_test/dma_test.sdk/DMA_HW/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248764336"} -index 0
loadhw -hw C:/Users/Egria/Desktop/ucore-plus-fpga/dma_test/dma_test.sdk/DMA_HW/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248764336"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248764336"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248764336"} -index 0
dow C:/Users/Egria/Desktop/ucore-plus-fpga/dma_test/dma_test.sdk/DMA_SW/Debug/DMA_SW.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248764336"} -index 0
con

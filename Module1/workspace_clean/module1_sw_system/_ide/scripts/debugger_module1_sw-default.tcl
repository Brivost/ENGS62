# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /thayerfs/home/f003j8y/workspace_clean/module1_sw_system/_ide/scripts/debugger_module1_sw-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /thayerfs/home/f003j8y/workspace_clean/module1_sw_system/_ide/scripts/debugger_module1_sw-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A6C81DA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351A6C81DA-13722093-0"}
fpga -file /thayerfs/home/f003j8y/workspace_clean/module1_sw/_ide/bitstream/module1_hw_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /thayerfs/home/f003j8y/workspace_clean/module1_hw_wrapper/export/module1_hw_wrapper/hw/module1_hw_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /thayerfs/home/f003j8y/workspace_clean/module1_sw/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /thayerfs/home/f003j8y/workspace_clean/module1_sw/Debug/module1_sw.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con

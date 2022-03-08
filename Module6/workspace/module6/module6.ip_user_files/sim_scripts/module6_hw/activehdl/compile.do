vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_11
vlib activehdl/processing_system7_vip_v1_0_13
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_27
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_25
vlib activehdl/fifo_generator_v13_2_6
vlib activehdl/axi_data_fifo_v2_1_24
vlib activehdl/axi_crossbar_v2_1_26
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/axi_timer_v2_0_27
vlib activehdl/axi_protocol_converter_v2_1_25

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 activehdl/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 activehdl/processing_system7_vip_v1_0_13
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 activehdl/axi_gpio_v2_0_27
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 activehdl/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 activehdl/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 activehdl/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 activehdl/axi_crossbar_v2_1_26
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap axi_timer_v2_0_27 activehdl/axi_timer_v2_0_27
vmap axi_protocol_converter_v2_1_25 activehdl/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -sv2k12 "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"/thayerfs/apps/xilinx/Vivado/current/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/thayerfs/apps/xilinx/Vivado/current/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/thayerfs/apps/xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -sv2k12 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../bd/module6_hw/ip/module6_hw_processing_system7_0_0/sim/module6_hw_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_27 -93 \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/module6_hw/ip/module6_hw_axi_gpio_0_0/sim/module6_hw_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../bd/module6_hw/ip/module6_hw_xbar_0/sim/module6_hw_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/module6_hw/ip/module6_hw_rst_ps7_0_50M_0/sim/module6_hw_rst_ps7_0_50M_0.vhd" \
"../../../bd/module6_hw/ip/module6_hw_axi_gpio_1_0/sim/module6_hw_axi_gpio_1_0.vhd" \
"../../../bd/module6_hw/ip/module6_hw_axi_gpio_2_0/sim/module6_hw_axi_gpio_2_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../bd/module6_hw/ip/module6_hw_xlconcat_0_0/sim/module6_hw_xlconcat_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_27 -93 \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/6c6b/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/module6_hw/ip/module6_hw_axi_timer_0_0/sim/module6_hw_axi_timer_0_0.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_family_support.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_family.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_soft_reset.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_pselect_f.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_address_decoder.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/module6_hw_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/module6_hw_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/module6_hw_xadc_wiz_0_0_axi_xadc.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../bd/module6_hw/ip/module6_hw_xadc_wiz_0_0/module6_hw_xadc_wiz_0_0.v" \
"../../../bd/module6_hw/sim/module6_hw.v" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../../module6.gen/sources_1/bd/module6_hw/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/ec67/hdl" "+incdir+../../../../module6.gen/sources_1/bd/module6_hw/ipshared/3007/hdl" "+incdir+/thayerfs/apps/xilinx/Vivado/current/data/xilinx_vip/include" \
"../../../bd/module6_hw/ip/module6_hw_auto_pc_0/sim/module6_hw_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


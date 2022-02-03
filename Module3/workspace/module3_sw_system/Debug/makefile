#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = /thayerfs/home/f003j8y/ENGS62/Module3/workspace/module3_hw_wrapper/export/module3_hw_wrapper/module3_hw_wrapper.xpfm
SYS_CONFIG = module3_hw_wrapper
DOMAINS = standalone_ps7_cortexa9_0
BIF_PATH = /thayerfs/home/f003j8y/ENGS62/Module3/workspace/module3_sw_system/Debug/system.bif

BITSTREAM_PATH = /thayerfs/home/f003j8y/ENGS62/Module3/workspace/module3_sw/_ide/bitstream/module3_hw_wrapper.bit
SD_FILES = --elf /thayerfs/home/f003j8y/ENGS62/Module3/workspace/module3_sw/Debug/module3_sw.elf,ps7_cortexa9_0

GENERATE_BIF_XSCT_CMD = ${GENERATE_BIF} -xpfm ${XPFM_PATH} -domains ${DOMAINS} -bifpath ${BIF_PATH}

#
# primary build targets
#

all: package

package:
	-@echo Generating bif file for the system project
	-@echo Executing command \'${GENERATE_BIF_XSCT_CMD}\' on XSCT
	-@echo "connect -u TCP:localhost:34853; tcf send_command $$::xsdb::curchan xsdb eval s es [list \"${GENERATE_BIF_XSCT_CMD}\"]" | xsct
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean



onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib module6_hw_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {module6_hw.udo}

run -all

quit -force

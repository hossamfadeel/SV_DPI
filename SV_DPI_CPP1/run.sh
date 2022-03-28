
echo "RUN_STEP: <compile>"

echo "Compile design files"
xvlog -m64 -L xil_defaultlib -prj vlog.prj 2>&1 | tee compile.log

xsc function.cpp  2>&1 | tee c_compile.log

echo "RUN_STEP: <elaborate>"

xelab --relax --debug typical --mt auto -L unisims_ver -L unimacro_ver -L secureip -L xpm -L xil_defaultlib --snapshot TOP xil_defaultlib.TOP xil_defaultlib.glbl -log elaborate.log -sv_lib dpi
#-R Shows the results on the terminal

echo "RUN_STEP: <simulate>"

#xsim TOP -key {Behavioral:sim_1:Functional:tb} -tclbatch cmd.tcl -log simulate.log -g
xsim TOP -key {Behavioral:sim_1:Functional:tb} -tclbatch cmd.tcl -g

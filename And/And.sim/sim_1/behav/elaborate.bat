@echo off
set xv_path=D:\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 3217de2f29ac4d51af41e08b006ffb12 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot andder_tb_behav xil_defaultlib.andder_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

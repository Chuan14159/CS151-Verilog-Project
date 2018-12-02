@echo off
set xv_path=D:\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto ddb7549fca5c4555b5d65c0c921e7bdc -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot sign_extend_tb_behav xil_defaultlib.sign_extend_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

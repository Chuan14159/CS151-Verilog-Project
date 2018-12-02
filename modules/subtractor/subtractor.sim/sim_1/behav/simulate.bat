@echo off
set xv_path=D:\\Vivado\\2017.2\\bin
call %xv_path%/xsim sub_tb_behav -key {Behavioral:sim_1:Functional:sub_tb} -tclbatch sub_tb.tcl -view C:/Users/Sirge/subtractor/sub_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

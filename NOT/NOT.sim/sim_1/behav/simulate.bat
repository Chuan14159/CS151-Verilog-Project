@echo off
set xv_path=D:\\Vivado\\2017.2\\bin
call %xv_path%/xsim CS151_not_tb_behav -key {Behavioral:sim_1:Functional:CS151_not_tb} -tclbatch CS151_not_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

@echo off
title wegui-wegt gui version 0.0.1
echo wegui-wegt gui version 0.0.1
ping 127.0.0.1 -n 6 > nul
:rs
cls
Echo (1) Start Download (2) Add Content (3) Reset Downloads List (4) About (5) exit
type dw.txt

choice /C 12345 /N 
cls
if %errorlevel%==1 goto dw
if %errorlevel%==2 goto add_c
if %errorlevel%==3 goto rs_dw
if %errorlevel%==4 goto ab
if %errorlevel%==5 goto exit
if %errorlevel%==255 goto rs

:add_c
set /P url=Paste Download Link here:

cls
@echo %url%>>dw.txt
Echo Download Link suggsesful added
ping 127.0.0.1 -n 6 > nul
goto rs


:dw
wget -i dw.txt -P C:\Users\%USERNAME%\Downloads
del dw.txt
goto rs

:rs_dw
del dw.txt
goto rs

:ab
cls
Echo.
Echo.
Echo About this Programm
Echo Wegui is a GUI for wget written in batch.
echo (1) back (2) uninstall

choice /C 12 /N 
cls
if %errorlevel%==1 goto rs
if %errorlevel%==2 goto unst
if %errorlevel%==255 goto ab

:unst
call uninstall.bat


:exit
Echo Thanks for using Wegui 
ping 127.0.0.1 -n 6 > nul
exit
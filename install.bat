
set cd=%~dp0

:rs
title wegui a GUI for wegt settup
echo wegui a GUI for wegt settup
type licence.txt
echo (1) I aggree (2) I disaggree

choice /C 12 /N 
cls
if %errorlevel%==1 goto ag
if %errorlevel%==2 goto exit
if %errorlevel%==255 goto rs

:ag
echo (1) install to C:\Program Files\wegui
echo (2) install to "custom"
echo (3) exit settup

choice /C 123 /N 
cls
if %errorlevel%==1 goto Cpw
if %errorlevel%==2 goto cus
if %errorlevel%==3 goto exit
if %errorlevel%==255 goto ag

:Cpw
xcopy %cd%main.bat C:\Program Files\wegui\main.bat
xcopy %cd%uninstall.bat C:\Program Files\wegui
xcopy %cd%wget.exe C:\Program Files\wegui
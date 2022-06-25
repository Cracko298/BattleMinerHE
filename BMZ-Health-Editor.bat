@echo off
title BMZ-Health-Editor.bat
color 17
cls
echo.
echo Welcome to the BMZ Health Editor Created by Cracko298.
echo.
echo This was made using a Batch-Python Hybird Program.
echo.
echo Please wait while the Application Starts the Modules.
echo.
echo Also note: Loading also checks to see if Python is installed on your Machine.
echo.
echo Any unauthorized modding of source code could lead to Save-Data Corruption.
echo.
echo This was made for "Windows Vista, 7, 8, 8.1, 10, & 11".
echo.

Sleep 7

:pre_check_1
if exist C:\Python (
  goto :windowsVista_check
) else (
  goto :pre_check_2
)

:pre_check_2
if exist C:\Program Files\Python (
  goto :windowsVista_check
) else (
  goto :first_check
)

:first_check
if exist %USERNAME%\AppData\Local\pip (
  goto :second_check
) else (
  goto :python_not_installed
)

:second_check
if exist %USERNAME%\AppData\Local\Programs\Python (
  goto :windowsVista_check
) else (
  goto :python_not_installed
)

:windowsVista_check
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.0" (
  goto :python_installed
) else (
  goto :windows7_check
)

:windows7_check
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.1" (
  goto :python_installed
) else (
  goto :windows8_check
)

:windows8_check
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.2" (
  goto :python_installed
) else (
  goto :windows81_check
)

:windows81_check
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.3" (
  goto :python_installed
) else (
  goto :windows10_check
)

:windows10_check
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" (
  goto :python_installed
) else (
  goto :python_not_installed
)

:python_installed
cls
echo.
echo Cool! Python looks to be installed properly.
sleep 3
:skipcongrats1
cls
echo.
echo 1 = Data0 (Singleplayer Adventure Save *Slot 1).
echo 2 = Data1 (Singleplayer Advanture Save *Slot 2).
echo 3 = Data2 (Singleplayer Adventure Save *Slot 3).
echo.
echo 4 = Edit Multiplayer Adventure Health Save-Data.

echo.
:page1
set /P c=What Option(s) Would you Like to Select?:
if /I "%c%" EQU "1" goto :1_single
if /I "%c%" EQU "2" goto :2_single
if /I "%c%" EQU "3" goto :3_single
if /I "%c%" EQU "4" goto :4_Multi
goto :page1

:1_single
start python.exe "%CD%\_meta\1_X2RhdGEw.py"
goto :skipcongrats1

:2_single
start python.exe "%CD%\_meta\1_X2RhdGEx.py"
goto :skipcongrats1

:3_single
start python.exe "%CD%\_meta\1_X2RhdGEy.py"
goto :skipcongrats1

:4_Multi
cls
echo.
echo 1 = Data6 (Multiplayer Adventure Save *Slot 1).
echo 2 = Data7 (Multiplayer Adventure Save *Slot 2).
echo 3 = Data8 (Multiplayer Adventure Save *Slot 3).
echo.
echo 4 = Edit Singleplayer Adventure Health Save-Data.
echo 0 = Exit the Health Save-Data Editor.

echo.
:page2
set /P c=What Option(s) Would you Like to Select?:
if /I "%c%" EQU "1" goto :1_multi
if /I "%c%" EQU "2" goto :2_multi
if /I "%c%" EQU "3" goto :3_multi
if /I "%c%" EQU "4" goto :skipcongrats1
if /I "%c%" EQU "0" goto :exit
goto :page2

:1_multi
start python.exe "%CD%\_meta\2_X2RhdGEw.py"
goto :4_Multi

:2_multi
start python.exe "%CD%\_meta\2_X2RhdGEx.py"
goto :4_Multi

:3_multi
start python.exe "%CD%\_meta\2_X2RhdGEy.py"
goto :4_Multi


:python_not_installed
echo. Failed
echo.
echo It seems Python wasn't installed properly. Or is not installed.
echo.
echo If you would like to try the Executable Version Press "1".
echo If you want to exit the Application Press "2".

:choice_failed
set /P c=
if /I "%c%" EQU "1" goto :yes1
if /I "%c%" EQU "2" goto :exit
goto :choice_failed



:yes1
start msedge.exe "%CD%\_meta\exe.html"

:exit
cls
sleep 1.5
exit
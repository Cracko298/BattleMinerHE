��
@echo off
title BMZ-Health-Editor.bat
color 17
cls
echo.
echo Welcome to the BMZ Health Editor Created by Cracko298.
echo.
echo Note #1: This version does not check for Python.
echo.
echo Note #2: Any unauthorized modding of source code could lead to Save-Data Corruption.
echo.
echo Note #3: This Application may not work on other Operating Systems under eg: Wine, Proton, etc.
echo.
echo This was made for "Windows Vista, 7, 8, 8.1, 10, & 11".
echo.

Sleep 7
goto :python_installed

:python_installed
cls
echo.
echo Recognized compiled Python Program(s) in Operating Directory.
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
::Data0 Edit
xcopy /y "%CD%\Data0" "%CD%\_meta\_1\dist\1_X2RhdGEw" 
cls
start "" /D "%CD%\_meta\_1\dist\1_X2RhdGEw" "1_X2RhdGEw.exe"
cls
sleep .5
xcopy /y "%CD%\_meta\_1\dist\1_X2RhdGEw\Data0" "%CD%"
goto :skipcongrats1

:2_single
::Data1 Edit
xcopy /y "%CD%\Data1" "%CD%\_meta\_2\dist\1_X2RhdGEx"
cls
start "" /D "%CD%\_meta\_2\dist\1_X2RhdGEx" "1_X2RhdGEx.exe"
cls
sleep .5
xcopy /y "%CD%\_meta\_2\dist\1_X2RhdGEx\Data1" "%CD%"
goto :skipcongrats1

:3_single
::Data2 Edit
xcopy /y "%CD%\Data2" "%CD%\_meta\_3\dist\1_X2RhdGEy"
cls
start "" /D "%CD%\_meta\_3\dist\1_X2RhdGEy" "1_X2RhdGEy.exe"
sleep .5
xcopy /y "%CD%\_meta\_3\dist\1_X2RhdGEy\Data2" "%CD%"
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
xcopy /y "%CD%\Data6" "%CD%\_meta\_4\dist\2_X2RhdGEw"
cls
start "" /D "%CD%\_meta\_4\dist\2_X2RhdGEw" "2_X2RhdGEw.exe"
cls
sleep .5
xcopy /y "%CD%\_meta\_4\dist\2_X2RhdGEw\Data6" "%CD%"
goto :4_Multi

:2_multi
xcopy /y "%CD%\Data7" "%CD%\_meta\_5\dist\2_X2RhdGEx"
cls
start "" /D "%CD%\_meta\_5\dist\2_X2RhdGEx" "2_X2RhdGEx.exe"
cls
sleep .5
xcopy /y "%CD%\_meta\_5\dist\2_X2RhdGEx\Data7" "%CD%"
goto :4_Multi

:3_multi
xcopy /y "%CD%\Data8" "%CD%\_meta\_6\dist\2_X2RhdGEy"
cls
start "" /D "%CD%\_meta\_6\dist\2_X2RhdGEy" "2_X2RhdGEy.exe"
cls
sleep .5
xcopy /y "%CD%\_meta\_6\dist\2_X2RhdGEy\Data8" "%CD%"
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
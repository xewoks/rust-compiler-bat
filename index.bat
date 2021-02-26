@echo off
cls
:begin
echo Select a task:
echo =============
echo -
echo 1) Build
echo 2) Run
echo 3) init
echo 4) clean
echo -
set /p op=Type option:
if "%op%"=="1" goto Build
if "%op%"=="2" goto Run
if "%op%"=="3" goto init
if "%op%"=="4" goto clean

:Build
cls
SET mypath=%~dp0
cd %mypath%
cargo build
pause
goto :begin
:Run
cls
SET mypath=%~dp0
cd %mypath%
cargo run
goto :begin
pause


:init
cls

SET mypath=%~dp0
cd %mypath%
cargo init

goto :begin

:clean
cls

SET mypath=%~dp0
cd %mypath%
cargo clean

goto :begin

pause

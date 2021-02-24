echo off
:begin
echo Select a task:
echo =============
echo -
echo 1) Build
echo 2) Run
echo -
set /p op=Type option:
if "%op%"=="1" goto Build
if "%op%"=="2" goto Run

:Build

SET mypath=%~dp0
cd %mypath%
cargo build
pause

:Run

SET mypath=%~dp0
cd %mypath%
cargo run
pause
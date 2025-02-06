@echo off
setlocal enabledelayedexpansion

rem call %~dp0Scripts\EcoPowercfg.cmd %~dp0Scripts\POWER_Balanced.INI
rem powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e a8eabe8c-f6e2-4006-a8b9-930ad3e97b75

call %~dp0Scripts\EcoPowercfg.cmd %~dp0Scripts\POWER_PowerSaver.INI
powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a a8eabe8c-f6e2-4006-a8b9-930ad3e97b75

powercfg -changename a8eabe8c-f6e2-4006-a8b9-930ad3e97b75 "Fujitsu Computers EcoSettings"
call %~dp0Scripts\EcoPowercfg.cmd %~dp0Scripts\POWER_e782_s782.INI

endlocal
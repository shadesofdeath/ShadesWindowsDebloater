@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ---------------Windows Alarms and Clock app---------------
:: ----------------------------------------------------------
echo --- Windows Alarms and Clock app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsAlarms' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
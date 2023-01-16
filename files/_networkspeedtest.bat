@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ------------------Network Speed Test app------------------
:: ----------------------------------------------------------
echo --- Network Speed Test app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.NetworkSpeedTest' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
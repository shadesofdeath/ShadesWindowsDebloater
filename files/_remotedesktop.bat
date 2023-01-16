@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: --------------------Remote Desktop app--------------------
:: ----------------------------------------------------------
echo --- Remote Desktop app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.RemoteDesktop' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
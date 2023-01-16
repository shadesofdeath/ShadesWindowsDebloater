@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------------Get Help app-----------------------
:: ----------------------------------------------------------
echo --- Get Help app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.GetHelp' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
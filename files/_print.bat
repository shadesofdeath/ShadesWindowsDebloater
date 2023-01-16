@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------------Print 3D app-----------------------
:: ----------------------------------------------------------
echo --- Print 3D app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Print3D' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
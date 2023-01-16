@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------------Paint 3D app-----------------------
:: ----------------------------------------------------------
echo --- Paint 3D app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MSPaint' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
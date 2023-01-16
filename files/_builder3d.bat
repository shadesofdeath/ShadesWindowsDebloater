@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------Microsoft 3D Builder app-----------------
:: ----------------------------------------------------------
echo --- Microsoft 3D Builder app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.3DBuilder' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
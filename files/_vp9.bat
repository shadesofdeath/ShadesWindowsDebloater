@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------VP9 Video Extensions app-----------------
:: ----------------------------------------------------------
echo --- VP9 Video Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.VP9VideoExtensions' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
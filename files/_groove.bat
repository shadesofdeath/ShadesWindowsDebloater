@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ---------------------Groove Music app---------------------
:: ----------------------------------------------------------
echo --- Groove Music app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ZuneMusic' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
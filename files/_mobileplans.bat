@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ---------------------Mobile Plans app---------------------
:: ----------------------------------------------------------
echo --- Mobile Plans app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.OneConnect' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
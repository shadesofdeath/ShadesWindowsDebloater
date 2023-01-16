@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------Web Media Extensions app-----------------
:: ----------------------------------------------------------
echo --- Web Media Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WebMediaExtensions' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
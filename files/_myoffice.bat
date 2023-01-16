@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ----------------------My Office app-----------------------
:: ----------------------------------------------------------
echo --- My Office app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftOfficeHub' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
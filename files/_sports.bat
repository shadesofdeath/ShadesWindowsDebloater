@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ----------------------MSN Sports app----------------------
:: ----------------------------------------------------------
echo --- MSN Sports app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingSports' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------------GroupMe app------------------------
:: ----------------------------------------------------------
echo --- GroupMe app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.GroupMe10' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
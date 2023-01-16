@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: --------------------Microsoft Tips app--------------------
:: ----------------------------------------------------------
echo --- Microsoft Tips app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Getstarted' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -------------------Microsoft People app-------------------
:: ----------------------------------------------------------
echo --- Microsoft People app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.People' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
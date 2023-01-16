@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------Microsoft Messaging app------------------
:: ----------------------------------------------------------
echo --- Microsoft Messaging app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Messaging' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
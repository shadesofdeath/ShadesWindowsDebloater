@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ------------------Windows Calculator app------------------
:: ----------------------------------------------------------
echo --- Windows Calculator app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsCalculator' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
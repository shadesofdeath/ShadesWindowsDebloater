@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

:: ----------------------------------------------------------
:: ----------------Microsoft Todos app-----------------
:: ----------------------------------------------------------
echo --- Microsoft Advertising app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Todos' | Remove-AppxPackage"
:: ----------------------------------------------------------
exit /b 0
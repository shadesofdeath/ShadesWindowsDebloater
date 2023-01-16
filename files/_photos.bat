@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -------------------Microsoft Photos app-------------------
:: ----------------------------------------------------------
echo --- Microsoft Photos app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Windows.Photos' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
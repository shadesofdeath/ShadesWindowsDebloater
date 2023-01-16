@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -------------------Microsoft Store app--------------------
:: ----------------------------------------------------------
echo --- Microsoft Store app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsStore' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
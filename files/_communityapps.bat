@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

:: ----------------------------------------------------------
:: ----------------Communication Apps-----------------
:: ----------------------------------------------------------
echo --- Communication Apps
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'microsoft.windowscommunicationapps' | Remove-AppxPackage"
:: ----------------------------------------------------------
exit /b 0
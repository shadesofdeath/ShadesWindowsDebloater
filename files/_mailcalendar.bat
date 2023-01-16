@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ------------------Mail and Calendar app-------------------
:: ----------------------------------------------------------
echo --- Mail and Calendar app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'microsoft.windowscommunicationsapps' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
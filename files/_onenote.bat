@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------------OneNote app------------------------
:: ----------------------------------------------------------
echo --- OneNote app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Office.OneNote' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
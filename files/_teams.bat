@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

:: ----------------------------------------------------------
:: ----------------Microsoft Advertising app-----------------
:: ----------------------------------------------------------
echo --- Microsoft Advertising app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'MicrosoftTeams' | Remove-AppxPackage"
:: ----------------------------------------------------------
exit /b 0
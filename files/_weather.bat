@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ---------------------MSN Weather app----------------------
:: ----------------------------------------------------------
echo --- MSN Weather app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingWeather' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
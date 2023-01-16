@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ------------------------Skype app-------------------------
:: ----------------------------------------------------------
echo --- Skype app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.SkypeApp' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
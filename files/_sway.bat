@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -------------------------Sway app-------------------------
:: ----------------------------------------------------------
echo --- Sway app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Office.Sway' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
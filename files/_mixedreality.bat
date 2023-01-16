@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------Mixed Reality Portal app-----------------
:: ----------------------------------------------------------
echo --- Mixed Reality Portal app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MixedReality.Portal' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
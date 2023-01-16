@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: --------------------App Connector app---------------------
:: ----------------------------------------------------------
echo --- App Connector app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Appconnector' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
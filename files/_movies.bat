@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: --------------------Movies and TV app---------------------
:: ----------------------------------------------------------
echo --- Movies and TV app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ZuneVideo' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
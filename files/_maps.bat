@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ---------------------Windows Maps app---------------------
:: ----------------------------------------------------------
echo --- Windows Maps app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsMaps' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
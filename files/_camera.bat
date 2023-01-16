@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: --------------------Windows Camera app--------------------
:: ----------------------------------------------------------
echo --- Windows Camera app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsCamera' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
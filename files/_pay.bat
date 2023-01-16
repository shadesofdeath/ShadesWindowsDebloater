@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: --------------------Microsoft Pay app---------------------
:: ----------------------------------------------------------
echo --- Microsoft Pay app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Wallet' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
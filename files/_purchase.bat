@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: --------------------Store Purchase app--------------------
:: ----------------------------------------------------------
echo --- Store Purchase app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.StorePurchaseApp' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
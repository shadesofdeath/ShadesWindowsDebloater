@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ----------------Webp Image Extensions app-----------------
:: ----------------------------------------------------------
echo --- Webp Image Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WebpImageExtension' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
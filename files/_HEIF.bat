@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ----------------HEIF Image Extensions app-----------------
:: ----------------------------------------------------------
echo --- HEIF Image Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.HEIFImageExtension' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
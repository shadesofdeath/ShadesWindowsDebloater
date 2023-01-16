@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: --------------------App Installer app---------------------
:: ----------------------------------------------------------
echo --- App Installer app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.DesktopAppInstaller' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
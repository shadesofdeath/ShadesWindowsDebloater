@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

:: ----------------------------------------------------------
:: ----------------Clipchamp app-----------------
:: ----------------------------------------------------------
echo --- Microsoft Advertising app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Clipchamp.Clipchamp' | Remove-AppxPackage"
:: ----------------------------------------------------------
exit /b 0
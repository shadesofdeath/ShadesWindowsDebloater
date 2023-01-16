@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ----------------------3D Viewer app-----------------------
:: ----------------------------------------------------------
echo --- 3D Viewer app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Microsoft3DViewer' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
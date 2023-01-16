@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: --------------------Snip & Sketch app---------------------
:: ----------------------------------------------------------
echo --- Snip ^& Sketch app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ScreenSketch' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
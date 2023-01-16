@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -------------------Microsoft To Do app--------------------
:: ----------------------------------------------------------
echo --- Microsoft To Do app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Todos' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
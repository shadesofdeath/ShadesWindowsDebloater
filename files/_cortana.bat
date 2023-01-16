@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ------------------Windows Cortana app------------------
:: ----------------------------------------------------------
echo --- Windows Cortana app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.549981C3F5F10' | Remove-AppxPackage"
:: ----------------------------------------------------------
exit /b 0
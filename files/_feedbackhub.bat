@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ---------------------Feedback Hub app---------------------
:: ----------------------------------------------------------
echo --- Feedback Hub app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsFeedbackHub' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
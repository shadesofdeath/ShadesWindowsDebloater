@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ----------------Microsoft Sticky Notes app----------------
:: ----------------------------------------------------------
echo --- Microsoft Sticky Notes app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftStickyNotes' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
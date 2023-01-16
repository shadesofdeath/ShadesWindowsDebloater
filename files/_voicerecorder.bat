@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ----------------Windows Voice Recorder app----------------
:: ----------------------------------------------------------
echo --- Windows Voice Recorder app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsSoundRecorder' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
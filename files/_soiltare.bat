@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: ------------Microsoft Solitaire Collection app------------
:: ----------------------------------------------------------
echo --- Microsoft Solitaire Collection app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftSolitaireCollection' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
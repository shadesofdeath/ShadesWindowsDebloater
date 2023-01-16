@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)




:: ----------------------------------------------------------
:: -----------------------Spotify app------------------------
:: ----------------------------------------------------------
echo --- Spotify app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'SpotifyAB.SpotifyMusic' | Remove-AppxPackage"
:: ----------------------------------------------------------



exit /b 0
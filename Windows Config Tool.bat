@echo off
mode con: cols=45 lines=14
title Windows Config Tool

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo.
    echo  [!] ERROR: Please Right-Click and 'Run as Administrator'
    echo.
    pause
    exit /B
)

set "esc= "
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
set "choice="
:MENU
set 
cls
echo ============================================
echo             Windows Config Tool
echo ============================================
echo    1. Enable Dark Mode
echo    2. Enable Light Mode
echo    3. Remove Activation Watermark
echo    4. MAS (Microsoft Activation Scripts)
echo         %esc%[91m[!]USE AT YOUR OWN RISK[!]%esc%[0m
echo    5. More details about MAS
echo    6. EXIT
echo ============================================
set /p choice="Select an option (1-6): "

if "%choice%"=="1" goto DARK
if "%choice%"=="2" goto LIGHT
if "%choice%"=="3" goto WATERMARK
if "%choice%"=="4" goto MAS
if "%choice%"=="5" goto DETAILS
if "%choice%"=="6" exit

goto MENU
:MAS
cls
echo Starting Microsoft Activation Scripts...
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://get.activated.win | iex"

if %errorlevel% neq 0 (
    echo.
    echo  [!] Standard connection blocked or failed.
    echo  [!] Attempting Secure DNS (DoH) Bypass via Cloudflare...
    echo.
    powershell -NoProfile -ExecutionPolicy Bypass -Command "iex (curl.exe -s --doh-url https://1.1.1.1/dns-query https://get.activated.win | Out-String)"
)

echo.
echo  Process complete.
pause
goto MENU


:DARK
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f >nul
goto REFRESH

:LIGHT
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 1 /f >nul
goto REFRESH

:WATERMARK
reg add  "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v Start /t REG_DWORD /d 4 /f
echo Watermark service disabled. 
echo %esc%[91mNOTE: You need to REBOOT your PC for the watermark to disappear.%esc%[0m
echo %esc%[91mwatermark to disappear.%esc%[0m
pause
goto MENU

:REFRESH
:: Kill Explorer first so the screen is "working" during the dots
taskkill /f /im explorer.exe >nul 2>&1
cls
echo Applying changes.
timeout /t 1 >nul
cls
echo Applying changes..
timeout /t 1 >nul
cls
echo Applying changes...
timeout /t 1 >nul

:: Restart Explorer after the animation
start explorer.exe
echo.
echo Mode applied successfully!
pause
goto MENU

:DETAILS
start https://github.com/massgravel/microsoft-activation-scripts
goto MENU

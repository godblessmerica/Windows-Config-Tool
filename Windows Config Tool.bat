@echo off
mode con: cols=45 lines=14
title Windows Config Tool By godblessmerica

set "esc= "
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"

:MENU
set "choice="
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
if "%choice%"=="6" exit /B 0

echo %esc%[91m [!] ERROR: "%choice%" is invalid. Please enter 1-6.%esc%[0m
timeout /t 3 >nul
goto MENU

:DARK
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f >nul
if errorlevel 1 (
    echo ERROR: Could not change the app theme.
    pause
    goto MENU
)

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f >nul
if errorlevel 1 (
    echo ERROR: Could not change the system theme.
    pause
    goto MENU
)

echo Restart explorer to apply change.
pause
goto MENU

:LIGHT
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 1 /f >nul
if errorlevel 1 (
    echo ERROR: Could not change the app theme.
    pause
    goto MENU
)

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 1 /f >nul
if errorlevel 1 (
    echo ERROR: Could not change the system theme.
    pause
    goto MENU
)

echo Restart explorer to apply change.
pause
goto MENU

:WATERMARK
reg add "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v Start /t REG_DWORD /d 4 /f

if errorlevel 1 (
    echo ERROR: Could not change the service setting. Run as administrator.
    pause
    goto MENU
)
echo Service setting changed.
echo Restart your PC to check whether the watermark is hidden.
echo This workaround may be temporary.
pause
goto MENU

:MAS
cls
echo Running MAS...

powershell.exe -NoProfile -Command "$ErrorActionPreference='Stop'; try { irm https://get.activated.win | iex } catch { exit 1 }"

if errorlevel 1 (
    echo.
    echo ERROR: Could not run MAS. Check your internet connection.
    pause
)

goto MENU

:DETAILS
start https://github.com/massgravel/microsoft-activation-scripts
goto MENU

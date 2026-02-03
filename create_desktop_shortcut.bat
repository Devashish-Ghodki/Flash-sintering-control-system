@echo off
echo Creating Desktop Shortcut for Flash Current Control...
echo.

REM Get the current directory
set "CURRENT_DIR=%~dp0"
set "ICON_PATH=%CURRENT_DIR%ChatGPT Image Jan 21, 2026, 11_56_43 AM.ico"
set "BAT_PATH=%CURRENT_DIR%flash_current_control.bat"

REM Check if icon file exists
if not exist "%ICON_PATH%" (
    echo ⚠️  Warning: Icon file not found at %ICON_PATH%
    echo Creating shortcut without custom icon...
    set "ICON_PATH="
)

REM Create shortcut using PowerShell
powershell -Command "& {$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%USERPROFILE%\Desktop\Flash Current Control.lnk'); $Shortcut.TargetPath = '%BAT_PATH%'; $Shortcut.WorkingDirectory = '%CURRENT_DIR%'; $Shortcut.Description = 'Flash Current Control - Laboratory Application'; if (Test-Path '%ICON_PATH%') { try { $Shortcut.IconLocation = '%ICON_PATH%,0'; } catch { $Shortcut.IconLocation = '%ICON_PATH%'; } } $Shortcut.Save()}"

if exist "%USERPROFILE%\Desktop\Flash Current Control.lnk" (
    echo ✅ Desktop shortcut created successfully!
    echo.
    echo You can now double-click "Flash Current Control" on your desktop
    echo to start the application.
) else (
    echo ❌ Shortcut creation failed
    echo Please try running this script as Administrator.
)

echo.
pause

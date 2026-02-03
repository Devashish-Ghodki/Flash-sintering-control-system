@echo off
title Flash Current Control
echo.
echo ==========================================
echo Flash Current Control - Laboratory Mode
echo ==========================================
echo.
echo Starting application...
echo.

REM Change to the script directory
cd /d "%~dp0"

REM Run the main Python script
python main.py

REM Check if there was an error
if errorlevel 1 (
    echo.
    echo ❌ Application encountered an error!
    echo Please check the error message above.
    echo.
    echo Press any key to exit...
    pause >nul
    exit /b 1
)

echo.
echo Application closed.
pause

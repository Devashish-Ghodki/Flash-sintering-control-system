@echo off
echo ==========================================
echo Flash Sinter Control - New Computer Setup
echo ==========================================
echo.
echo This script will install all required dependencies
echo for running Flash Sinter Control.
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python is not installed or not in PATH!
    echo.
    echo SOLUTION:
    echo 1. Go to: https://python.org
    echo 2. Download Python 3.8+ (latest version)
    echo 3. During installation, CHECK these boxes:
    echo    ✅ "Add Python to PATH" ^(IMPORTANT!^)
    echo    ✅ "Install pip"
    echo 4. Restart your computer after installation
    echo 5. Run this script again
    echo.
    echo Press any key to open Python download page...
    pause >nul
    start https://python.org/downloads/
    exit /b 1
)

echo ✅ Python found:
python --version

echo.
echo Installing required packages...
echo.

REM Install all required packages
pip install -r requirements.txt

REM Check if installation was successful
if errorlevel 1 (
    echo.
    echo ❌ Package installation failed!
    echo Please check your internet connection and try again.
    pause
    exit /b 1
)

echo.
echo ✅ All packages installed successfully!
echo.
echo Your Flash Sinter Control system is ready to use.
echo.
echo To start the application:
echo 1. Double-click "flash_sinter_lab_mode.bat"
echo 2. Or run "create_desktop_shortcut.bat" to create a desktop shortcut
echo    (Creates "Flash Voltage Control" shortcut on desktop)
echo.
echo Press any key to exit...
pause

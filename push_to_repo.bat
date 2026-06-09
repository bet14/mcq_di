@echo off
REM Quick push script for Windows
REM Double-click to run

echo.
echo ========================================
echo Push Quiz Files to Repository
echo ========================================
echo.

REM Check if Python is available
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python is not installed or not in PATH
    echo Please install Python or run manually:
    echo   python push_to_repo.py
    pause
    exit /b 1
)

REM Run the Python script
python "%~dp0push_to_repo.py"

REM Show result
if %errorlevel% equ 0 (
    echo.
    echo Push completed successfully!
) else (
    echo.
    echo Push failed. Check output above.
)

pause

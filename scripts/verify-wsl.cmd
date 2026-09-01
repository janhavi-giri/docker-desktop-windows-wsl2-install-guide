@echo off

echo ================================================
echo WSL Verification
echo ================================================
echo.

wsl --status

echo.
echo Installed Distributions:
echo.

wsl -l -v

echo.
pause

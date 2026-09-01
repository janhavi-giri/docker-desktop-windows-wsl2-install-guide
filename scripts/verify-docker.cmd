@echo off

echo ================================================
echo Docker Verification
echo ================================================
echo.

docker version

echo.
echo Running Docker Hello World...
echo.

docker run hello-world

echo.
pause

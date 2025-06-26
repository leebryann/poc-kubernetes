@echo off
setlocal enabledelayedexpansion

set URL=http://127.0.0.1:80

for /L %%i in (1,1,10) do (
    echo Request %%i:
    curl -s !URL!
    echo.
    timeout /t 1 >nul
)

pause
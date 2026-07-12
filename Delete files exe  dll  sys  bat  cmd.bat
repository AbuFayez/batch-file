@echo off
setlocal enabledelayedexpansion

echo Searching for  .exe  .dll  .sys  .bat  .cmd ...
echo =========================================

for /r "%~dp0" %%f in (*.exe *.dll *.sys *.bat *.cmd) do (
    if exist "%%f" (
        echo [Deleteing] %%f
        del /q /a "%%f" 2>nul
    )
)

echo.
echo =========================================
echo Delete files done!
timeout /t 3 >nul
@echo off
setlocal enabledelayedexpansion

set "dir1=%~1"
set "dir2=%~2"

for /f "delims=" %%a in ('dir /b /a-d "%dir1%"') do (
    for /f "delims=" %%b in ('dir /b /a-d "%dir2%"') do (
        if "%%a"=="%%b" echo [Duplicate]: %%a
    )
)

pause
endlocal
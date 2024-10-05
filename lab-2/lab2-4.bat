@echo off
@title lab-2-4
setlocal enabledelayedexpansion

set "dir=%~1"
set "ext=%~2"

for /f "delims=" %%f in ('dir /b /a-d "%dir%\*.%ext%"') do (
    echo %%f
)

pause
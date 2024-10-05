@echo off
setlocal enabledelayedexpansion

set /a num=%1

if %num% lss 0 (
    echo [ERROR] Use only positive number!
    goto end
)

if %num% gtr 32 (
    echo [ERROR] The number is too large...
    goto end
)

set /a fact=1

for /l %%i in (1,1,%num%) do (
    set /a fact*=%%i
)

echo Factorial for %num% = %fact%.

:end
pause
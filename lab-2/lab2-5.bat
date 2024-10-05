@echo off
setlocal
setlocal enabledelayedexpansion

:loop
set /p num="Please enter int number (- for exit): "
if "%num%"=="-" goto end

if not defined min set min=%num%
if not defined max set max=%num%

if %num% gtr !max! (
    set max=%num%
)

if %num% lss !min! (
    set min=%num%
)

goto loop

:end
if not defined min (
    echo Please enter the numbers...
) else (
    echo Max: %max%
    echo Min: %min%
)
pause
endlocal
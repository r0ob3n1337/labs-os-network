@echo off
setlocal
setlocal enabledelayedexpansion

set /a count=0
set "dir=%~1"

for /r "%dir%" /d %%d in (*) do (
    set /a count+=1
)

echo Total count subdirs count: %count%

pause
endlocal
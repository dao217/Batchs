@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal
    set /a i=0
    set /a limit=10
    :loop
    if !i! lss !limit! (
        echo i is !i!
        set /a i=!i!+1
        goto:loop
    )
    echo outside

endlocal
goto:eof
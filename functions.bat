@echo off

goto :main

:say 
    echo %~1! and %~2
goto:eof

:setvar 
    set var=value
    set %~1=some3
setlocal
    set var3=value3
    echo %var3%
endlocal
goto:eof

:localfunc
    setlocal
    set /a i=0
    echo i = %i%
    endlocal
goto:eof

1
:main
    echo main function
    call :localfunc
goto:eof
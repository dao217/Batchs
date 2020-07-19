@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal
    
    rem for with set of strings
    for %%i in (text rigth here) do (
        echo %%i
    ) 

    for /f "tokens=1-9" %%a in ("this is a string") do (
        echo %%a %%b %%c %%d
    ) 

    rem usual for
    for /l %%i in (1, 1, 20) do (
        echo %%i
    )

    for /l %%i in (1, 1, 20) do (
        echo %%i
        if %%i equ 10 (
            goto :loopend
        )
    )
    :loopend 
    echo End of loop! 

    rem for with dir inside current dir
    for /d %%i in (*) do (
        echo %%i
    ) 

    rem for with all files inside current dir
    for %%i in (*) do (
        echo %%i
    ) 

    for /f  %%i  in (text1.txt) do (
        echo %%i
    )

    rem like previous but with all nested dir
    for /r %%i in (*) do (
        echo %%i
    ) 


endlocal
goto:eof
@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

    ::stdout
    dir /b 2 > new_file1.txt 
    dir /b 2 > new_file3.txt 

endlocal
goto:eof
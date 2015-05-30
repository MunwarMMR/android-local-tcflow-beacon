REM This is to change the .classes to bin/ in build.properties
setlocal C:\Users\admin\Desktop\Jarsign\Shaikm01.keystore C:\Users\admin\Desktop\Jarsign\Shaikm02.keystore
    set "search=%1"
    set "replace=%2"

    set "textFile=ant.properties"

    for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        set "line=!line:%search%=%replace%!"
        >>"%textFile%" echo(!line!
        endlocal
    )
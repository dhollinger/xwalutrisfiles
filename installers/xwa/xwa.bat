@echo off

FOR /F "tokens=*" %%g IN ('START /B RadioButtonBox.exe "Launch;Configure" "Select to Launch" "X-Wing Alliance Launcher"') DO SET launch=%%g

IF /i "%launch%"=="Configure" goto :StartConfig
IF /i "%launch%"=="Launch" goto :LaunchGame

goto commonexit

:StartConfig
TotalConverter\BabuFriksConfigurator.exe
goto commonexit

:LaunchGame
XWINGALLIANCE.EXE
goto commonexit

:commonexit
EXIT /B 0
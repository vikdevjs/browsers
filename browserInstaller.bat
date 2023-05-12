@echo off
cls
color C
title Installer by Vik
echo -------------------------------------------------
echo       Welcome to the Scripting world!
echo.
echo -------------------------------------------------
echo.
pause

echo -------------------------------------------------
echo.
echo            Powered by K-agency
echo               created by vik            
echo.
echo -------------------------------------------------
echo What do you want to do?
echo.
echo chrome
echo firefox
echo brave
echo.
echo eg. to install chrome
echo type chrome and enter

set /p choice= 
if /I "%choice%" EQU "chrome" GOTO chrome_op
if /I "%choice%" EQU "firefox" GOTO firefox_op
if /I "%choice%" EQU "brave" GOTO brave_op
GOTO END

:chrome_op
cls
echo Name                   Command           source
echo ------------------------------------------------
echo Google Chrome         Command: chrome     winget
echo Google Chrome Dev     Command: dev        winget
echo Google Chrome Beta    Command: beta       winget
echo Google Chrome Canary  Command: canary     winget
echo.
set /p choice= 
if /I "%choice%" EQU "Standard" GOTO chrome
if /I "%choice%" EQU "dev" GOTO c_dev
if /I "%choice%" EQU "beta" GOTO c_beta
if /I "%choice%" EQU "canary" GOTO c_canary

:firefox_op
cls
echo Name                   Command           source
echo -----------------------------------------------------
echo Mozilla Firefox         Command: firefox    winget
echo Mozilla Firefox Dev     Command: dev        winget
echo Mozilla Firefox Beta    Command: beta       winget
echo Mozilla Firefox ESR     Command: esr        winget
echo.
set /p choice= 
if /I "%choice%" EQU "Standard" GOTO firefox
if /I "%choice%" EQU "dec" GOTO f_dev
if /I "%choice%" EQU "beta" GOTO f_beta
if /I "%choice%" EQU "esr" GOTO f_esr

:brave_op
cls
echo Name                Command          source
echo ---------------------------------------------
echo Brave            Command: brave      winget
echo Brave Nightly    Command: nightly    winget
echo Brave Beta       Command: beta       winget
echo Brave Dev        Command: dev        winget
echo.
set /p choice= 
if /I "%choice%" EQU "Standard" GOTO brave
if /I "%choice%" EQU "dev" GOTO b_dev
if /I "%choice%" EQU "beta" GOTO b_beta
if /I "%choice%" EQU "canary" GOTO b_nightly


:chrome
cls
pause>nul|set/p = Press any key to install ...
winget install Google.Chrome
pause>nul|set/p = chrome installed press any key to exit
GOTO END

:c_dev
cls
pause>nul|set/p = Press any key to install ...
winget install Google.Chrome.Dev
pause>nul|set/p = chrome dev installed press any key to exit
GOTO END

:c_beta
cls
pause>nul|set/p = Press any key to install ...
winget install Google.Chrome.Beta
pause>nul|set/p = chrome beta installed press any key to exit
GOTO END

:c_canary
cls
pause>nul|set/p = Press any key to install ...
winget install Google.Chrome.Canary
pause>nul|set/p = chrome canary installed press any key to exit
GOTO END

:firefox
cls
pause>nul|set/p = Press any key to install ...
winget install Mozilla.Firefox
pause>nul|set/p = Firefox installed press any key to exit
GOTO END

:f_dev
cls
pause>nul|set/p = Press any key to install ...
winget install Mozilla.Firefox.DeveloperEdition
pause>nul|set/p = Firefox dev installed press any key to exit
GOTO END

:f_beta
cls
pause>nul|set/p = Press any key to install ...
winget install  Mozilla.Firefox.Beta
pause>nul|set/p = Firefox beta installed press any key to exit
GOTO END

:f_esr
cls
pause>nul|set/p = Press any key to install ...
winget install Mozilla.Firefox.ESR
pause>nul|set/p = Firefox ESR installed press any key to exit
GOTO END

:brave
cls
pause>nul|set/p = Press any key to install ...
winget install Brave.Brave
pause>nul|set/p = Brave installed press any key to exit
GOTO END

:b_dev
cls
pause>nul|set/p = Press any key to install ...
winget install Brave.Brave.Dev
pause>nul|set/p = Brave dev installed press any key to exit
GOTO END

:b_beta
cls
pause>nul|set/p = Press any key to install ...
winget install Brave.Brave.Beta
pause>nul|set/p = brave beta installed press any key to exit
GOTO END

:b_nightly
cls
pause>nul|set/p = Press any key to install ...
winget install  Brave.Brave.Nightly
pause>nul|set/p = Brave Nightly installed press any key to exit
GOTO END

:END

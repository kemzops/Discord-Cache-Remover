@ECHO OFF
:Start
CLS
title Discord Cache Remover
color 6
ECHO For Better Result, Open This File With Admin Perms (OPTIMAL).
ECHO.
ECHO =======================================================================
ECHO 1.Remove All Files And Folders Inside Discord/Cache
ECHO 2.Remove All Files And Folders Inside Discord/Code Cache
ECHO 3.Remove All Files And Folders Inside Discord/GPUCache
ECHO 4.Remove All Discord Cache (Including The GPU And Code)
ECHO 5.Open Github Repository 
ECHO.
ECHO NOTE: PLEASE MAKE SURE THAT YOU ALREADY CLOSE DISCORD BEFORE SELECTING
ECHO =======================================================================
ECHO.
ECHO MADE BY AzizJaber#1616
ECHO.

CHOICE /C 12345 /M "Enter your choice:"

IF ERRORLEVEL 5 GOTO Github
IF ERRORLEVEL 4 GOTO AllCacheConfirm
IF ERRORLEVEL 3 GOTO GPUCache
IF ERRORLEVEL 2 GOTO CodeCache
IF ERRORLEVEL 1 GOTO Cache

:Cache
CLS
title Discord Cache Remover - Discord/Cache
ECHO.
ECHO ===========================================================
ECHO Number 1 Selected (Files And Folders Inside Discord/Cache)
ECHO ===========================================================
ECHO.
cd "%APPDATA%/Discord/Cache"
del /S *.*
CLS
title Discord Cache Remover - Done
ECHO.
ECHO =================================================================
ECHO NOTE: KEEP IN MIND THAT SOME OF FILES OR FOLDERS CAN'T BE REMOVED
ECHO =================================================================
ECHO.
ECHO MADE BY AzizJaber#1616
ECHO.
pause
GOTO End

:CodeCache
CLS
title Discord Cache Remover - Discord/Code Cache
ECHO.
ECHO ===========================================================
ECHO Number 2 Selected (Files And Folders Inside Discord/Code Cache)
ECHO ===========================================================
ECHO.
cd "%APPDATA%/Discord/Code Cache"
del /S *.*
CLS
title Discord Cache Remover - Done
ECHO.
ECHO =================================================================
ECHO NOTE: KEEP IN MIND THAT SOME OF FILES OR FOLDERS CAN'T BE REMOVED
ECHO =================================================================
ECHO.
ECHO MADE BY AzizJaber#1616
ECHO.
ECHO.
pause
GOTO End

:GPUCache
CLS
title Discord Cache Remover - Discord/GPUCache
ECHO.
ECHO ===========================================================
ECHO Number 3 Selected (Files And Folders Inside Discord/GPUCache)
ECHO ===========================================================
ECHO.
cd "%APPDATA%/Discord/GPUCache"
del /S *.*
CLS
title Discord Cache Remover - Done
ECHO.
ECHO =================================================================
ECHO NOTE: KEEP IN MIND THAT SOME OF FILES OR FOLDERS CAN'T BE REMOVED
ECHO =================================================================
ECHO.
ECHO MADE BY AzizJaber#1616
ECHO.
ECHO.
pause
GOTO End

:AllCacheConfirm
title Discord Cache Remover - Please Confirm
CLS
ECHO.
ECHO ===========================================================
ECHO Number 4 Selected (All Discord Cache Including GPU And Code)
ECHO ===========================================================
ECHO.
ECHO MADE BY AzizJaber#1616
ECHO.
ECHO.
pause
GOTO AllCache

:AllCache
CLS
title Discord Cache Remover - All Cache
cd "%APPDATA%/Discord/Cache"
del /S *.*
cls

cd "%APPDATA%/Discord/Code Cache"
del /S *.*
cls

cd "%APPDATA%/Discord/GPUCache"
del /S *.*
CLS
title Discord Cache Remover - Done
ECHO.
ECHO =================================================================
ECHO NOTE: KEEP IN MIND THAT SOME OF FILES OR FOLDERS CAN'T BE REMOVED
ECHO =================================================================
ECHO.
ECHO MADE BY AzizJaber#1616
ECHO.
ECHO.
pause
GOTO End

:Github
CLS
ECHO PLEASE WAIT...
start "" https://github.com/azizmjaber02/Discord-Cache-Remover
GOTO Start

:End
CLS
GOTO Start

::  WinOSInit
::  LIU Shihao   <liu.shihao@hotmail.com>


SET APPNAME=WinOSInit
SET VERSION=0.1.0
SET AUTHOR=LIU Shihao [liu.shihao@hotmail.com]
SET MODIFY=2025/08/24


@ECHO OFF
::ShowUsage
ECHO ===================================================
ECHO    AppName    %APPNAME%
ECHO    Version    %VERSION%
@ECHO.
ECHO    Author     %AUTHOR%
ECHO    Modified   %MODIFY%
ECHO ===================================================
@ECHO.
@ECHO.


::获取系统版本信息
ECHO Get OS version... & ver
@ECHO.



::交换LeftCtrl按键 和 CapsLock按键
ECHO 01. To remap LeftCtrl key and CapsLock key...
regedit /s .\tools\Ctrl2CapsLock.reg
If %errorlevel% NEQ 0 (
    ECHO [Error] Failed to remap LeftCtrl and CapsLock keys!
) ELSE (
    ECHO %tab%Succeed to remap LeftCtrl and CapsLock keys.
)
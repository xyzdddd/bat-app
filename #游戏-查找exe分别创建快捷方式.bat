@echo off
rem 使用说明：

rem 生成快捷方式的路径默认为开始菜单，有需要可以更改
rem 生成快捷方式的路径为开始菜单:~$folder.start_menu$\game\
rem 生成快捷方式的路径为桌面:~$folder.desktop$\game\

rem 目录格式
rem x:\game\目录1
rem x:\game\目录2
rem x:\game\目录3
rem ...

rem 批处理位置x:\game\批处理.bat

rem 设置时间变量
set "t=%time%"

rem 删除开始菜单快捷方式(删除命令前面的注释::开启)
nircmd execmd RD /s /q "~$folder.start_menu$"\games
rem 删除桌面快捷方式(删除命令前面的注释::开启)
::nircmd execmd RD /s /q "~$folder.desktop$"\game

set LOGFILE=batch.log
call :LOG > %LOGFILE%

@echo off
rem 记录运行所需的时间
set "t1=%time%"
if "%t1:~,2%" lss "%t:~,2%" set "add=+24"
set /a "times=(%t1:~,2%-%t:~,2%%add%)*360000+(1%t1:~3,2%%%100-1%t:~3,2%%%100)*6000+(1%t1:~6,2%%%100-1%t:~6,2%%%100)*100+(1%t1:~-2%%%100-1%t:~-2%%%100)" ,"ss=times/100%%60","mm=times/6000%%60","hh=times/360000","ms=times%%100"
@echo ▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂
echo 本次批处理运行时间为%hh%小时:%mm%分钟:%ss%.%ms%秒  生成日志文件batch.log
pause
exit /B

:LOG
@echo on
rem 查找exe单独创建快捷方式(小写exe)
for /f %%i in ('dir /b /a:d /o:n') do (forfiles /p "%~dp0%%i" /M "*.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$"\games\%%i" @fname")
rem 查找exe单独创建快捷方式(大写exe)
for /f %%i in ('dir /b /a:d /o:n') do (forfiles /p "%~dp0%%i" /M "*.EXE" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$"\games\%%i" @fname")








@echo off
rem 使用说明：

rem 生成快捷方式的路径，默认为开始菜单，有需要可以更改
rem 生成快捷方式的路径为开始菜单:~$folder.start_menu$\game\
rem 生成快捷方式的路径为桌面:~$folder.desktop$\game\

rem 设置时间变量
set "t=%time%"

rem 删除开始菜单快捷方式(删除命令前面的注释::开启)
nircmd execmd RD /s /q "~$folder.start_menu$"\game
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
rem 按文本文件(txt)内容创建快捷方式
for /f %%i in ('dir %~dp0 /b /a:d /o:n') do (
if exist ".\%%i\##.txt" for /f "delims=# tokens=1-2*" %%a in (%~dp0\%%i\##.txt) do (
forfiles /p ".\%%i" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\game %%a"
)
)

rem 按文本文件(txt)内容创建快捷方式 遇到带空格的应用使用###.txt 
for /f %%i in ('dir %~dp0 /b /a:d /o:n') do (
if exist ".\%%i\###.txt" for /f "delims= tokens=*" %%a in (%~dp0\%%i\###.txt) do (
forfiles /p ".\%%i" /M "%%a.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\game %%i"
)
)

rem 按目录单独创建快捷方式
for /f "delims=# tokens=1-2" %%a in ('dir /b /a:d /o:n') do (
if exist "%~dp0\%%a#%%b" forfiles /p ".\%%a#%%b" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\game "%%a""
)


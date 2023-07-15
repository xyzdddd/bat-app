@echo off
rem 使用说明:

rem 按文件夹名称 创建快捷方式
rem 文件夹格式:
rem 格式1:快捷方式名1#程序名1
rem 格式2:快捷方式名1#程序名1#快捷方式名2#程序名2
rem 格式3:快捷方式名1#程序名1#快捷方式名2#程序名2#快捷方式名3#程序名3
rem 格式4:快捷方式名1#程序名1#快捷方式名2#程序名2#快捷方式名3#程序名3#快捷方式名4#程序名4
rem 格式5:快捷方式名@程序名
rem 格式6:快捷方式名$批处理名
rem 程序名带空格的格式:快捷方式名1#程序 名1
rem 注意事项1:文件夹快捷方式名中不能出现空格，程序名中可以出现空格，如果快捷方式名中出现空格只能显示空格前的名称。
rem 注意事项2:有部分软件文件夹名称中不能出现符号#需要用符号@替代。
rem 注意事项3:遇到程序名重名需要修改程序名。
rem 注意事项4:格式234快捷方式名不能相同。

rem 解决空格 按txt内容创建快捷方式(不带子目录)
rem txt文件名称:@.txt
rem txt文件位置:分类目录\快捷方式名1@@程序名\@.txt
rem txt文件内容:快捷方式名1@程序名1 换行 快捷方式名2@程序名2 换行 快捷方式名3@程序名3  ............
rem txt文件内容注意事项:快捷方式名中不能出现空格，程序名中可以出现空格
rem txt文件编码:ANSI

rem 解决空格 按txt内容创建快捷方式(带子目录)
rem txt文件名称:@@.txt
rem txt文件位置:分类目录\快捷方式名1@@程序名\@@.txt
rem txt文件内容:快捷方式名1@程序名1 换行 快捷方式名2@程序名2 换行 快捷方式名3@程序名3  ............
rem txt文件内容注意事项:快捷方式名中不能出现空格，程序名中可以出现空格
rem txt文件编码:ANSI

rem 解决空格 按txt内容创建快捷方式(不带子目录)
rem txt文件名称:$.txt
rem txt文件位置:分类目录\快捷方式名1$$批处理名\$.txt
rem txt文件内容:快捷方式名1$批处理名1 换行 快捷方式名2$批处理名2 换行 快捷方式名3$批处理名3  ............
rem txt文件内容注意事项:快捷方式名中不能出现空格，程序名中可以出现空格
rem txt文件编码:ANSI

rem 解决空格 按txt内容创建快捷方式(带子目录)
rem txt文件名称:$$.txt
rem txt文件位置:分类目录\快捷方式名1$$批处理名\$$.txt
rem txt文件内容:快捷方式名1$批处理名1 换行 快捷方式名2$批处理名2 换行 快捷方式名3$批处理名3  ............
rem txt文件内容注意事项:快捷方式名中不能出现空格，程序名中可以出现空格
rem txt文件编码:ANSI

rem 生成快捷方式的路径，默认为开始菜单，有需要可以更改
rem 生成快捷方式的路径为开始菜单:~$folder.start_menu$\apps\
rem 生成快捷方式的路径为桌面:~$folder.desktop$\apps\

rem 设置时间变量
set "t=%time%"

rem 删除开始菜单快捷方式(删除命令前面的注释::开启)
nircmd execmd RD /s /q "~$folder.start_menu$"\apps
rem 删除桌面快捷方式(删除命令前面的注释::开启)
::nircmd execmd RD /s /q "~$folder.desktop$"\apps

rem 生成日志文件
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
rem 按文件夹名称创建快捷方式 一个exe文件 文件夹分割符:@ (有些程序路径中不能出现#号)
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=@ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a@%%b" forfiles /p ".\%%i\%%a@%%b" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a"
)
)

rem 解决空格 按文本文件(txt)内容创建快捷方式 不带子目录 文件夹分割符:@@ 文本文件名:@.txt  文本文件编码:ANSI
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=@@ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist ".\%%i\%%a@@%%b\@.txt" for /f "delims=@ tokens=1-2" %%s in (%~dp0%%i\%%a@@%%b\@.txt) do (
forfiles /p ".\%%i\%%a@@%%b" /M "%%t.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i\ %%s")
)
)

rem 解决空格 按文本文件(txt)内容创建快捷方式 带子目录  文件夹分割符:@@ 文本文件名:@@.txt 文本文件内容分隔符:@ 文本文件编码:ANSI
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=@@ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist ".\%%i\%%a@@%%b\@@.txt" for /f "delims=@ tokens=1-2" %%s in (%~dp0%%i\%%a@@%%b\@@.txt) do (
forfiles /p ".\%%i\%%a@@%%b" /M "%%t.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i\%%a %%s")
)
)

rem 按文件夹名称创建快捷方式 一个exe文件 文件夹分割符:#
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=# tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a#%%b" forfiles /p ".\%%i\%%a#%%b" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a"
)
)

rem 按文件夹名称创建快捷方式 二个exe文件 文件夹分割符:#
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=# tokens=1-4" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a#%%b#%%c#%%d" forfiles /p ".\%%i\%%a#%%b#%%c#%%d" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d" /M "%%d.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%c"
)
)

rem 按文件夹名称创建快捷方式 三个exe文件 文件夹分割符:#
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=# tokens=1-6" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a#%%b#%%c#%%d#%%e#%%f" (
forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f" /M "%%d.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%c" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f" /M "%%f.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%e"
)
)
)

rem 按文件夹名称创建快捷方式 四个exe文件 文件夹分割符:#
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=# tokens=1-8" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" (
forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" /M "%%d.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%c" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" /M "%%f.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%e" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" /M "%%h.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%g"
)
)
)

rem 按文件夹名称创建快捷方式 一个bat文件 文件夹分割符:$
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=$ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a$%%b" forfiles /p ".\%%i\%%a$%%b" /M "%%b.bat" /S /C "cmd /c nircmd shortcut "@path" ~$folder.start_menu$\apps\%%i %%a"
)
)

rem 解决空格 按文本文件(txt)内容创建快捷方式 bat文件 不带子目录 文件夹分割符:$ 文本文件名:$.txt  文本文件编码:ANSI
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=$$ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist ".\%%i\%%a$$%%b\$.txt" for /f "delims=$ tokens=1-2" %%s in (%~dp0%%i\%%a$$%%b\$.txt) do (
forfiles /p ".\%%i\%%a$$%%b" /M "%%t.bat" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i\ %%s"
)
)
)

rem 解决空格 按文本文件(txt)内容创建快捷方式 bat文件 带子目录 文件夹分割符:$$ 文本文件名:$$.txt  文本文件编码:ANSI
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=$$ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist ".\%%i\%%a$$%%b\$$.txt" for /f "delims=$ tokens=1-2" %%s in (%~dp0%%i\%%a$$%%b\$$.txt) do (
forfiles /p ".\%%i\%%a$$%%b" /M "%%t.bat" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i\%%a %%s"
)
)
)

rem 创建文件夹快捷方式
nircmd.exe shortcut "~$folder.start_menu$" "~$folder.start_menu$\apps\工具箱\bat工具" "打开开始菜单"
nircmd.exe shortcut "~$folder.desktop$" "~$folder.start_menu$\apps\工具箱\bat工具" "打开桌面"
nircmd.exe shortcut "~$folder.startup$" "~$folder.start_menu$\apps\工具箱\bat工具" "打开启动"
nircmd.exe shortcut "~$sys.temp$" "~$folder.start_menu$\apps\工具箱\bat工具" "打开temp"
nircmd.exe shortcut "~$folder.cookies$" "~$folder.start_menu$\apps\工具箱\bat工具" "打开cookies"

::nircmd.exe shortcut "%cd%\局域网_文件共享\Web文件服务器dufs@@共享c盘" "~$folder.start_menu$\apps\局域网_文件共享\" "Web文件服务器dufs打开这个目录"




 
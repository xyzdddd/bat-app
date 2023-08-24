@echo off
echo 和此批处理在一起的当前文件夹里面所有的文件夹都会复制到指定分类目录
echo 判断文件夹属于哪个目录然后复制到那个目录
echo 1=English
echo 2=工具箱
echo 3=工具箱nirsoft
echo 4=互联网_工具
echo 5=互联网_浏览器
echo 6=互联网_下载
echo 7=局域网_工具
echo 8=局域网_文件传输
echo 9=局域网_文件共享
echo 10=局域网_远程连接
echo 11=文件管理
echo 12=文件整理
echo 13=文件转换
echo 14=系统_磁盘工具
echo 15=系统_工具
echo 16=系统_其他系统工具
echo 17=系统_启动镜像管理
echo 18=系统_硬件检测
echo 19=系统_增强
echo 20=效率工具
echo 21=应用_词典
echo 22=应用_多媒体
echo 23=应用_实用工具
echo 24=应用_数据库管理
echo 25=应用_文档处理
echo 26=应用_信息管理
echo 27=应用_阅读器
echo 28=应用_综合
echo 29=游戏工具
@echo ≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡
@set lu=""
@set /p lu=选择操作:
if "%lu%"=="1" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\English\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\English\%%a" *.* /E)

if "%lu%"=="2" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\工具箱\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\工具箱\%%a" *.* /E)

if "%lu%"=="3" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\工具箱nirsoft\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\工具箱nirsoft\%%a" *.* /E)

if "%lu%"=="4" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\互联网_工具\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\互联网_工具\%%a" *.* /E)

if "%lu%"=="5" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\互联网_浏览器\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\互联网_浏览器\%%a" *.* /E)

if "%lu%"=="6" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\互联网_下载\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\互联网_下载\%%a" *.* /E)

if "%lu%"=="7" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\局域网_工具\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\局域网_工具\%%a" *.* /E)

if "%lu%"=="8" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\局域网_文件传输\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\局域网_文件传输\%%a" *.* /E)

if "%lu%"=="9" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\局域网_文件共享\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\局域网_文件共享\%%a" *.* /E)

if "%lu%"=="10" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\局域网_远程连接\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\局域网_远程连接\%%a" *.* /E)

if "%lu%"=="11" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\文件管理\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\文件管理\%%a" *.* /E)

if "%lu%"=="12" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\文件整理\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\文件整理\%%a" *.* /E)

if "%lu%"=="13" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\文件转换\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\文件转换\%%a" *.* /E)

if "%lu%"=="14" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\系统_磁盘工具\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\系统_磁盘工具\%%a" *.* /E)

if "%lu%"=="15" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\系统_工具\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\系统_工具\%%a" *.* /E)

if "%lu%"=="16" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\系统_其他系统工具\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\系统_其他系统工具\%%a" *.* /E)

if "%lu%"=="17" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\系统_启动镜像管理\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\系统_启动镜像管理\%%a" *.* /E)

if "%lu%"=="18" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\系统_硬件检测\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\系统_硬件检测\%%a" *.* /E)

if "%lu%"=="19" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\系统_增强\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\系统_增强\%%a" *.* /E)

if "%lu%"=="20" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\效率工具\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\效率工具\%%a" *.* /E)

if "%lu%"=="21" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\应用_词典\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\应用_词典\%%a" *.* /E)

if "%lu%"=="22" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\应用_多媒体\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\应用_多媒体\%%a" *.* /E)

if "%lu%"=="23" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\应用_实用工具\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\应用_实用工具\%%a" *.* /E)

if "%lu%"=="24" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\应用_数据库管理\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\应用_数据库管理\%%a" *.* /E)

if "%lu%"=="25" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\应用_文档处理\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\应用_文档处理\%%a" *.* /E)

if "%lu%"=="26" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\应用_信息管理\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\应用_信息管理\%%a" *.* /E)

if "%lu%"=="27" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\应用_阅读器\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\应用_阅读器\%%a" *.* /E)

if "%lu%"=="28" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\应用_综合\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\应用_综合\%%a" *.* /E)

if "%lu%"=="29" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\游戏工具\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\游戏工具\%%a" *.* /E)
pause

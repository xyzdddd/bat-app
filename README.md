# bat-app
windows下用批处理批量创建快捷方式(用于制作便携软件合集)

我的思路是使用文件夹作为参数，用#号作为分割符，#号前面是快捷方式的名称，#号后面是不带扩展名的运行文件的名称。
使用系统自带forfiles命令搜索.exe和.bat文件获取文件路径，使用nircmd shortcut命令批量创建快捷方式，使用传统开始菜单运行程序。

要用到的命令行工具NirCmd
NirCmd下载地址
http://www.nirsoft.net/utils/nircmd-x64.zip
http://www.onlinedown.net/soft/970876.htm
NirCmd 中文版帮助文档
http://down.51cto.com/data/1976412

NirCmd.exe下载后复制到系统目录
32位系统复制到C:\Windows\System32
64位系统复制到C:\Windows\SysWOW64

复制NirCmd到系统目录批处理：
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
copy nircmd.exe %WINDIR%\System32
copy nircmd.exe %WINDIR%\SysWOW64
pause

传统开始菜单
ClassicShellSetup
http://www.classicshell.net/translations/
Open-Shell-Menu
https://github.com/Open-Shell/Open-Shell-Menu/releases



默认创建快捷方式位置为开始菜单C:\Users\用户名\AppData\Roaming\Microsoft\Windows\Start Menu\apps
快捷方式文件夹有需要可以更改
folder.start_menu  表示用户"开始"文件夹  
folder.desktop  表示"用户桌面"文件夹  
──────────────────────────────────────────────────────────────────
批量创建快捷方式，有分类目录

首先创建好目录，下载好软件，按照下面的格式放入目录，软件必须是绿色便携（Portable），并且支持中文路径，如果不支持中文路径就得改为英文路径。
注意以下目录路径中不能带有空格，遇到空格必须删除空格或者替换成其他字符。

1.创建主目录
x:\apps

2.放置批处理文件
x:\apps\批量创建快捷方式.bat

3.创建分类目录
x:\apps\自定义目录1
x:\apps\自定义目录2
x:\apps\自定义目录3
...

4.分类目录放入便携软件

放入便携软件格式如下:
x:\apps\自定义目录\快捷方式名#不带.exe扩展名的程序名
例子
x:\apps\网络工具\浏览器chrome#chrome


x:\apps\自定义目录1\快捷方式名#程序名
x:\apps\自定义目录1\快捷方式名#程序名
x:\apps\自定义目录1\快捷方式名#程序名
...

x:\apps\自定义目录2\快捷方式名#程序名
x:\apps\自定义目录2\快捷方式名#程序名
x:\apps\自定义目录2\快捷方式名#程序名
...

x:\apps\自定义目录3\快捷方式名#程序名
x:\apps\自定义目录3\快捷方式名#程序名
x:\apps\自定义目录3\快捷方式名#程序名
...
...

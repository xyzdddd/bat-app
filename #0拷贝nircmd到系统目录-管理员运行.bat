%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
copy nircmd.exe %WINDIR%\System32
copy nircmd.exe %WINDIR%\SysWOW64
pause
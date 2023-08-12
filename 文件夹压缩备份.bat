@echo off  
"%ProgramFiles%\WinRAR\RAR.exe" a -agYYYYMMDDN txt.rar .\txt
"%ProgramFiles%\WinRAR\RAR.exe" t -r .\txt.rar
echo 任意键复制txt.rar到指定位置
pause
copy .\txt.rar E:\文档\
echo 任意键删除txt压缩包.rar
pause
::del .\txt.rar
pause

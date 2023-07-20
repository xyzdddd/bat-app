@echo off
color f2
:--------------------------------------
setlocal enabledelayedexpansion
:--------------------------------------
for /f "tokens=*" %%j in ('dir/b') do (
set fn=%%j
echo 替换前：!fn!
set fn=!fn: =!
:将fn字符串中的每一个空格（" "）替换成空字符（""）。
ren "%%j" !fn!
echo 替换后：!fn!
)
pause
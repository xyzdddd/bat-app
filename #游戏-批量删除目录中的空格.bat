@echo off
color f2
:--------------------------------------
setlocal enabledelayedexpansion
:--------------------------------------
for /f "tokens=*" %%j in ('dir/b') do (
set fn=%%j
echo �滻ǰ��!fn!
set fn=!fn: =!
:��fn�ַ����е�ÿһ���ո�" "���滻�ɿ��ַ���""����
ren "%%j" !fn!
echo �滻��!fn!
)
pause
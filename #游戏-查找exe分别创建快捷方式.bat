@echo off
rem ʹ��˵����

rem ���ɿ�ݷ�ʽ��·��Ĭ��Ϊ��ʼ�˵�������Ҫ���Ը���
rem ���ɿ�ݷ�ʽ��·��Ϊ��ʼ�˵�:~$folder.start_menu$\game\
rem ���ɿ�ݷ�ʽ��·��Ϊ����:~$folder.desktop$\game\

rem Ŀ¼��ʽ
rem x:\game\Ŀ¼1
rem x:\game\Ŀ¼2
rem x:\game\Ŀ¼3
rem ...

rem ������λ��x:\game\������.bat

rem ����ʱ�����
set "t=%time%"

rem ɾ����ʼ�˵���ݷ�ʽ(ɾ������ǰ���ע��::����)
nircmd execmd RD /s /q "~$folder.start_menu$"\games
rem ɾ�������ݷ�ʽ(ɾ������ǰ���ע��::����)
::nircmd execmd RD /s /q "~$folder.desktop$"\game

set LOGFILE=batch.log
call :LOG > %LOGFILE%

@echo off
rem ��¼���������ʱ��
set "t1=%time%"
if "%t1:~,2%" lss "%t:~,2%" set "add=+24"
set /a "times=(%t1:~,2%-%t:~,2%%add%)*360000+(1%t1:~3,2%%%100-1%t:~3,2%%%100)*6000+(1%t1:~6,2%%%100-1%t:~6,2%%%100)*100+(1%t1:~-2%%%100-1%t:~-2%%%100)" ,"ss=times/100%%60","mm=times/6000%%60","hh=times/360000","ms=times%%100"
@echo �y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y
echo ��������������ʱ��Ϊ%hh%Сʱ:%mm%����:%ss%.%ms%��  ������־�ļ�batch.log
pause
exit /B

:LOG
@echo on
rem ����exe����������ݷ�ʽ(Сдexe)
for /f %%i in ('dir /b /a:d /o:n') do (forfiles /p "%~dp0%%i" /M "*.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$"\games\%%i" @fname")
rem ����exe����������ݷ�ʽ(��дexe)
for /f %%i in ('dir /b /a:d /o:n') do (forfiles /p "%~dp0%%i" /M "*.EXE" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$"\games\%%i" @fname")








@echo off
rem ʹ��˵����

rem ���ɿ�ݷ�ʽ��·����Ĭ��Ϊ��ʼ�˵�������Ҫ���Ը���
rem ���ɿ�ݷ�ʽ��·��Ϊ��ʼ�˵�:~$folder.start_menu$\game\
rem ���ɿ�ݷ�ʽ��·��Ϊ����:~$folder.desktop$\game\

rem ����ʱ�����
set "t=%time%"

rem ɾ����ʼ�˵���ݷ�ʽ(ɾ������ǰ���ע��::����)
nircmd execmd RD /s /q "~$folder.start_menu$"\game
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
rem ���ı��ļ�(txt)���ݴ�����ݷ�ʽ
for /f %%i in ('dir %~dp0 /b /a:d /o:n') do (
if exist ".\%%i\##.txt" for /f "delims=# tokens=1-2*" %%a in (%~dp0\%%i\##.txt) do (
forfiles /p ".\%%i" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\game %%a"
)
)

rem ���ı��ļ�(txt)���ݴ�����ݷ�ʽ �������ո��Ӧ��ʹ��###.txt 
for /f %%i in ('dir %~dp0 /b /a:d /o:n') do (
if exist ".\%%i\###.txt" for /f "delims= tokens=*" %%a in (%~dp0\%%i\###.txt) do (
forfiles /p ".\%%i" /M "%%a.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\game %%i"
)
)

rem ��Ŀ¼����������ݷ�ʽ
for /f "delims=# tokens=1-2" %%a in ('dir /b /a:d /o:n') do (
if exist "%~dp0\%%a#%%b" forfiles /p ".\%%a#%%b" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\game "%%a""
)


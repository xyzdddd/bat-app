@echo off
rem ʹ��˵��:

rem ���ļ������� ������ݷ�ʽ
rem �ļ��и�ʽ:
rem ��ʽ1:��ݷ�ʽ��1#������1
rem ��ʽ2:��ݷ�ʽ��1#������1#��ݷ�ʽ��2#������2
rem ��ʽ3:��ݷ�ʽ��1#������1#��ݷ�ʽ��2#������2#��ݷ�ʽ��3#������3
rem ��ʽ4:��ݷ�ʽ��1#������1#��ݷ�ʽ��2#������2#��ݷ�ʽ��3#������3#��ݷ�ʽ��4#������4
rem ��ʽ5:��ݷ�ʽ��@������
rem ��ʽ6:��ݷ�ʽ��$��������
rem ���������ո�ĸ�ʽ:��ݷ�ʽ��1#���� ��1
rem ע������1:�ļ��п�ݷ�ʽ���в��ܳ��ֿո񣬳������п��Գ��ֿո������ݷ�ʽ���г��ֿո�ֻ����ʾ�ո�ǰ�����ơ�
rem ע������2:�в�������ļ��������в��ܳ��ַ���#��Ҫ�÷���@�����
rem ע������3:����������������Ҫ�޸ĳ�������
rem ע������4:��ʽ234��ݷ�ʽ��������ͬ��

rem ����ո� ��txt���ݴ�����ݷ�ʽ(������Ŀ¼)
rem txt�ļ�����:@.txt
rem txt�ļ�λ��:����Ŀ¼\��ݷ�ʽ��1@@������\@.txt
rem txt�ļ�����:��ݷ�ʽ��1@������1 ���� ��ݷ�ʽ��2@������2 ���� ��ݷ�ʽ��3@������3  ............
rem txt�ļ�����ע������:��ݷ�ʽ���в��ܳ��ֿո񣬳������п��Գ��ֿո�
rem txt�ļ�����:ANSI

rem ����ո� ��txt���ݴ�����ݷ�ʽ(����Ŀ¼)
rem txt�ļ�����:@@.txt
rem txt�ļ�λ��:����Ŀ¼\��ݷ�ʽ��1@@������\@@.txt
rem txt�ļ�����:��ݷ�ʽ��1@������1 ���� ��ݷ�ʽ��2@������2 ���� ��ݷ�ʽ��3@������3  ............
rem txt�ļ�����ע������:��ݷ�ʽ���в��ܳ��ֿո񣬳������п��Գ��ֿո�
rem txt�ļ�����:ANSI

rem ����ո� ��txt���ݴ�����ݷ�ʽ(������Ŀ¼)
rem txt�ļ�����:$.txt
rem txt�ļ�λ��:����Ŀ¼\��ݷ�ʽ��1$$��������\$.txt
rem txt�ļ�����:��ݷ�ʽ��1$��������1 ���� ��ݷ�ʽ��2$��������2 ���� ��ݷ�ʽ��3$��������3  ............
rem txt�ļ�����ע������:��ݷ�ʽ���в��ܳ��ֿո񣬳������п��Գ��ֿո�
rem txt�ļ�����:ANSI

rem ����ո� ��txt���ݴ�����ݷ�ʽ(����Ŀ¼)
rem txt�ļ�����:$$.txt
rem txt�ļ�λ��:����Ŀ¼\��ݷ�ʽ��1$$��������\$$.txt
rem txt�ļ�����:��ݷ�ʽ��1$��������1 ���� ��ݷ�ʽ��2$��������2 ���� ��ݷ�ʽ��3$��������3  ............
rem txt�ļ�����ע������:��ݷ�ʽ���в��ܳ��ֿո񣬳������п��Գ��ֿո�
rem txt�ļ�����:ANSI

rem ���ɿ�ݷ�ʽ��·����Ĭ��Ϊ��ʼ�˵�������Ҫ���Ը���
rem ���ɿ�ݷ�ʽ��·��Ϊ��ʼ�˵�:~$folder.start_menu$\apps\
rem ���ɿ�ݷ�ʽ��·��Ϊ����:~$folder.desktop$\apps\

rem ����ʱ�����
set "t=%time%"

rem ɾ����ʼ�˵���ݷ�ʽ(ɾ������ǰ���ע��::����)
nircmd execmd RD /s /q "~$folder.start_menu$"\apps
rem ɾ�������ݷ�ʽ(ɾ������ǰ���ע��::����)
::nircmd execmd RD /s /q "~$folder.desktop$"\apps

rem ������־�ļ�
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
rem ���ļ������ƴ�����ݷ�ʽ һ��exe�ļ� �ļ��зָ��:@ (��Щ����·���в��ܳ���#��)
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=@ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a@%%b" forfiles /p ".\%%i\%%a@%%b" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a"
)
)

rem ����ո� ���ı��ļ�(txt)���ݴ�����ݷ�ʽ ������Ŀ¼ �ļ��зָ��:@@ �ı��ļ���:@.txt  �ı��ļ�����:ANSI
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=@@ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist ".\%%i\%%a@@%%b\@.txt" for /f "delims=@ tokens=1-2" %%s in (%~dp0%%i\%%a@@%%b\@.txt) do (
forfiles /p ".\%%i\%%a@@%%b" /M "%%t.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i\ %%s")
)
)

rem ����ո� ���ı��ļ�(txt)���ݴ�����ݷ�ʽ ����Ŀ¼  �ļ��зָ��:@@ �ı��ļ���:@@.txt �ı��ļ����ݷָ���:@ �ı��ļ�����:ANSI
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=@@ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist ".\%%i\%%a@@%%b\@@.txt" for /f "delims=@ tokens=1-2" %%s in (%~dp0%%i\%%a@@%%b\@@.txt) do (
forfiles /p ".\%%i\%%a@@%%b" /M "%%t.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i\%%a %%s")
)
)

rem ���ļ������ƴ�����ݷ�ʽ һ��exe�ļ� �ļ��зָ��:#
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=# tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a#%%b" forfiles /p ".\%%i\%%a#%%b" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a"
)
)

rem ���ļ������ƴ�����ݷ�ʽ ����exe�ļ� �ļ��зָ��:#
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=# tokens=1-4" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a#%%b#%%c#%%d" forfiles /p ".\%%i\%%a#%%b#%%c#%%d" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d" /M "%%d.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%c"
)
)

rem ���ļ������ƴ�����ݷ�ʽ ����exe�ļ� �ļ��зָ��:#
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=# tokens=1-6" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a#%%b#%%c#%%d#%%e#%%f" (
forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f" /M "%%d.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%c" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f" /M "%%f.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%e"
)
)
)

rem ���ļ������ƴ�����ݷ�ʽ �ĸ�exe�ļ� �ļ��зָ��:#
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=# tokens=1-8" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" (
forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" /M "%%b.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%a" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" /M "%%d.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%c" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" /M "%%f.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%e" & forfiles /p ".\%%i\%%a#%%b#%%c#%%d#%%e#%%f#%%g#%%h" /M "%%h.exe" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i %%g"
)
)
)

rem ���ļ������ƴ�����ݷ�ʽ һ��bat�ļ� �ļ��зָ��:$
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=$ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist "%~dp0%%i\%%a$%%b" forfiles /p ".\%%i\%%a$%%b" /M "%%b.bat" /S /C "cmd /c nircmd shortcut "@path" ~$folder.start_menu$\apps\%%i %%a"
)
)

rem ����ո� ���ı��ļ�(txt)���ݴ�����ݷ�ʽ bat�ļ� ������Ŀ¼ �ļ��зָ��:$ �ı��ļ���:$.txt  �ı��ļ�����:ANSI
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=$$ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist ".\%%i\%%a$$%%b\$.txt" for /f "delims=$ tokens=1-2" %%s in (%~dp0%%i\%%a$$%%b\$.txt) do (
forfiles /p ".\%%i\%%a$$%%b" /M "%%t.bat" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i\ %%s"
)
)
)

rem ����ո� ���ı��ļ�(txt)���ݴ�����ݷ�ʽ bat�ļ� ����Ŀ¼ �ļ��зָ��:$$ �ı��ļ���:$$.txt  �ı��ļ�����:ANSI
for /f %%i in ('dir /b /a:d /o:n') do (
for /f "delims=$$ tokens=1-2" %%a in ('dir %~dp0%%i /b /a:d /o:n') do (
if exist ".\%%i\%%a$$%%b\$$.txt" for /f "delims=$ tokens=1-2" %%s in (%~dp0%%i\%%a$$%%b\$$.txt) do (
forfiles /p ".\%%i\%%a$$%%b" /M "%%t.bat" /S /C "cmd /c nircmd shortcut @path ~$folder.start_menu$\apps\%%i\%%a %%s"
)
)
)

rem �����ļ��п�ݷ�ʽ
nircmd.exe shortcut "~$folder.start_menu$" "~$folder.start_menu$\apps\������\bat����" "�򿪿�ʼ�˵�"
nircmd.exe shortcut "~$folder.desktop$" "~$folder.start_menu$\apps\������\bat����" "������"
nircmd.exe shortcut "~$folder.startup$" "~$folder.start_menu$\apps\������\bat����" "������"
nircmd.exe shortcut "~$sys.temp$" "~$folder.start_menu$\apps\������\bat����" "��temp"
nircmd.exe shortcut "~$folder.cookies$" "~$folder.start_menu$\apps\������\bat����" "��cookies"

::nircmd.exe shortcut "%cd%\������_�ļ�����\Web�ļ�������dufs@@����c��" "~$folder.start_menu$\apps\������_�ļ�����\" "Web�ļ�������dufs�����Ŀ¼"




 
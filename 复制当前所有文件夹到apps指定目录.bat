@echo off
echo �ʹ���������һ��ĵ�ǰ�ļ����������е��ļ��ж��Ḵ�Ƶ�ָ������Ŀ¼
echo �ж��ļ��������ĸ�Ŀ¼Ȼ���ƻ��ƶ����Ǹ�Ŀ¼
echo 1=English
echo 2=������
echo 3=������nirsoft
echo 4=������_����
echo 5=������_�����
echo 6=������_����
echo 7=������_����
echo 8=������_�ļ�����
echo 9=������_�ļ�����
echo 10=������_Զ������
echo 11=�ļ�����
echo 12=�ļ�����
echo 13=�ļ�ת��
echo 14=ϵͳ_���̹���
echo 15=ϵͳ_����
echo 16=ϵͳ_����ϵͳ����
echo 17=ϵͳ_�����������
echo 18=ϵͳ_Ӳ�����
echo 19=ϵͳ_��ǿ
echo 20=Ч�ʹ���
echo 21=Ӧ��_�ʵ�
echo 22=Ӧ��_��ý��
echo 23=Ӧ��_ʵ�ù���
echo 24=Ӧ��_���ݿ����
echo 25=Ӧ��_�ĵ�����
echo 26=Ӧ��_��Ϣ����
echo 27=Ӧ��_�Ķ���
echo 28=Ӧ��_�ۺ�
echo 29=��Ϸ����
@echo �ԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡԡ�
@set lu=""
@set /p lu=ѡ�����:
if "%lu%"=="1" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\English\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\English\%%a" *.* /E)

if "%lu%"=="2" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\������\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\������\%%a" *.* /E)

if "%lu%"=="3" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\������nirsoft\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\������nirsoft\%%a" *.* /E)

if "%lu%"=="4" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\������_����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\������_����\%%a" *.* /E)

if "%lu%"=="5" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\������_�����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\������_�����\%%a" *.* /E)

if "%lu%"=="6" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\������_����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\������_����\%%a" *.* /E)

if "%lu%"=="7" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\������_����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\������_����\%%a" *.* /E)

if "%lu%"=="8" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\������_�ļ�����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\������_�ļ�����\%%a" *.* /E)

if "%lu%"=="9" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\������_�ļ�����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\������_�ļ�����\%%a" *.* /E)

if "%lu%"=="10" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\������_Զ������\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\������_Զ������\%%a" *.* /E)

if "%lu%"=="11" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\�ļ�����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\�ļ�����\%%a" *.* /E)

if "%lu%"=="12" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\�ļ�����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\�ļ�����\%%a" *.* /E)

if "%lu%"=="13" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\�ļ�ת��\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\�ļ�ת��\%%a" *.* /E)

if "%lu%"=="14" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\ϵͳ_���̹���\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\ϵͳ_���̹���\%%a" *.* /E)

if "%lu%"=="15" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\ϵͳ_����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\ϵͳ_����\%%a" *.* /E)

if "%lu%"=="16" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\ϵͳ_����ϵͳ����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\ϵͳ_����ϵͳ����\%%a" *.* /E)

if "%lu%"=="17" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\ϵͳ_�����������\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\ϵͳ_�����������\%%a" *.* /E)

if "%lu%"=="18" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\ϵͳ_Ӳ�����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\ϵͳ_Ӳ�����\%%a" *.* /E)

if "%lu%"=="19" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\ϵͳ_��ǿ\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\ϵͳ_��ǿ\%%a" *.* /E)

if "%lu%"=="20" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\Ч�ʹ���\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\Ч�ʹ���\%%a" *.* /E)

if "%lu%"=="21" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\Ӧ��_�ʵ�\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\Ӧ��_�ʵ�\%%a" *.* /E)

if "%lu%"=="22" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\Ӧ��_��ý��\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\Ӧ��_��ý��\%%a" *.* /E)

if "%lu%"=="23" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\Ӧ��_ʵ�ù���\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\Ӧ��_ʵ�ù���\%%a" *.* /E)

if "%lu%"=="24" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\Ӧ��_���ݿ����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\Ӧ��_���ݿ����\%%a" *.* /E)

if "%lu%"=="25" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\Ӧ��_�ĵ�����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\Ӧ��_�ĵ�����\%%a" *.* /E)

if "%lu%"=="26" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\Ӧ��_��Ϣ����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\Ӧ��_��Ϣ����\%%a" *.* /E)

if "%lu%"=="27" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\Ӧ��_�Ķ���\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\Ӧ��_�Ķ���\%%a" *.* /E)

if "%lu%"=="28" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\Ӧ��_�ۺ�\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\Ӧ��_�ۺ�\%%a" *.* /E)

if "%lu%"=="29" for /f %%a in ('dir /b /a:d /o:n') do (RoboCopy "%cd%\%%a" "c:\apps\��Ϸ����\%%a" *.* /E && RoboCopy "%cd%\%%a" "d:\apps\��Ϸ����\%%a" *.* /E)
pause
@echo off  
"%ProgramFiles%\WinRAR\RAR.exe" a -agYYYYMMDDN txt.rar .\txt
"%ProgramFiles%\WinRAR\RAR.exe" t -r .\txt.rar
echo ���������txt.rar��ָ��λ��
pause
copy .\txt.rar E:\�ĵ�\
echo �����ɾ��txtѹ����.rar
pause
::del .\txt.rar
pause

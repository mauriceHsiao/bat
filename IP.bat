set IP=120.113.70.241
set MASK=255.255.255.0
set GW=120.113.70.254
set DNS=8.8.8.8
set DNS2=8.8.4.4
echo 
netsh interface ip set address "�A�Ӻ���" static %IP% %MASK% %GW%
netsh interface ip set dns "�A�Ӻ���" static %DNS% %DNS2% 
echo �w�NIP�a�}�]���G%IP%�A�����@����~��K�K
pause
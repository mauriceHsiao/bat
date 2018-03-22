set IP=120.113.70.241
set MASK=255.255.255.0
set GW=120.113.70.254
set DNS=8.8.8.8
set DNS2=8.8.4.4
echo 
netsh interface ip set address "乙太網路" static %IP% %MASK% %GW%
netsh interface ip set dns "乙太網路" static %DNS% %DNS2% 
echo 已將IP地址設為：%IP%，按任一鍵後繼續……
pause
@echo --------set User password = 1234----------
@net user User 1234


@echo --------close firewall------------
@netsh advfirewall set currentprofile state off


@echo --------start Termservice---------
@net start Termservice

@reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f


pause
@echo -------------reset user password----------
@net user user nfu123@@@

@echo -------------start Termservice-----------
@net start Termservice

@reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f


@echo ----------open firewall port=3389------------
@netsh advfirewall firewall add rule name="RDP" dir=in action=allow protocol=TCP localport=3389

@echo -----------set IP address-----------
@netsh interface ip set address name="�ϰ�s�u" source=static address=120.113.70.143 mask=255.255.255.0 gateway=120.113.70.254 gwmetric=1


@echo -----------set DNS server-----------
@netsh interface ip set dnsservers name="�ϰ�s�u" source=static address=8.8.8.8

@netsh interface ip add dnsservers name="�ϰ�s�u" address=168.95.1.1


pause
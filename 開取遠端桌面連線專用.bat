@echo -------------add new user----------
@rem net user user2 123456 /add


@echo ----------close firewall------------
@rem netsh advfirewall set currentprofile state off


@echo ----------open firewall port------------
@netsh advfirewall firewall add rule name="RDP" dir=in action=allow protocol=TCP localport=3389

@echo -------------start Termservice-----------
@net start Termservice

@reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f


@echo -------------add user into Remote Desktop Users-------
@rem net localgroup "Remote Desktop Users" user2 /add

pause
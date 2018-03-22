@echo -----------set IP address-----------
@netsh interface ip set address name="區域連線" source=static address=120.113.70.143 mask=255.255.255.0 gateway=120.113.70.254 gwmetric=1


@echo -----------set DNS server-----------
@netsh interface ip set dnsservers name="區域連線" source=static address=8.8.8.8

@netsh interface ip add dnsservers name="區域連線" address=168.95.1.1


pause
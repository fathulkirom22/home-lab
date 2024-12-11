@echo off

$wsl_ip = wsl -- ip -o -4 -j addr s eth0 | ConvertFrom-Json | %{ $_.addr_info.local } | ?{ $_ }

@REM nextclud
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=8081 connectaddress=$wsl_ip connectport=8081

@REM qbittrren
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=8082 connectaddress=$wsl_ip connectport=8082

@REM jellyfin
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=8096 connectaddress=$wsl_ip connectport=8096

@REM ssh
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=22 connectaddress=$wsl_ip connectport=22

@REM portainer
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=9000 connectaddress=$wsl_ip connectport=9000

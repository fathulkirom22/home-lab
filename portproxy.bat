@echo off
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=8081 connectaddress=172.25.117.33 connectport=8081
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=8082 connectaddress=172.25.117.33 connectport=8082
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=8096 connectaddress=172.25.117.33 connectport=8096
